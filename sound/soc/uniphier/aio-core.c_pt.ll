; ModuleID = '/llk/IR_all_yes/sound/soc/uniphier/aio-core.c_pt.bc'
source_filename = "../sound/soc/uniphier/aio-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uniphier_aio_sub = type { ptr, %struct.spinlock, ptr, ptr, ptr, %struct.snd_pcm_hw_params, i32, ptr, %struct.snd_compr_params, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i64, i64, i32, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_codec_options, [3 x i32] }
%union.snd_codec_options = type { %struct.snd_enc_generic }
%struct.snd_enc_generic = type { i32, [15 x i32] }
%struct.uniphier_aio_chip = type { ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniphier_aio_pll = type { i8, i32 }
%struct.uniphier_aio_chip_spec = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.uniphier_aio_swmap = type { i32, i32, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector, %struct.uniphier_aio_selector }
%struct.uniphier_aio_selector = type { i32, i32 }
%struct.uniphier_aio = type { ptr, [2 x %struct.uniphier_aio_sub], i32, i32, i32, i32, i32, i32 }

@aio_chip_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PLL(%d) not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aio_chip_set_pll\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/uniphier/aio-core.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aio_chip_set_pll._entry_ptr = internal global ptr @aio_chip_set_pll._entry, section ".printk_index", align 4
@aio_chip_set_pll._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PLL frequency not supported(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@aio_chip_set_pll._entry_ptr.7 = internal global ptr @aio_chip_set_pll._entry.5, section ".printk_index", align 4
@aio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown port type %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aio_init\00", [23 x i8] zeroinitializer }, align 32
@aio_init._entry_ptr = internal global ptr @aio_init._entry, section ".printk_index", align 4
@aio_port_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rate not supported(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aio_port_set_rate\00", [46 x i8] zeroinitializer }, align 32
@aio_port_set_rate._entry_ptr = internal global ptr @aio_port_set_rate._entry, section ".printk_index", align 4
@aio_port_set_rate._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 425, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@aio_port_set_rate._entry_ptr.13 = internal global ptr @aio_port_set_rate._entry.12, section ".printk_index", align 4
@aio_port_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 467, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Format is not supported(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aio_port_set_fmt\00", [47 x i8] zeroinitializer }, align 32
@aio_port_set_fmt._entry_ptr = internal global ptr @aio_port_set_fmt._entry, section ".printk_index", align 4
@aio_port_set_fmt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@aio_port_set_fmt._entry_ptr.17 = internal global ptr @aio_port_set_fmt._entry.16, section ".printk_index", align 4
@__const.aio_port_set_clk.v_pll = private unnamed_addr constant [6 x i32] [i32 0, i32 65536, i32 131072, i32 196608, i32 262144, i32 327680], align 4
@__const.aio_port_set_clk.v_div = private unnamed_addr constant [4 x i32] [i32 0, i32 256, i32 512, i32 768], align 4
@aio_port_set_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 534, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PLL(%d) is invalid\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aio_port_set_clk\00", [47 x i8] zeroinitializer }, align 32
@aio_port_set_clk._entry_ptr = internal global ptr @aio_port_set_clk._entry, section ".printk_index", align 4
@aio_port_set_clk._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 539, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PLL divider(%d) is invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@aio_port_set_clk._entry_ptr.22 = internal global ptr @aio_port_set_clk._entry.20, section ".printk_index", align 4
@aio_port_set_clk._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@aio_port_set_clk._entry_ptr.24 = internal global ptr @aio_port_set_clk._entry.23, section ".printk_index", align 4
@switch.table.aio_port_set_param = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 17408, i32 0, i32 1024], [20 x i8] zeroinitializer }, align 32
@switch.table.aio_port_set_param.25 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2048, i32 0, i32 1024], [20 x i8] zeroinitializer }, align 32
@switch.table.aio_oport_set_stream_type = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 201261061, i32 0, i32 0, i32 150929471, i32 150929471, i32 0, i32 134152255, i32 0, i32 0, i32 0, i32 67043333, i32 134152197, i32 268369925], [44 x i8] zeroinitializer }, align 32
@switch.table.aio_oport_set_stream_type.26 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196620, i32 196608, i32 196608, i32 196736, i32 196736, i32 196608, i32 196736, i32 196608, i32 196608, i32 196608, i32 196620, i32 196620, i32 196620], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 33868800, i64 36864000]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.30 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 33868800, i64 36864000]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 33868800, i64 36864000]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 8]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 131, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 143, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 237, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 377, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 425, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 466, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 487, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 533, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 538, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private constant [33 x i8] c"../sound/soc/uniphier/aio-core.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 564, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant [32 x i8] c"switch.table.aio_port_set_param\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [35 x i8] c"switch.table.aio_port_set_param.25\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [39 x i8] c"switch.table.aio_oport_set_stream_type\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [42 x i8] c"switch.table.aio_oport_set_stream_type.26\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @aio_chip_set_pll._entry, ptr @aio_chip_set_pll._entry.5, ptr @aio_chip_set_pll._entry_ptr, ptr @aio_chip_set_pll._entry_ptr.7, ptr @aio_init._entry, ptr @aio_init._entry_ptr, ptr @aio_port_set_clk._entry, ptr @aio_port_set_clk._entry.20, ptr @aio_port_set_clk._entry.23, ptr @aio_port_set_clk._entry_ptr, ptr @aio_port_set_clk._entry_ptr.22, ptr @aio_port_set_clk._entry_ptr.24, ptr @aio_port_set_fmt._entry, ptr @aio_port_set_fmt._entry.16, ptr @aio_port_set_fmt._entry_ptr, ptr @aio_port_set_fmt._entry_ptr.17, ptr @aio_port_set_rate._entry, ptr @aio_port_set_rate._entry.12, ptr @aio_port_set_rate._entry_ptr, ptr @aio_port_set_rate._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @switch.table.aio_port_set_param, ptr @switch.table.aio_port_set_param.25, ptr @switch.table.aio_oport_set_stream_type, ptr @switch.table.aio_oport_set_stream_type.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_chip_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_chip_set_pll._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_port_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_port_set_rate._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_port_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_port_set_fmt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_port_set_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_port_set_clk._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_port_set_clk._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aio_port_set_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aio_port_set_param.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aio_oport_set_stream_type to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aio_oport_set_stream_type.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @aio_rb_cnt(ptr nocapture noundef readonly %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %0 = ptrtoint ptr %wr_offs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wr_offs, align 8
  %rd_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %2 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rd_offs, align 8
  %compr_bytes = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 11
  %4 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compr_bytes, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not.i = icmp ult i64 %1, %3
  %sub1.neg.i = sub i64 %1, %3
  %sub2.i = select i1 %cmp.not.i, i64 %conv, i64 0
  %retval.0.i = add i64 %sub1.neg.i, %sub2.i
  ret i64 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @aio_rbt_cnt_to_end(ptr nocapture noundef readonly %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %0 = ptrtoint ptr %wr_offs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wr_offs, align 8
  %rd_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %2 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rd_offs, align 8
  %compr_bytes = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 11
  %4 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compr_bytes, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not.i = icmp ult i64 %1, %3
  %len.wr.i = select i1 %cmp.not.i, i64 %conv, i64 %1
  %retval.0.i = sub i64 %len.wr.i, %3
  ret i64 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @aio_rb_space(ptr nocapture noundef readonly %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %0 = ptrtoint ptr %wr_offs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wr_offs, align 8
  %rd_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %2 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rd_offs, align 8
  %compr_bytes = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 11
  %4 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compr_bytes, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp.not.i = icmp ugt i64 %3, %1
  %sub1.i = select i1 %cmp.not.i, i64 0, i64 %conv
  %sub3.i = sub i64 -8, %1
  %retval.0.in.i = add i64 %sub3.i, %3
  %retval.0.i = add i64 %retval.0.in.i, %sub1.i
  ret i64 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @aio_rb_space_to_end(ptr nocapture noundef readonly %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %0 = ptrtoint ptr %wr_offs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wr_offs, align 8
  %rd_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %2 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rd_offs, align 8
  %compr_bytes = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 11
  %4 = ptrtoint ptr %compr_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compr_bytes, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp.i = icmp ugt i64 %3, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i64 -8, %1
  %sub1.i = add i64 %sub.i, %3
  br label %rb_space_to_end.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp2.not.i = icmp eq i64 %3, 0
  br i1 %cmp2.not.i, label %if.else5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub4.i = sub i64 %conv, %1
  br label %rb_space_to_end.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub6.i = sub i64 -8, %1
  %sub7.i = add i64 %sub6.i, %conv
  br label %rb_space_to_end.exit

rb_space_to_end.exit:                             ; preds = %if.else5.i, %if.then3.i, %if.then.i
  %retval.0.i = phi i64 [ %sub1.i, %if.then.i ], [ %sub4.i, %if.then3.i ], [ %sub7.i, %if.else5.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aio_iecout_set_enable(ptr nocapture noundef readonly %chip, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_sg = getelementptr inbounds %struct.uniphier_aio_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %regmap_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_sg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond = sext i1 %enable to i32
  %call = tail call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 7172, i32 noundef %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_chip_set_pll(ptr nocapture noundef readonly %chip, i32 noundef %pll_id, i32 noundef %freq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %chip, i32 0, i32 9
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp = icmp eq i32 %freq, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %pll_id)
  %switch = icmp ult i32 %pll_id, 4
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %pll_id) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %4 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %do.end10 [
    i32 36864000, label %sw.epilog.sw.epilog11_crit_edge
    i32 33868800, label %sw.bb6
  ]

sw.epilog.sw.epilog11_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

do.end10:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %freq) #9
  br label %cleanup

sw.epilog11:                                      ; preds = %sw.bb6, %sw.epilog.sw.epilog11_crit_edge
  %v.0 = phi i32 [ 1, %sw.bb6 ], [ 0, %sw.epilog.sw.epilog11_crit_edge ]
  %plls = getelementptr inbounds %struct.uniphier_aio_chip, ptr %chip, i32 0, i32 5
  %5 = ptrtoint ptr %plls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plls, align 4
  %freq12 = getelementptr %struct.uniphier_aio_pll, ptr %6, i32 %pll_id, i32 1
  %7 = ptrtoint ptr %freq12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %freq12, align 4
  %shl = shl nuw nsw i32 65793, %pll_id
  %shl13 = shl nuw nsw i32 %v.0, %pll_id
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28676, i32 noundef %shl, i32 noundef %shl13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog11, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %sw.epilog11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aio_chip_init(ptr nocapture noundef readonly %chip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %chip, i32 0, i32 9
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28672, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28720, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28896, i32 noundef 10103, i32 noundef 8562, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %chip_spec = getelementptr inbounds %struct.uniphier_aio_chip, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_spec, align 4
  %addr_ext = getelementptr inbounds %struct.uniphier_aio_chip_spec, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %addr_ext to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_ext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i32 12, i32 0
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 65696, i32 noundef 12, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_init(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %8 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swm, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %9, i32 0, i32 3
  %hw = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw, align 4
  %mul = shl i32 %11, 6
  %add = add i32 %mul, 4096
  %12 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb, align 4
  %or = or i32 %13, -2147483648
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add, i32 noundef %or) #6
  %14 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swm, align 8
  %ch = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 2
  %hw7 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw7, align 4
  %mul8 = shl i32 %17, 6
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch, align 4
  %or13 = or i32 %19, -2147483648
  %call14 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %mul8, i32 noundef %or13) #6
  %20 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %swm, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %23, label %do.end [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge129
    i32 3, label %entry.sw.bb_crit_edge130
    i32 4, label %sw.bb53
  ]

entry.sw.bb_crit_edge130:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge129:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge129, %entry.sw.bb_crit_edge130
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp eq i32 %26, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %iif = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %21, i32 0, i32 5
  %hw18 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %21, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw18, align 4
  %mul19 = shl i32 %28, 6
  %add20 = add i32 %mul19, 12288
  %29 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iif, align 4
  %or24 = or i32 %30, -2147483648
  %call25 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add20, i32 noundef %or24) #6
  %31 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %swm, align 8
  %iport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %32, i32 0, i32 4
  %hw27 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %32, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %hw27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw27, align 4
  %mul28 = shl i32 %34, 6
  %add29 = add i32 %mul28, 8192
  %35 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iport, align 4
  %or33 = or i32 %36, -2147483648
  %call34 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add29, i32 noundef %or33) #6
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %oif = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %21, i32 0, i32 7
  %hw36 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %21, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %hw36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw36, align 4
  %mul37 = shl i32 %38, 6
  %add38 = add i32 %mul37, 20480
  %39 = ptrtoint ptr %oif to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oif, align 4
  %or42 = or i32 %40, -2147483648
  %call43 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add38, i32 noundef %or42) #6
  %41 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %swm, align 8
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %42, i32 0, i32 6
  %hw45 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %42, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %hw45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw45, align 4
  %mul46 = shl i32 %44, 6
  %add47 = add i32 %mul46, 16384
  %45 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %oport, align 4
  %or51 = or i32 %46, -2147483648
  %call52 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add47, i32 noundef %or51) #6
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %oif55 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %21, i32 0, i32 7
  %hw56 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %21, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %hw56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hw56, align 4
  %mul57 = shl i32 %48, 6
  %add58 = add i32 %mul57, 20480
  %49 = ptrtoint ptr %oif55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oif55, align 4
  %or62 = or i32 %50, -2147483648
  %call63 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add58, i32 noundef %or62) #6
  %51 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %swm, align 8
  %oport65 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %52, i32 0, i32 6
  %hw66 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %52, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %hw66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw66, align 4
  %mul67 = shl i32 %54, 6
  %add68 = add i32 %mul67, 16384
  %55 = ptrtoint ptr %oport65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oport65, align 4
  %or72 = or i32 %56, -2147483648
  %call73 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add68, i32 noundef %or72) #6
  %57 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %swm, align 8
  %och = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %58, i32 0, i32 8
  %hw75 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %58, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %hw75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw75, align 4
  %mul76 = shl i32 %60, 6
  %61 = ptrtoint ptr %och to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %och, align 4
  %or81 = or i32 %62, -2147483648
  %call82 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %mul76, i32 noundef %or81) #6
  %63 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %swm, align 8
  %iif84 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %64, i32 0, i32 5
  %hw85 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %64, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %hw85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw85, align 4
  %mul86 = shl i32 %66, 6
  %add87 = add i32 %mul86, 12288
  %67 = ptrtoint ptr %iif84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iif84, align 4
  %or91 = or i32 %68, -2147483648
  %call92 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add87, i32 noundef %or91) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb53, %if.else, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aio_port_reset(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oport, align 4
  %shl = shl nuw i32 1, %11
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 262240, i32 noundef %shl) #6
  %12 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %swm, align 8
  %oport3 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %oport3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oport3, align 4
  %shl5 = shl nuw i32 1, %15
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 262244, i32 noundef %shl5) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iport, align 4
  %mul = shl i32 %17, 10
  %add = add i32 %mul, 139388
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %swm, align 8
  %iport11 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %iport11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iport11, align 4
  %mul13 = shl i32 %21, 10
  %add14 = add i32 %mul13, 139388
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add14, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_port_set_param(ptr nocapture noundef readonly %sub, i32 noundef %pass_through, ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  %slotsel_2ch.i.sroa.0 = alloca i32, align 4
  %slotsel_2ch.i.sroa.4 = alloca i32, align 4
  %slotsel_2ch.i.sroa.5 = alloca i32, align 4
  %slotsel_2ch.i.sroa.6 = alloca i32, align 4
  %slotsel_2ch.i.sroa.7 = alloca i32, align 4
  %slotsel_multi.i.sroa.0 = alloca i32, align 4
  %slotsel_multi.i.sroa.5 = alloca i32, align 4
  %slotsel_multi.i.sroa.7 = alloca i32, align 4
  %slotsel_multi.i.sroa.9 = alloca i32, align 4
  %slotsel_multi.i.sroa.11 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass_through)
  %tobool.not = icmp eq i32 %pass_through, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %.off = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then.if.end_crit_edge, label %if.else

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.if.end_crit_edge
  %rate.0 = phi i32 [ %11, %if.else ], [ 48000, %if.then.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.7)
  %12 = ptrtoint ptr %slotsel_2ch.i.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %slotsel_2ch.i.sroa.0, align 4
  %13 = ptrtoint ptr %slotsel_2ch.i.sroa.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %slotsel_2ch.i.sroa.4, align 4
  %14 = ptrtoint ptr %slotsel_2ch.i.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %slotsel_2ch.i.sroa.5, align 4
  %15 = ptrtoint ptr %slotsel_2ch.i.sroa.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %slotsel_2ch.i.sroa.6, align 4
  %16 = ptrtoint ptr %slotsel_2ch.i.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %slotsel_2ch.i.sroa.7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.11)
  %17 = ptrtoint ptr %slotsel_multi.i.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2048, ptr %slotsel_multi.i.sroa.0, align 4
  %18 = ptrtoint ptr %slotsel_multi.i.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2304, ptr %slotsel_multi.i.sroa.5, align 4
  %19 = ptrtoint ptr %slotsel_multi.i.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2560, ptr %slotsel_multi.i.sroa.7, align 4
  %20 = ptrtoint ptr %slotsel_multi.i.sroa.9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2816, ptr %slotsel_multi.i.sroa.9, align 4
  %21 = ptrtoint ptr %slotsel_multi.i.sroa.11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3072, ptr %slotsel_multi.i.sroa.11, align 4
  %arrayidx.i.i.i = getelementptr %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 5, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %23, label %aio_port_set_ch.exit [
    i32 8, label %if.end.if.end8_crit_edge
    i32 6, label %if.end.if.end8_crit_edge133
    i32 2, label %sw.bb1.i
  ]

if.end.if.end8_crit_edge133:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

aio_port_set_ch.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.7)
  br label %cleanup

if.end8:                                          ; preds = %sw.bb1.i, %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge133
  %mode.0.i = phi i32 [ 0, %sw.bb1.i ], [ 32768, %if.end.if.end8_crit_edge ], [ 32768, %if.end.if.end8_crit_edge133 ]
  %slotsel.0.i = phi ptr [ %slotsel_2ch.i.sroa.0, %sw.bb1.i ], [ %slotsel_multi.i.sroa.0, %if.end.if.end8_crit_edge ], [ %slotsel_multi.i.sroa.0, %if.end.if.end8_crit_edge133 ]
  %slotsel.0.i.sroa.phi = phi ptr [ %slotsel_2ch.i.sroa.4, %sw.bb1.i ], [ %slotsel_multi.i.sroa.5, %if.end.if.end8_crit_edge ], [ %slotsel_multi.i.sroa.5, %if.end.if.end8_crit_edge133 ]
  %slotsel.0.i.sroa.phi108 = phi ptr [ %slotsel_2ch.i.sroa.5, %sw.bb1.i ], [ %slotsel_multi.i.sroa.7, %if.end.if.end8_crit_edge ], [ %slotsel_multi.i.sroa.7, %if.end.if.end8_crit_edge133 ]
  %slotsel.0.i.sroa.phi111 = phi ptr [ %slotsel_2ch.i.sroa.6, %sw.bb1.i ], [ %slotsel_multi.i.sroa.9, %if.end.if.end8_crit_edge ], [ %slotsel_multi.i.sroa.9, %if.end.if.end8_crit_edge133 ]
  %slotsel.0.i.sroa.phi114 = phi ptr [ %slotsel_2ch.i.sroa.7, %sw.bb1.i ], [ %slotsel_multi.i.sroa.11, %if.end.if.end8_crit_edge ], [ %slotsel_multi.i.sroa.11, %if.end.if.end8_crit_edge133 ]
  %oport.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 6
  %25 = ptrtoint ptr %oport.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oport.i, align 4
  %mul.i = shl i32 %26, 10
  %add4.i = add i32 %mul.i, 270612
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4.i, i32 noundef 32768, i32 noundef %mode.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %swm, align 8
  %oport7.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %oport7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oport7.i, align 4
  %mul9.i = shl i32 %30, 10
  %add12.i = add i32 %mul9.i, 270612
  %31 = ptrtoint ptr %slotsel.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slotsel.0.i, align 4
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add12.i, i32 noundef 3840, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %swm, align 8
  %oport.1.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %oport.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oport.1.i, align 4
  %mul.1.i = shl i32 %36, 10
  %add4.1.i = add i32 %mul.1.i, 270644
  %call.i.1.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4.1.i, i32 noundef 32768, i32 noundef %mode.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %swm, align 8
  %oport7.1.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %oport7.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oport7.1.i, align 4
  %mul9.1.i = shl i32 %40, 10
  %add12.1.i = add i32 %mul9.1.i, 270644
  %41 = ptrtoint ptr %slotsel.0.i.sroa.phi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slotsel.0.i.sroa.phi, align 4
  %call.i27.1.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add12.1.i, i32 noundef 3840, i32 noundef %42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %43 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %swm, align 8
  %oport.2.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %oport.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %oport.2.i, align 4
  %mul.2.i = shl i32 %46, 10
  %add4.2.i = add i32 %mul.2.i, 270676
  %call.i.2.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4.2.i, i32 noundef 32768, i32 noundef %mode.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %47 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %swm, align 8
  %oport7.2.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %oport7.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oport7.2.i, align 4
  %mul9.2.i = shl i32 %50, 10
  %add12.2.i = add i32 %mul9.2.i, 270676
  %51 = ptrtoint ptr %slotsel.0.i.sroa.phi108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %slotsel.0.i.sroa.phi108, align 4
  %call.i27.2.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add12.2.i, i32 noundef 3840, i32 noundef %52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %53 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %swm, align 8
  %oport.3.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %oport.3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oport.3.i, align 4
  %mul.3.i = shl i32 %56, 10
  %add4.3.i = add i32 %mul.3.i, 270708
  %call.i.3.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4.3.i, i32 noundef 32768, i32 noundef %mode.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %57 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %swm, align 8
  %oport7.3.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %oport7.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %oport7.3.i, align 4
  %mul9.3.i = shl i32 %60, 10
  %add12.3.i = add i32 %mul9.3.i, 270708
  %61 = ptrtoint ptr %slotsel.0.i.sroa.phi111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slotsel.0.i.sroa.phi111, align 4
  %call.i27.3.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add12.3.i, i32 noundef 3840, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %63 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %swm, align 8
  %oport.4.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %oport.4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %oport.4.i, align 4
  %mul.4.i = shl i32 %66, 10
  %add4.4.i = add i32 %mul.4.i, 270740
  %call.i.4.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4.4.i, i32 noundef 32768, i32 noundef %mode.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %67 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %swm, align 8
  %oport7.4.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %oport7.4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %oport7.4.i, align 4
  %mul9.4.i = shl i32 %70, 10
  %add12.4.i = add i32 %mul9.4.i, 270740
  %71 = ptrtoint ptr %slotsel.0.i.sroa.phi114 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %slotsel.0.i.sroa.phi114, align 4
  %call.i27.4.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add12.4.i, i32 noundef 3840, i32 noundef %72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_multi.i.sroa.11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slotsel_2ch.i.sroa.7)
  %73 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sub, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %regmap.i68 = getelementptr inbounds %struct.uniphier_aio_chip, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i68, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %swm, align 8
  %dir.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i = icmp eq i32 %84, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end8
  %85 = zext i32 %rate.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %rate.0, label %do.end.i [
    i32 8000, label %if.then.i.sw.epilog.i73_crit_edge
    i32 11025, label %sw.bb4.i
    i32 12000, label %sw.bb5.i
    i32 16000, label %sw.bb6.i
    i32 22050, label %sw.bb7.i
    i32 24000, label %sw.bb8.i
    i32 32000, label %sw.bb9.i
    i32 44100, label %sw.bb10.i
    i32 48000, label %sw.bb11.i
    i32 88200, label %sw.bb12.i
    i32 96000, label %sw.bb13.i
    i32 176400, label %sw.bb14.i
    i32 192000, label %sw.bb15.i
  ]

if.then.i.sw.epilog.i73_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb5.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb6.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb9.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb10.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb11.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb12.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb14.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

sw.bb15.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i73

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.10, i32 noundef %rate.0) #9
  br label %cleanup

sw.epilog.i73:                                    ; preds = %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %if.then.i.sw.epilog.i73_crit_edge
  %v.0.i = phi i32 [ 2, %sw.bb15.i ], [ 6, %sw.bb14.i ], [ 1, %sw.bb13.i ], [ 5, %sw.bb12.i ], [ 0, %sw.bb11.i ], [ 4, %sw.bb10.i ], [ 3, %sw.bb9.i ], [ 10, %sw.bb8.i ], [ 9, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 13, %sw.bb5.i ], [ 12, %sw.bb4.i ], [ 11, %if.then.i.sw.epilog.i73_crit_edge ]
  %oport.i70 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %82, i32 0, i32 6
  br label %if.end12

if.else.i:                                        ; preds = %if.end8
  %86 = zext i32 %rate.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %rate.0, label %do.end33.i [
    i32 8000, label %if.else.i.sw.epilog34.i_crit_edge
    i32 11025, label %sw.bb18.i
    i32 12000, label %sw.bb19.i
    i32 16000, label %sw.bb20.i
    i32 22050, label %sw.bb21.i
    i32 24000, label %sw.bb22.i
    i32 32000, label %sw.bb23.i
    i32 44100, label %sw.bb24.i
    i32 48000, label %sw.bb25.i
    i32 88200, label %sw.bb26.i
    i32 96000, label %sw.bb27.i
    i32 176400, label %sw.bb28.i
    i32 192000, label %sw.bb29.i
  ]

if.else.i.sw.epilog34.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb18.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb19.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb20.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb21.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb22.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb23.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb24.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb25.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb26.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb27.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34.i

do.end33.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.10, i32 noundef %rate.0) #9
  br label %cleanup

sw.epilog34.i:                                    ; preds = %sw.bb29.i, %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %if.else.i.sw.epilog34.i_crit_edge
  %v.1.i = phi i32 [ 2, %sw.bb29.i ], [ 6, %sw.bb28.i ], [ 1, %sw.bb27.i ], [ 5, %sw.bb26.i ], [ 0, %sw.bb25.i ], [ 4, %sw.bb24.i ], [ 3, %sw.bb23.i ], [ 10, %sw.bb22.i ], [ 9, %sw.bb21.i ], [ 8, %sw.bb20.i ], [ 13, %sw.bb19.i ], [ 12, %sw.bb18.i ], [ 11, %if.else.i.sw.epilog34.i_crit_edge ]
  %iport.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %82, i32 0, i32 4
  br label %if.end12

if.end12:                                         ; preds = %sw.epilog34.i, %sw.epilog.i73
  %iport.i.sink = phi ptr [ %iport.i, %sw.epilog34.i ], [ %oport.i70, %sw.epilog.i73 ]
  %.sink = phi i32 [ 139264, %sw.epilog34.i ], [ 270336, %sw.epilog.i73 ]
  %v.1.i.sink = phi i32 [ %v.1.i, %sw.epilog34.i ], [ %v.0.i, %sw.epilog.i73 ]
  %87 = ptrtoint ptr %iport.i.sink to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %iport.i.sink, align 4
  %mul37.i = shl i32 %88, 10
  %add38.i = add i32 %mul37.i, %.sink
  %call.i52.i = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef %add38.i, i32 noundef 15, i32 noundef %v.1.i.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %89 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sub, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %regmap.i75 = getelementptr inbounds %struct.uniphier_aio_chip, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %regmap.i75 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap.i75, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %92, align 4
  %dev3.i76 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %swm, align 8
  %dir.i78 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %dir.i78 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dir.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i79 = icmp eq i32 %100, 0
  %fmt.i = getelementptr inbounds %struct.uniphier_aio, ptr %90, i32 0, i32 2
  %101 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fmt.i, align 8
  %switch.tableidx = add i32 %102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %103 = icmp ult i32 %switch.tableidx, 3
  br i1 %cmp.i79, label %if.then.i80, label %if.else.i90

if.then.i80:                                      ; preds = %if.end12
  br i1 %103, label %switch.lookup, label %do.end.i83

do.end.i83:                                       ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i76, ptr noundef nonnull @.str.14, i32 noundef %102) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.aio_port_set_param, i32 0, i32 %switch.tableidx
  %104 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %104)
  %switch.load = load i32, ptr %switch.gep, align 4
  %oport.i85 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %98, i32 0, i32 6
  %105 = ptrtoint ptr %oport.i85 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %oport.i85, align 4
  %mul.i86 = shl i32 %106, 10
  %add.i87 = add i32 %mul.i86, 270336
  %call.i.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef %add.i87, i32 noundef -2147465472, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end17

if.else.i90:                                      ; preds = %if.end12
  br i1 %103, label %switch.lookup129, label %do.end18.i

do.end18.i:                                       ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i76, ptr noundef nonnull @.str.14, i32 noundef %102) #9
  br label %cleanup

switch.lookup129:                                 ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep131 = getelementptr inbounds [3 x i32], ptr @switch.table.aio_port_set_param.25, i32 0, i32 %switch.tableidx
  %107 = ptrtoint ptr %switch.gep131 to i32
  call void @__asan_load4_noabort(i32 %107)
  %switch.load132 = load i32, ptr %switch.gep131, align 4
  %iport.i94 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %98, i32 0, i32 4
  %108 = ptrtoint ptr %iport.i94 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %iport.i94, align 4
  %mul25.i = shl i32 %109, 10
  %add26.i = add i32 %mul25.i, 139264
  %call.i43.i = tail call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef %add26.i, i32 noundef -2147479696, i32 noundef %switch.load132, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end17

if.end17:                                         ; preds = %switch.lookup129, %switch.lookup, %entry.if.end17_crit_edge
  %110 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sub, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %115, i32 0, i32 3
  %regmap.i96 = getelementptr inbounds %struct.uniphier_aio_chip, ptr %113, i32 0, i32 9
  %116 = ptrtoint ptr %regmap.i96 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap.i96, align 4
  %swm.i97 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %118 = ptrtoint ptr %swm.i97 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %swm.i97, align 8
  %dir.i98 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %dir.i98 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dir.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i99 = icmp eq i32 %121, 0
  br i1 %cmp.i99, label %if.then.i100, label %if.else74.i

if.then.i100:                                     ; preds = %if.end17
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %119, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %123, label %if.else69.i [
    i32 1, label %if.then9.i
    i32 3, label %if.then.i100.if.end72.i_crit_edge
    i32 2, label %if.then43.i
  ]

if.then.i100.if.end72.i_crit_edge:                ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

if.then9.i:                                       ; preds = %if.then.i100
  %pll_out.i = getelementptr inbounds %struct.uniphier_aio, ptr %111, i32 0, i32 6
  %125 = ptrtoint ptr %pll_out.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pll_out.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %126)
  %cmp11.i = icmp ugt i32 %126, 5
  br i1 %cmp11.i, label %do.end.i101, label %if.end.i

do.end.i101:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.18, i32 noundef %126) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then9.i
  %plldiv.i = getelementptr inbounds %struct.uniphier_aio, ptr %111, i32 0, i32 7
  %127 = ptrtoint ptr %plldiv.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %plldiv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %128)
  %cmp16.i = icmp ugt i32 %128, 3
  br i1 %cmp16.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.21, i32 noundef %128) #9
  br label %cleanup

if.end23.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr [6 x i32], ptr @__const.aio_port_set_clk.v_pll, i32 0, i32 %126
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i, align 4
  %arrayidx28.i = getelementptr [4 x i32], ptr @__const.aio_port_set_clk.v_div, i32 0, i32 %128
  %131 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx28.i, align 4
  %or.i = or i32 %132, %130
  %plls.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %113, i32 0, i32 5
  %133 = ptrtoint ptr %plls.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %plls.i, align 4
  %freq.i = getelementptr %struct.uniphier_aio_pll, ptr %134, i32 %126, i32 1
  %135 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %freq.i, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %136, label %sw.default.i [
    i32 0, label %if.end23.i.sw.bb.i_crit_edge
    i32 36864000, label %if.end23.i.sw.bb.i_crit_edge134
    i32 33868800, label %if.end23.i.sw.bb.i_crit_edge135
  ]

if.end23.i.sw.bb.i_crit_edge135:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end23.i.sw.bb.i_crit_edge134:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end23.i.sw.bb.i_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end23.i.sw.bb.i_crit_edge, %if.end23.i.sw.bb.i_crit_edge134, %if.end23.i.sw.bb.i_crit_edge135
  %or29.i = or i32 %or.i, 32768
  br label %if.end72.i

sw.default.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %or34.i = or i32 %or.i, 49152
  br label %if.end72.i

if.then43.i:                                      ; preds = %if.then.i100
  %pll_out45.i = getelementptr inbounds %struct.uniphier_aio, ptr %111, i32 0, i32 6
  %138 = ptrtoint ptr %pll_out45.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pll_out45.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %139)
  %cmp46.i = icmp ugt i32 %139, 5
  br i1 %cmp46.i, label %do.end50.i, label %if.end53.i

do.end50.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.18, i32 noundef %139) #9
  br label %cleanup

if.end53.i:                                       ; preds = %if.then43.i
  %arrayidx56.i = getelementptr [6 x i32], ptr @__const.aio_port_set_clk.v_pll, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx56.i, align 4
  %plls59.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %113, i32 0, i32 5
  %142 = ptrtoint ptr %plls59.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %plls59.i, align 4
  %freq63.i = getelementptr %struct.uniphier_aio_pll, ptr %143, i32 %139, i32 1
  %144 = ptrtoint ptr %freq63.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %freq63.i, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %145, label %sw.default66.i [
    i32 0, label %if.end53.i.sw.bb64.i_crit_edge
    i32 36864000, label %if.end53.i.sw.bb64.i_crit_edge136
    i32 33868800, label %if.end53.i.sw.bb64.i_crit_edge137
  ]

if.end53.i.sw.bb64.i_crit_edge137:                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64.i

if.end53.i.sw.bb64.i_crit_edge136:                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64.i

if.end53.i.sw.bb64.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb64.i

sw.bb64.i:                                        ; preds = %if.end53.i.sw.bb64.i_crit_edge, %if.end53.i.sw.bb64.i_crit_edge136, %if.end53.i.sw.bb64.i_crit_edge137
  %or57.i = or i32 %141, 32768
  br label %if.end72.i

sw.default66.i:                                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %or67.i = or i32 %141, 49152
  br label %if.end72.i

if.else69.i:                                      ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else69.i, %sw.default66.i, %sw.bb64.i, %sw.default.i, %sw.bb.i, %if.then.i100.if.end72.i_crit_edge
  %v.0.i102 = phi i32 [ %or34.i, %sw.default.i ], [ %or29.i, %sw.bb.i ], [ %or67.i, %sw.default66.i ], [ %or57.i, %sw.bb64.i ], [ 32768, %if.else69.i ], [ 294912, %if.then.i100.if.end72.i_crit_edge ]
  %oport.i103 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %119, i32 0, i32 6
  br label %if.end21

if.else74.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %iport.i106 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %119, i32 0, i32 4
  br label %if.end21

if.end21:                                         ; preds = %if.else74.i, %if.end72.i
  %iport.i106.sink = phi ptr [ %iport.i106, %if.else74.i ], [ %oport.i103, %if.end72.i ]
  %.sink127 = phi i32 [ 139268, %if.else74.i ], [ 270340, %if.end72.i ]
  %.sink126 = phi i32 [ 0, %if.else74.i ], [ %v.0.i102, %if.end72.i ]
  %147 = ptrtoint ptr %iport.i106.sink to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %iport.i106.sink, align 4
  %mul77.i = shl i32 %148, 10
  %add78.i = add i32 %mul77.i, %.sink127
  %call79.i = tail call i32 @regmap_write(ptr noundef %117, i32 noundef %add78.i, i32 noundef %.sink126) #6
  %149 = ptrtoint ptr %swm.i97 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %swm.i97, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp23 = icmp eq i32 %152, 0
  br i1 %cmp23, label %if.then24, label %if.else31

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %. = select i1 %tobool.not, i32 8, i32 69640
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %150, i32 0, i32 6
  %153 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %oport, align 4
  %mul = shl i32 %154, 10
  %add = add i32 %mul, 270344
  %call30 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %.) #6
  br label %cleanup

if.else31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %iport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %150, i32 0, i32 4
  %155 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %iport, align 4
  %mul34 = shl i32 %156, 10
  %add35 = add i32 %mul34, 139296
  %call36 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add35, i32 noundef 0) #6
  %157 = ptrtoint ptr %swm.i97 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %swm.i97, align 8
  %iport38 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %iport38 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %iport38, align 4
  %mul40 = shl i32 %160, 10
  %add41 = add i32 %mul40, 139376
  %call42 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add41, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then24, %do.end50.i, %do.end20.i, %do.end.i101, %do.end18.i, %do.end.i83, %do.end33.i, %do.end.i, %aio_port_set_ch.exit
  %retval.0 = phi i32 [ -22, %aio_port_set_ch.exit ], [ 0, %if.else31 ], [ 0, %if.then24 ], [ -22, %do.end.i ], [ -22, %do.end33.i ], [ -22, %do.end.i83 ], [ -22, %do.end18.i ], [ -22, %do.end.i101 ], [ -22, %do.end20.i ], [ -22, %do.end50.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aio_port_set_enable(ptr nocapture noundef readonly %sub, i32 noundef %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else20

if.then:                                          ; preds = %entry
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oport, align 4
  %mul = shl i32 %11, 10
  %add = add i32 %mul, 270400
  %oif = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %oif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oif, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %13) #6
  %14 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swm, align 8
  %oport5 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %oport5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oport5, align 4
  %mul7 = shl i32 %17, 10
  %add8 = add i32 %mul7, 270584
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add8, i32 noundef 520560391, i32 noundef 520560391, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %18 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %swm, align 8
  %oport16 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %oport16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oport16, align 4
  %shl18 = shl nuw i32 1, %21
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 262208, i32 noundef %shl18) #6
  br label %if.end42

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 262212, i32 noundef %shl18) #6
  br label %if.end42

if.else20:                                        ; preds = %entry
  %iport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iport, align 4
  %mul23 = shl i32 %23, 10
  %add24 = add i32 %mul23, 139384
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add24, i32 noundef 458759, i32 noundef 458759, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool26.not = icmp eq i32 %enable, 0
  %24 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %swm, align 8
  %iport36 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %iport36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iport36, align 4
  %mul38 = shl i32 %27, 10
  %add39 = add i32 %mul38, 139268
  br i1 %tobool26.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add39, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end42

if.else34:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add39, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else34, %if.then27, %if.else, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_port_get_volume(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !54
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %7 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %swm, align 8
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oport, align 4
  %mul = shl i32 %10, 10
  %add = add i32 %mul, 270600
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %v) #6
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v, align 4
  %and = and i32 %12, 65535
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aio_port_set_volume(ptr nocapture noundef readonly %sub, i32 noundef %vol) local_unnamed_addr #1 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oport, align 4
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #6
  %12 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %v.i, align 4, !annotation !54
  %mul.i = shl i32 %9, 10
  %add.i = add i32 %mul.i, 270600
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %add.i, ptr noundef nonnull %v.i) #6
  %13 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v.i, align 4
  %and.i = and i32 %14, 65535
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #6
  %arrayidx.i.i = getelementptr %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 5, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.if.end8.thread_crit_edge, label %if.end8

if.end.if.end8.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.thread

if.end8:                                          ; preds = %if.end
  %sub2 = sub i32 %vol, %and.i
  %17 = call i32 @llvm.abs.i32(i32 %sub2, i1 false)
  %div = sdiv i32 %17, 20
  %mul = mul i32 %div, 1000
  %div7 = sdiv i32 %mul, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div7)
  %cmp10 = icmp slt i32 %div7, 1
  br i1 %cmp10, label %if.end8.if.end8.thread_crit_edge, label %if.end8.if.end32_crit_edge

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end8.if.end8.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end8.if.end8.thread_crit_edge, %if.end.if.end8.thread_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.end8.thread, %if.end8.if.end32_crit_edge
  %18 = phi i32 [ 1, %if.end8.thread ], [ %div7, %if.end8.if.end32_crit_edge ]
  %add = add i32 %mul.i, 270592
  %shl = shl i32 %18, 16
  %call.i61 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef -65536, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %add19 = add i32 %mul.i, 270596
  %call.i62 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add19, i32 noundef 65535, i32 noundef %vol, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %vol)
  %cmp22 = icmp slt i32 %and.i, %vol
  %. = select i1 %cmp22, i32 131072, i32 65536
  %call.i64 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add19, i32 noundef 196608, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %shl33 = shl nuw i32 1, %9
  %call34 = call i32 @regmap_write(ptr noundef %5, i32 noundef 262176, i32 noundef %shl33) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_if_set_param(ptr nocapture noundef readonly %sub, i32 noundef %pass_through) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass_through)
  %tobool.not = icmp eq i32 %pass_through, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx.i.i = getelementptr %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 5, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %11, label %if.else.cleanup_crit_edge [
    i32 2, label %if.else.if.end_crit_edge
    i32 6, label %sw.bb2
    i32 8, label %sw.bb3
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sw.bb3, %sw.bb2, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %v.0 = phi i32 [ 21, %if.then.if.end_crit_edge ], [ 1, %sw.bb3 ], [ 2, %sw.bb2 ], [ 4, %if.else.if.end_crit_edge ]
  %oif = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %oif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oif, align 4
  %mul = shl i32 %14, 6
  %add = add i32 %mul, 262656
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %v.0) #6
  %15 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %swm, align 8
  %oif7 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %oif7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oif7, align 4
  %mul9 = shl i32 %18, 6
  %add10 = add i32 %mul9, 262660
  %call11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add10, i32 noundef 0) #6
  br label %cleanup

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iif = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 5
  %19 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iif, align 4
  %mul15 = shl i32 %20, 6
  %add16 = add i32 %mul15, 131584
  %iport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iport, align 4
  %shl = shl i32 %22, 8
  %call22 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add16, i32 noundef %shl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %if.end, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.else12 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_oport_set_stream_type(ptr nocapture noundef readonly %sub, i32 noundef %pc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %switch.tableidx = add i32 %pc, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 13
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.aio_oport_set_stream_type, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep29 = getelementptr inbounds [13 x i32], ptr @switch.table.aio_oport_set_stream_type.26, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load30 = load i32, ptr %switch.gep29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %repet.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %pause.0 = phi i32 [ 196608, %entry.sw.epilog_crit_edge ], [ %switch.load30, %switch.lookup ]
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %9 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %swm, align 8
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oport, align 4
  %mul = shl i32 %12, 10
  %add = add i32 %mul, 270416
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %repet.0) #6
  %13 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %swm, align 8
  %oport14 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %oport14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oport14, align 4
  %mul16 = shl i32 %16, 10
  %add17 = add i32 %mul16, 270420
  %call18 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add17, i32 noundef %pause.0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aio_src_reset(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %0 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oport, align 4
  %shl = shl nuw i32 1, %11
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 262336, i32 noundef %shl) #6
  %12 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %swm, align 8
  %oport3 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %oport3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oport3, align 4
  %shl5 = shl nuw i32 1, %15
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 262340, i32 noundef %shl5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_src_set_param(ptr nocapture noundef readonly %sub, ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %0 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oport, align 4
  %mul = shl i32 %11, 10
  %add = add i32 %mul, 270348
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add, i32 noundef 32768) #6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %13)
  %switch.selectcmp = icmp eq i32 %13, 44100
  %switch.select = select i1 %switch.selectcmp, i32 16777748, i32 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %13)
  %switch.selectcmp25 = icmp eq i32 %13, 32000
  %switch.select26 = select i1 %switch.selectcmp25, i32 16777219, i32 %switch.select
  %14 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swm, align 8
  %oport6 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %oport6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oport6, align 4
  %mul8 = shl i32 %17, 10
  %add9 = add i32 %mul8, 270564
  %call11 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add9, i32 noundef %switch.select26) #6
  %18 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %swm, align 8
  %oport13 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %oport13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oport13, align 4
  %mul15 = shl i32 %21, 10
  %add16 = add i32 %mul15, 270564
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add16, i32 noundef 16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_srcif_set_param(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %iif = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iif, align 4
  %mul = shl i32 %9, 6
  %add = add i32 %mul, 131584
  %oport = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %oport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oport, align 4
  %shl = shl i32 %11, 8
  %or = or i32 %shl, 16384
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %or) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aio_srcch_set_param(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %och = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %och to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %och, align 4
  %mul = shl i32 %9, 7
  %add = add i32 %mul, 73728
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef 1) #6
  %10 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swm, align 8
  %och2 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %och2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %och2, align 4
  %mul4 = shl i32 %13, 7
  %add5 = add i32 %mul4, 73760
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add5, i32 noundef 32) #6
  %14 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swm, align 8
  %och8 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %och8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %och8, align 4
  %mul10 = shl i32 %17, 7
  %add11 = add i32 %mul10, 73764
  %shl = shl i32 %17, 8
  %or = or i32 %shl, 4
  %call15 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add11, i32 noundef %or) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aio_srcch_set_enable(ptr nocapture noundef readonly %sub, i32 noundef %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %. = select i1 %tobool.not, i32 -2147483648, i32 0
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %och = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %och to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %och, align 4
  %shl = shl nuw i32 1, %9
  %or = or i32 %shl, %.
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65536, i32 noundef %or) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiodma_ch_set_param(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %ch = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch, align 4
  %mul = shl i32 %9, 7
  %add = add i32 %mul, 73728
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef 1) #6
  %10 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swm, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb, align 4
  %shl = shl i32 %13, 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %ch5 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %ch5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch5, align 4
  %mul7 = shl i32 %17, 7
  %. = select i1 %cmp, i32 73760, i32 73764
  %add14 = add i32 %mul7, %.
  %call15 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add14, i32 noundef %shl) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aiodma_ch_set_enable(ptr nocapture noundef readonly %sub, i32 noundef %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %swm9 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm9, align 8
  %ch10 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ch10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch10, align 4
  %shl12 = shl nuw i32 1, %9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65536, i32 noundef %shl12) #6
  %10 = ptrtoint ptr %swm9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swm9, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb, align 4
  %shl3 = shl nuw i32 1, %13
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36912, i32 noundef %shl3, i32 noundef %shl3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or13 = or i32 %shl12, -2147483648
  %call14 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65536, i32 noundef %or13) #6
  %14 = ptrtoint ptr %swm9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swm9, align 8
  %rb16 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %rb16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb16, align 4
  %shl18 = shl nuw i32 1, %17
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36912, i32 noundef %shl18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiodma_rb_set_threshold(ptr nocapture noundef readonly %sub, i64 noundef %size, i32 noundef %th) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %th to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %size)
  %cmp.not = icmp ult i64 %conv, %size
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rb, align 4
  %mul = shl i32 %9, 7
  %add = add i32 %mul, 81976
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %th) #6
  %10 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swm, align 8
  %rb3 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb3, align 4
  %mul5 = shl i32 %13, 7
  %add6 = add i32 %mul5, 81980
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add6, i32 noundef %th) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiodma_rb_set_buffer(ptr nocapture noundef %sub, i64 noundef %start, i64 noundef %end, i32 noundef %period) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %end, i64 %start)
  %cmp = icmp ult i64 %end, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period)
  %cmp2 = icmp slt i32 %period, 0
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub1 = sub i64 %end, %start
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rb, align 4
  %mul = shl i32 %9, 7
  %add = add i32 %mul, 81968
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef 0) #6
  %10 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swm, align 8
  %rb4 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rb4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb4, align 4
  %mul6 = shl i32 %13, 7
  %add7 = add i32 %mul6, 81920
  %conv = trunc i64 %start to i32
  %call8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add7, i32 noundef %conv) #6
  %14 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swm, align 8
  %rb10 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %rb10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb10, align 4
  %mul12 = shl i32 %17, 7
  %add13 = add i32 %mul12, 81924
  %shr = lshr i64 %start, 32
  %conv15 = trunc i64 %shr to i32
  %call16 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add13, i32 noundef %conv15) #6
  %18 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %swm, align 8
  %rb18 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %rb18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb18, align 4
  %mul20 = shl i32 %21, 7
  %add21 = add i32 %mul20, 81928
  %conv23 = trunc i64 %end to i32
  %call24 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add21, i32 noundef %conv23) #6
  %22 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %swm, align 8
  %rb26 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %rb26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rb26, align 4
  %mul28 = shl i32 %25, 7
  %add29 = add i32 %mul28, 81932
  %shr30 = lshr i64 %end, 32
  %conv32 = trunc i64 %shr30 to i32
  %call33 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add29, i32 noundef %conv32) #6
  %26 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %swm, align 8
  %rb35 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %rb35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rb35, align 4
  %shl = shl nuw i32 1, %29
  %call37 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65716, i32 noundef %shl) #6
  %mul38 = shl nuw i32 %period, 1
  %conv.i = zext i32 %mul38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub1, i64 %conv.i)
  %cmp.not.i = icmp ugt i64 %sub1, %conv.i
  br i1 %cmp.not.i, label %if.end41, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end
  %30 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sub, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %regmap.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %36 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %swm, align 8
  %rb.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rb.i, align 4
  %mul.i = shl i32 %39, 7
  %add.i = add i32 %mul.i, 81976
  %call.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add.i, i32 noundef %mul38) #6
  %40 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %swm, align 8
  %rb3.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %rb3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rb3.i, align 4
  %mul5.i = shl i32 %43, 7
  %add6.i = add i32 %mul5.i, 81980
  %call7.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add6.i, i32 noundef %mul38) #6
  %44 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp43 = icmp eq i32 %47, 0
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @aiodma_rb_set_rp(ptr noundef %sub, i64 noundef %start)
  %conv46113 = zext i32 %period to i64
  %sub47 = sub i64 %end, %conv46113
  tail call fastcc void @aiodma_rb_set_wp(ptr noundef %sub, i64 noundef %sub47)
  %48 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %swm, align 8
  %rb49 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %rb49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rb49, align 4
  %mul51 = shl i32 %51, 7
  %add52 = add i32 %mul51, 81944
  %call.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add52, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end62

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %conv54114 = zext i32 %period to i64
  %sub55 = sub i64 %end, %conv54114
  tail call fastcc void @aiodma_rb_set_rp(ptr noundef %sub, i64 noundef %sub55)
  tail call fastcc void @aiodma_rb_set_wp(ptr noundef %sub, i64 noundef %start)
  %52 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %swm, align 8
  %rb57 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %rb57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rb57, align 4
  %mul59 = shl i32 %55, 7
  %add60 = add i32 %mul59, 81944
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add60, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then45
  %threshold = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 20
  %56 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul38, ptr %threshold, align 8
  %rd_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %rd_org = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 21
  %57 = call ptr @memset(ptr %rd_offs, i32 0, i32 16)
  %58 = call ptr @memset(ptr %rd_org, i32 0, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aiodma_rb_set_rp(ptr nocapture noundef readonly %sub, i64 noundef %pos) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp, align 4, !annotation !54
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %7 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %swm, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rb, align 4
  %mul = shl i32 %10, 7
  %add = add i32 %mul, 81952
  %conv = trunc i64 %pos to i32
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %conv) #6
  %11 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %swm, align 8
  %rb2 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %rb2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rb2, align 4
  %mul4 = shl i32 %14, 7
  %add5 = add i32 %mul4, 81956
  %shr = lshr i64 %pos, 32
  %conv6 = trunc i64 %shr to i32
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add5, i32 noundef %conv6) #6
  %15 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %swm, align 8
  %rb9 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %rb9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rb9, align 4
  %shl = shl nuw i32 1, %18
  %call11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65720, i32 noundef %shl) #6
  %19 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %swm, align 8
  %rb14 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %rb14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rb14, align 4
  %mul16 = shl i32 %22, 7
  %add17 = add i32 %mul16, 81952
  %call18 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add17, ptr noundef nonnull %tmp) #6
  %23 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %swm, align 8
  %rb14.1 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %rb14.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rb14.1, align 4
  %mul16.1 = shl i32 %26, 7
  %add17.1 = add i32 %mul16.1, 81952
  %call18.1 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add17.1, ptr noundef nonnull %tmp) #6
  %27 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %swm, align 8
  %rb14.2 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %rb14.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rb14.2, align 4
  %mul16.2 = shl i32 %30, 7
  %add17.2 = add i32 %mul16.2, 81952
  %call18.2 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add17.2, ptr noundef nonnull %tmp) #6
  %31 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %swm, align 8
  %rb14.3 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %rb14.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rb14.3, align 4
  %mul16.3 = shl i32 %34, 7
  %add17.3 = add i32 %mul16.3, 81952
  %call18.3 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add17.3, ptr noundef nonnull %tmp) #6
  %35 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %swm, align 8
  %rb14.4 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %rb14.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rb14.4, align 4
  %mul16.4 = shl i32 %38, 7
  %add17.4 = add i32 %mul16.4, 81952
  %call18.4 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add17.4, ptr noundef nonnull %tmp) #6
  %39 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %swm, align 8
  %rb14.5 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %rb14.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rb14.5, align 4
  %mul16.5 = shl i32 %42, 7
  %add17.5 = add i32 %mul16.5, 81952
  %call18.5 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add17.5, ptr noundef nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aiodma_rb_set_wp(ptr nocapture noundef readonly %sub, i64 noundef %pos) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp, align 4, !annotation !54
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %7 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %swm, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rb, align 4
  %mul = shl i32 %10, 7
  %add = add i32 %mul, 81960
  %conv = trunc i64 %pos to i32
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %conv) #6
  %11 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %swm, align 8
  %rb2 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %rb2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rb2, align 4
  %mul4 = shl i32 %14, 7
  %add5 = add i32 %mul4, 81964
  %shr = lshr i64 %pos, 32
  %conv7 = trunc i64 %shr to i32
  %call8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add5, i32 noundef %conv7) #6
  %15 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %swm, align 8
  %rb10 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %rb10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rb10, align 4
  %shl = shl nuw i32 1, %18
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65724, i32 noundef %shl) #6
  %19 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %swm, align 8
  %rb15 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %rb15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rb15, align 4
  %mul17 = shl i32 %22, 7
  %add18 = add i32 %mul17, 81960
  %call19 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add18, ptr noundef nonnull %tmp) #6
  %23 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %swm, align 8
  %rb15.1 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %rb15.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rb15.1, align 4
  %mul17.1 = shl i32 %26, 7
  %add18.1 = add i32 %mul17.1, 81960
  %call19.1 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add18.1, ptr noundef nonnull %tmp) #6
  %27 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %swm, align 8
  %rb15.2 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %rb15.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rb15.2, align 4
  %mul17.2 = shl i32 %30, 7
  %add18.2 = add i32 %mul17.2, 81960
  %call19.2 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add18.2, ptr noundef nonnull %tmp) #6
  %31 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %swm, align 8
  %rb15.3 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %rb15.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rb15.3, align 4
  %mul17.3 = shl i32 %34, 7
  %add18.3 = add i32 %mul17.3, 81960
  %call19.3 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add18.3, ptr noundef nonnull %tmp) #6
  %35 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %swm, align 8
  %rb15.4 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %rb15.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rb15.4, align 4
  %mul17.4 = shl i32 %38, 7
  %add18.4 = add i32 %mul17.4, 81960
  %call19.4 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add18.4, ptr noundef nonnull %tmp) #6
  %39 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %swm, align 8
  %rb15.5 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %rb15.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rb15.5, align 4
  %mul17.5 = shl i32 %42, 7
  %add18.5 = add i32 %mul17.5, 81960
  %call19.5 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add18.5, ptr noundef nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aiodma_rb_sync(ptr noundef %sub, i64 noundef %start, i64 noundef %size, i32 noundef %period) local_unnamed_addr #1 align 64 {
entry:
  %pos_u.i128 = alloca i32, align 4
  %pos_l.i129 = alloca i32, align 4
  %pos_u.i = alloca i32, align 4
  %pos_l.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %0 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %regmap.i = getelementptr inbounds %struct.uniphier_aio_chip, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos_u.i) #6
  %10 = ptrtoint ptr %pos_u.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pos_u.i, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos_l.i) #6
  %11 = ptrtoint ptr %pos_l.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %pos_l.i, align 4, !annotation !54
  %rb.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb.i, align 4
  %shl.i = shl nuw i32 1, %13
  %or.i = or i32 %shl.i, -2147483648
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 65720, i32 noundef %or.i) #6
  %14 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swm, align 8
  %rb2.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %rb2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb2.i, align 4
  %mul.i = shl i32 %17, 7
  %add.i = add i32 %mul.i, 81952
  %call4.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.i, ptr noundef nonnull %pos_l.i) #6
  %18 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %swm, align 8
  %rb2.1.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %rb2.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb2.1.i, align 4
  %mul.1.i = shl i32 %21, 7
  %add.1.i = add i32 %mul.1.i, 81952
  %call4.1.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.1.i, ptr noundef nonnull %pos_l.i) #6
  %22 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %swm, align 8
  %rb2.2.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %rb2.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rb2.2.i, align 4
  %mul.2.i = shl i32 %25, 7
  %add.2.i = add i32 %mul.2.i, 81952
  %call4.2.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.2.i, ptr noundef nonnull %pos_l.i) #6
  %26 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %swm, align 8
  %rb2.3.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %rb2.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rb2.3.i, align 4
  %mul.3.i = shl i32 %29, 7
  %add.3.i = add i32 %mul.3.i, 81952
  %call4.3.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.3.i, ptr noundef nonnull %pos_l.i) #6
  %30 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %swm, align 8
  %rb2.4.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %rb2.4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rb2.4.i, align 4
  %mul.4.i = shl i32 %33, 7
  %add.4.i = add i32 %mul.4.i, 81952
  %call4.4.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.4.i, ptr noundef nonnull %pos_l.i) #6
  %34 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %swm, align 8
  %rb2.5.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %rb2.5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rb2.5.i, align 4
  %mul.5.i = shl i32 %37, 7
  %add.5.i = add i32 %mul.5.i, 81952
  %call4.5.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.5.i, ptr noundef nonnull %pos_l.i) #6
  %38 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %swm, align 8
  %rb6.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %rb6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rb6.i, align 4
  %mul8.i = shl i32 %41, 7
  %add9.i = add i32 %mul8.i, 81952
  %call10.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add9.i, ptr noundef nonnull %pos_l.i) #6
  %42 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %swm, align 8
  %rb12.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %rb12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rb12.i, align 4
  %mul14.i = shl i32 %45, 7
  %add15.i = add i32 %mul14.i, 81956
  %call16.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add15.i, ptr noundef nonnull %pos_u.i) #6
  %46 = ptrtoint ptr %pos_u.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pos_u.i, align 4
  %and.i = and i32 %47, 3
  %conv.i = zext i32 %and.i to i64
  %shl29.i = shl nuw nsw i64 %conv.i, 32
  %48 = ptrtoint ptr %pos_l.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pos_l.i, align 4
  %conv30.i = zext i32 %49 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos_l.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos_u.i) #6
  %or31.i = sub i64 %conv30.i, %start
  %sub1 = add i64 %or31.i, %shl29.i
  %rd_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %50 = ptrtoint ptr %rd_offs to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub1, ptr %rd_offs, align 8
  %use_mmap = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 15
  %51 = ptrtoint ptr %use_mmap to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %use_mmap, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  br i1 %tobool.not, label %if.then.if.end13_crit_edge, label %if.then2

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then2:                                         ; preds = %if.then
  %mul = shl i32 %period, 1
  %threshold = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 20
  %53 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul, ptr %threshold, align 8
  %conv.i121 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i121, i64 %size)
  %cmp.not.i = icmp ult i64 %conv.i121, %size
  br i1 %cmp.not.i, label %if.end.i, label %if.then2.aiodma_rb_set_threshold.exit_crit_edge

if.then2.aiodma_rb_set_threshold.exit_crit_edge:  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %aiodma_rb_set_threshold.exit

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sub, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %regmap.i122 = getelementptr inbounds %struct.uniphier_aio_chip, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %regmap.i122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i122, align 4
  %60 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %swm, align 8
  %rb.i124 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %rb.i124 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rb.i124, align 4
  %mul.i125 = shl i32 %63, 7
  %add.i126 = add i32 %mul.i125, 81976
  %call.i127 = call i32 @regmap_write(ptr noundef %59, i32 noundef %add.i126, i32 noundef %mul) #6
  %64 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %swm, align 8
  %rb3.i = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %rb3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rb3.i, align 4
  %mul5.i = shl i32 %67, 7
  %add6.i = add i32 %mul5.i, 81980
  %call7.i = call i32 @regmap_write(ptr noundef %59, i32 noundef %add6.i, i32 noundef %mul) #6
  br label %aiodma_rb_set_threshold.exit

aiodma_rb_set_threshold.exit:                     ; preds = %if.end.i, %if.then2.aiodma_rb_set_threshold.exit_crit_edge
  %68 = ptrtoint ptr %rd_offs to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rd_offs, align 8
  %conv = sext i32 %period to i64
  %sub6 = sub i64 %69, %conv
  %wr_offs = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %70 = ptrtoint ptr %wr_offs to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %sub6, ptr %wr_offs, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %conv)
  %cmp9 = icmp ult i64 %69, %conv
  br i1 %cmp9, label %if.then11, label %aiodma_rb_set_threshold.exit.if.end13_crit_edge

aiodma_rb_set_threshold.exit.if.end13_crit_edge:  ; preds = %aiodma_rb_set_threshold.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %aiodma_rb_set_threshold.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i64 %sub6, %size
  %71 = ptrtoint ptr %wr_offs to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %add, ptr %wr_offs, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %aiodma_rb_set_threshold.exit.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %wr_offs14 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %72 = ptrtoint ptr %wr_offs14 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %wr_offs14, align 8
  %add15 = add i64 %73, %start
  call fastcc void @aiodma_rb_set_wp(ptr noundef %sub, i64 noundef %add15)
  br label %if.end41

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos_u.i128) #6
  %74 = ptrtoint ptr %pos_u.i128 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %pos_u.i128, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos_l.i129) #6
  %75 = ptrtoint ptr %pos_l.i129 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %pos_l.i129, align 4, !annotation !54
  %rb.i132 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %rb.i132 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rb.i132, align 4
  %shl.i133 = shl nuw i32 1, %77
  %or.i134 = or i32 %shl.i133, -2147483648
  %call.i135 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 65724, i32 noundef %or.i134) #6
  %78 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %swm, align 8
  %rb2.i136 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %rb2.i136 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rb2.i136, align 4
  %mul.i137 = shl i32 %81, 7
  %add.i138 = add i32 %mul.i137, 81960
  %call4.i139 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.i138, ptr noundef nonnull %pos_l.i129) #6
  %82 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %swm, align 8
  %rb2.1.i140 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %rb2.1.i140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rb2.1.i140, align 4
  %mul.1.i141 = shl i32 %85, 7
  %add.1.i142 = add i32 %mul.1.i141, 81960
  %call4.1.i143 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.1.i142, ptr noundef nonnull %pos_l.i129) #6
  %86 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %swm, align 8
  %rb2.2.i144 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %rb2.2.i144 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rb2.2.i144, align 4
  %mul.2.i145 = shl i32 %89, 7
  %add.2.i146 = add i32 %mul.2.i145, 81960
  %call4.2.i147 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.2.i146, ptr noundef nonnull %pos_l.i129) #6
  %90 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %swm, align 8
  %rb2.3.i148 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %rb2.3.i148 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rb2.3.i148, align 4
  %mul.3.i149 = shl i32 %93, 7
  %add.3.i150 = add i32 %mul.3.i149, 81960
  %call4.3.i151 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.3.i150, ptr noundef nonnull %pos_l.i129) #6
  %94 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %swm, align 8
  %rb2.4.i152 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %rb2.4.i152 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rb2.4.i152, align 4
  %mul.4.i153 = shl i32 %97, 7
  %add.4.i154 = add i32 %mul.4.i153, 81960
  %call4.4.i155 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.4.i154, ptr noundef nonnull %pos_l.i129) #6
  %98 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %swm, align 8
  %rb2.5.i156 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %rb2.5.i156 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rb2.5.i156, align 4
  %mul.5.i157 = shl i32 %101, 7
  %add.5.i158 = add i32 %mul.5.i157, 81960
  %call4.5.i159 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.5.i158, ptr noundef nonnull %pos_l.i129) #6
  %102 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %swm, align 8
  %rb6.i160 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %rb6.i160 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rb6.i160, align 4
  %mul8.i161 = shl i32 %105, 7
  %add9.i162 = add i32 %mul8.i161, 81960
  %call10.i163 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add9.i162, ptr noundef nonnull %pos_l.i129) #6
  %106 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %swm, align 8
  %rb12.i164 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %rb12.i164 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rb12.i164, align 4
  %mul14.i165 = shl i32 %109, 7
  %add15.i166 = add i32 %mul14.i165, 81964
  %call16.i167 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add15.i166, ptr noundef nonnull %pos_u.i128) #6
  %110 = ptrtoint ptr %pos_u.i128 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pos_u.i128, align 4
  %and.i168 = and i32 %111, 3
  %conv.i169 = zext i32 %and.i168 to i64
  %shl29.i170 = shl nuw nsw i64 %conv.i169, 32
  %112 = ptrtoint ptr %pos_l.i129 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pos_l.i129, align 4
  %conv30.i171 = zext i32 %113 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos_l.i129) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos_u.i128) #6
  %or31.i172 = sub i64 %conv30.i171, %start
  %sub17 = add i64 %or31.i172, %shl29.i170
  %wr_offs18 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %114 = ptrtoint ptr %wr_offs18 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %sub17, ptr %wr_offs18, align 8
  %use_mmap19 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 15
  %115 = ptrtoint ptr %use_mmap19 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %use_mmap19, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool20.not = icmp eq i8 %116, 0
  br i1 %tobool20.not, label %if.else.if.end38_crit_edge, label %if.then21

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then21:                                        ; preds = %if.else
  %mul22 = shl i32 %period, 1
  %threshold23 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 20
  %117 = ptrtoint ptr %threshold23 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul22, ptr %threshold23, align 8
  %conv.i173 = zext i32 %mul22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i173, i64 %size)
  %cmp.not.i174 = icmp ult i64 %conv.i173, %size
  br i1 %cmp.not.i174, label %if.end.i185, label %if.then21.aiodma_rb_set_threshold.exit187_crit_edge

if.then21.aiodma_rb_set_threshold.exit187_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %aiodma_rb_set_threshold.exit187

if.end.i185:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sub, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %regmap.i175 = getelementptr inbounds %struct.uniphier_aio_chip, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %regmap.i175 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap.i175, align 4
  %124 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %swm, align 8
  %rb.i177 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %rb.i177 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rb.i177, align 4
  %mul.i178 = shl i32 %127, 7
  %add.i179 = add i32 %mul.i178, 81976
  %call.i180 = call i32 @regmap_write(ptr noundef %123, i32 noundef %add.i179, i32 noundef %mul22) #6
  %128 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %swm, align 8
  %rb3.i181 = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %rb3.i181 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rb3.i181, align 4
  %mul5.i182 = shl i32 %131, 7
  %add6.i183 = add i32 %mul5.i182, 81980
  %call7.i184 = call i32 @regmap_write(ptr noundef %123, i32 noundef %add6.i183, i32 noundef %mul22) #6
  br label %aiodma_rb_set_threshold.exit187

aiodma_rb_set_threshold.exit187:                  ; preds = %if.end.i185, %if.then21.aiodma_rb_set_threshold.exit187_crit_edge
  %132 = ptrtoint ptr %wr_offs18 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %wr_offs18, align 8
  %conv27 = sext i32 %period to i64
  %sub28 = sub i64 %133, %conv27
  %rd_offs29 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %134 = ptrtoint ptr %rd_offs29 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %sub28, ptr %rd_offs29, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %133, i64 %conv27)
  %cmp32 = icmp ult i64 %133, %conv27
  br i1 %cmp32, label %if.then34, label %aiodma_rb_set_threshold.exit187.if.end38_crit_edge

aiodma_rb_set_threshold.exit187.if.end38_crit_edge: ; preds = %aiodma_rb_set_threshold.exit187
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then34:                                        ; preds = %aiodma_rb_set_threshold.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %add36 = add i64 %sub28, %size
  %135 = ptrtoint ptr %rd_offs29 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %add36, ptr %rd_offs29, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %aiodma_rb_set_threshold.exit187.if.end38_crit_edge, %if.else.if.end38_crit_edge
  %rd_offs39 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %136 = ptrtoint ptr %rd_offs39 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %rd_offs39, align 8
  %add40 = add i64 %137, %start
  call fastcc void @aiodma_rb_set_rp(ptr noundef %sub, i64 noundef %add40)
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %if.end13
  %rd_offs42 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 18
  %138 = ptrtoint ptr %rd_offs42 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %rd_offs42, align 8
  %rd_org = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 21
  %140 = ptrtoint ptr %rd_org to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %rd_org, align 8
  %sub43 = sub i64 %139, %141
  %rd_total = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 23
  %142 = ptrtoint ptr %rd_total to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %rd_total, align 8
  %add44 = add i64 %143, %sub43
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %141)
  %cmp47 = icmp ult i64 %139, %141
  %add51 = select i1 %cmp47, i64 %size, i64 0
  %spec.select = add i64 %add44, %add51
  %144 = ptrtoint ptr %rd_total to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %spec.select, ptr %rd_total, align 8
  %wr_offs53 = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 19
  %145 = ptrtoint ptr %wr_offs53 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %wr_offs53, align 8
  %wr_org = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 22
  %147 = ptrtoint ptr %wr_org to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %wr_org, align 8
  %sub54 = sub i64 %146, %148
  %wr_total = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 24
  %149 = ptrtoint ptr %wr_total to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %wr_total, align 8
  %add55 = add i64 %150, %sub54
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %148)
  %cmp58 = icmp ult i64 %146, %148
  %add62 = select i1 %cmp58, i64 %size, i64 0
  %storemerge = add i64 %add55, %add62
  %151 = ptrtoint ptr %wr_total to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %storemerge, ptr %wr_total, align 8
  %152 = ptrtoint ptr %rd_org to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %139, ptr %rd_org, align 8
  %153 = ptrtoint ptr %wr_org to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %146, ptr %wr_org, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aiodma_rb_is_irq(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  %ir = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ir) #6
  %6 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ir, align 4, !annotation !54
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %7 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %swm, align 8
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rb, align 4
  %mul = shl i32 %10, 7
  %add = add i32 %mul, 81940
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %ir) #6
  %11 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ir, align 4
  %. = select i1 %cmp, i32 8, i32 16
  %and3 = and i32 %16, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %retval.0 = icmp ne i32 %and3, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ir) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aiodma_rb_clear_irq(ptr nocapture noundef readonly %sub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sub, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regmap = getelementptr inbounds %struct.uniphier_aio_chip, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %swm = getelementptr inbounds %struct.uniphier_aio_sub, ptr %sub, i32 0, i32 2
  %6 = ptrtoint ptr %swm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swm, align 8
  %dir = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %rb = getelementptr inbounds %struct.uniphier_aio_swmap, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rb, align 4
  %mul = shl i32 %11, 7
  %add = add i32 %mul, 81940
  %. = select i1 %cmp, i32 8, i32 16
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %.) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/uniphier/aio-core.c", i32 131, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @aio_chip_set_pll._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @aio_chip_set_pll._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/uniphier/aio-core.c", i32 143, i32 3}
!10 = !{ptr @aio_chip_set_pll._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @aio_chip_set_pll._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/uniphier/aio-core.c", i32 237, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @aio_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @aio_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/uniphier/aio-core.c", i32 377, i32 4}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @aio_port_set_rate._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @aio_port_set_rate._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @aio_port_set_rate._entry.12, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../sound/soc/uniphier/aio-core.c", i32 425, i32 4}
!24 = !{ptr @aio_port_set_rate._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/uniphier/aio-core.c", i32 466, i32 4}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @aio_port_set_fmt._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @aio_port_set_fmt._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @aio_port_set_fmt._entry.16, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../sound/soc/uniphier/aio-core.c", i32 487, i32 4}
!32 = !{ptr @aio_port_set_fmt._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/uniphier/aio-core.c", i32 533, i32 5}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @aio_port_set_clk._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @aio_port_set_clk._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/uniphier/aio-core.c", i32 538, i32 5}
!40 = !{ptr @aio_port_set_clk._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @aio_port_set_clk._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @aio_port_set_clk._entry.23, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../sound/soc/uniphier/aio-core.c", i32 564, i32 5}
!44 = !{ptr @aio_port_set_clk._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{i8 0, i8 2}
