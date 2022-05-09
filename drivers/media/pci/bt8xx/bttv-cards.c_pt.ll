; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/bttv-cards.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/bttv-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.CARD = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bttv_tvnorm = type { i32, ptr, i32, i16, i16, i16, i8, i8, i8, i32, i16, i16, i16, i8, i16, i32, [2 x i16], %struct.v4l2_cropcap }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_tea575x_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.bttv_core = type { %struct.v4l2_device, ptr, %struct.i2c_adapter, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bttv = type { %struct.bttv_core, i16, i8, ptr, i32, i32, i32, i32, i32, i8, %struct.bttv_pll_info, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, %struct.video_device, %struct.video_device, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, ptr, %struct.IR_i2c_init_data, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.v4l2_framebuffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bttv_tea575x_gpio, %struct.snd_tea575x, i32, i32, i32, [4 x i8], %struct.btcx_riscmem, ptr, %struct.list_head, %struct.list_head, %struct.bttv_buffer_set, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.bttv_suspend_state, i32, i32, i32, i32, i32, %struct.bttv_fh, %struct.work_struct, [2 x %struct.bttv_crop], i32, i32 }
%struct.bttv_pll_info = type { i32, i32, i32, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.100 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bttv_tea575x_gpio = type { i8, i8, i8, i8 }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btcx_riscmem = type { i32, ptr, ptr, i32 }
%struct.bttv_buffer_set = type { ptr, ptr, i32, i32 }
%struct.bttv_suspend_state = type { i32, i32, i32, i32, %struct.bttv_buffer_set, ptr }
%struct.bttv_fh = type { %struct.v4l2_fh, ptr, i32, i32, %struct.videobuf_queue, ptr, i32, i32, ptr, %struct.bttv_overlay, i32, %struct.videobuf_queue, %struct.bttv_vbi_fmt }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.bttv_overlay = type { i32, %struct.v4l2_rect, i32, ptr, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.bttv_vbi_fmt = type { %struct.v4l2_vbi_format, ptr, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.bttv_crop = type { %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.98, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.98 = type { ptr }
%struct.tvcard = type { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@no_overlay = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_str_triton1 = internal constant [13 x i8] c"bttv.triton1\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@triton1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_triton1 = internal constant %struct.kernel_param { ptr @__param_str_triton1, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @triton1 } }, section "__param", align 4
@__UNIQUE_ID_triton1type321 = internal constant [26 x i8] c"bttv.parmtype=triton1:int\00", section ".modinfo", align 1
@__param_str_vsfx = internal constant [10 x i8] c"bttv.vsfx\00", align 1
@vsfx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vsfx = internal constant %struct.kernel_param { ptr @__param_str_vsfx, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @vsfx } }, section "__param", align 4
@__UNIQUE_ID_vsfxtype322 = internal constant [23 x i8] c"bttv.parmtype=vsfx:int\00", section ".modinfo", align 1
@__param_str_no_overlay = internal constant [16 x i8] c"bttv.no_overlay\00", align 1
@__param_no_overlay = internal constant %struct.kernel_param { ptr @__param_str_no_overlay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @no_overlay } }, section "__param", align 4
@__UNIQUE_ID_no_overlaytype323 = internal constant [29 x i8] c"bttv.parmtype=no_overlay:int\00", section ".modinfo", align 1
@__param_str_latency = internal constant [13 x i8] c"bttv.latency\00", align 1
@latency = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_latency = internal constant %struct.kernel_param { ptr @__param_str_latency, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @latency } }, section "__param", align 4
@__UNIQUE_ID_latencytype324 = internal constant [26 x i8] c"bttv.parmtype=latency:int\00", section ".modinfo", align 1
@__param_str_gpiomask = internal constant [14 x i8] c"bttv.gpiomask\00", align 1
@gpiomask = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_gpiomask = internal constant %struct.kernel_param { ptr @__param_str_gpiomask, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @gpiomask } }, section "__param", align 4
@__UNIQUE_ID_gpiomasktype325 = internal constant [27 x i8] c"bttv.parmtype=gpiomask:int\00", section ".modinfo", align 1
@__param_str_audioall = internal constant [14 x i8] c"bttv.audioall\00", align 1
@audioall = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_audioall = internal constant %struct.kernel_param { ptr @__param_str_audioall, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @audioall } }, section "__param", align 4
@__UNIQUE_ID_audioalltype326 = internal constant [27 x i8] c"bttv.parmtype=audioall:int\00", section ".modinfo", align 1
@__param_str_autoload = internal constant [14 x i8] c"bttv.autoload\00", align 1
@autoload = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_autoload = internal constant %struct.kernel_param { ptr @__param_str_autoload, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @autoload } }, section "__param", align 4
@__UNIQUE_ID_autoloadtype327 = internal constant [27 x i8] c"bttv.parmtype=autoload:int\00", section ".modinfo", align 1
@__param_str_card = internal constant [10 x i8] c"bttv.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype328 = internal constant [32 x i8] c"bttv.parmtype=card:array of int\00", section ".modinfo", align 1
@__param_str_pll = internal constant [9 x i8] c"bttv.pll\00", align 1
@__param_arr_pll = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pll }, align 4
@__param_pll = internal constant %struct.kernel_param { ptr @__param_str_pll, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_pll } }, section "__param", align 4
@__UNIQUE_ID_plltype329 = internal constant [31 x i8] c"bttv.parmtype=pll:array of int\00", section ".modinfo", align 1
@__param_str_tuner = internal constant [11 x i8] c"bttv.tuner\00", align 1
@__param_arr_tuner = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @tuner }, align 4
@__param_tuner = internal constant %struct.kernel_param { ptr @__param_str_tuner, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_tuner } }, section "__param", align 4
@__UNIQUE_ID_tunertype330 = internal constant [33 x i8] c"bttv.parmtype=tuner:array of int\00", section ".modinfo", align 1
@__param_str_svhs = internal constant [10 x i8] c"bttv.svhs\00", align 1
@__param_arr_svhs = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @svhs }, align 4
@__param_svhs = internal constant %struct.kernel_param { ptr @__param_str_svhs, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_svhs } }, section "__param", align 4
@__UNIQUE_ID_svhstype331 = internal constant [32 x i8] c"bttv.parmtype=svhs:array of int\00", section ".modinfo", align 1
@__param_str_remote = internal constant [12 x i8] c"bttv.remote\00", align 1
@__param_arr_remote = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @remote }, align 4
@__param_remote = internal constant %struct.kernel_param { ptr @__param_str_remote, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_remote } }, section "__param", align 4
@__UNIQUE_ID_remotetype332 = internal constant [34 x i8] c"bttv.parmtype=remote:array of int\00", section ".modinfo", align 1
@__param_str_audiodev = internal constant [14 x i8] c"bttv.audiodev\00", align 1
@__param_arr_audiodev = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @audiodev }, align 4
@__param_audiodev = internal constant %struct.kernel_param { ptr @__param_str_audiodev, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_audiodev } }, section "__param", align 4
@__UNIQUE_ID_audiodevtype333 = internal constant [36 x i8] c"bttv.parmtype=audiodev:array of int\00", section ".modinfo", align 1
@__param_str_audiomux = internal constant [14 x i8] c"bttv.audiomux\00", align 1
@__param_arr_audiomux = internal constant %struct.kparam_array { i32 5, i32 4, ptr null, ptr @param_ops_int, ptr @audiomux }, align 4
@__param_audiomux = internal constant %struct.kernel_param { ptr @__param_str_audiomux, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_audiomux } }, section "__param", align 4
@__UNIQUE_ID_audiomuxtype334 = internal constant [36 x i8] c"bttv.parmtype=audiomux:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_triton1335 = internal constant [90 x i8] c"bttv.parm=triton1:set ETBF pci config bit [enable bug compatibility for triton1 + others]\00", section ".modinfo", align 1
@__UNIQUE_ID_vsfx336 = internal constant [77 x i8] c"bttv.parm=vsfx:set VSFX pci config bit [yet another chipset flaw workaround]\00", section ".modinfo", align 1
@__UNIQUE_ID_latency337 = internal constant [36 x i8] c"bttv.parm=latency:pci latency timer\00", section ".modinfo", align 1
@__UNIQUE_ID_card338 = internal constant [75 x i8] c"bttv.parm=card:specify TV/grabber card model, see CARDLIST file for a list\00", section ".modinfo", align 1
@__UNIQUE_ID_pll339 = internal constant [82 x i8] c"bttv.parm=pll:specify installed crystal (0=none, 28=28 MHz, 35=35 MHz, 14=14 MHz)\00", section ".modinfo", align 1
@__UNIQUE_ID_tuner340 = internal constant [45 x i8] c"bttv.parm=tuner:specify installed tuner type\00", section ".modinfo", align 1
@__UNIQUE_ID_autoload341 = internal constant [62 x i8] c"bttv.parm=autoload:obsolete option, please do not use anymore\00", section ".modinfo", align 1
@__UNIQUE_ID_audiodev342 = internal constant [130 x i8] c"bttv.parm=audiodev:specify audio device:\0A\09\09-1 = no audio\0A\09\09 0 = autodetect (default)\0A\09\09 1 = msp3400\0A\09\09 2 = tda7432\0A\09\09 3 = tvaudio\00", section ".modinfo", align 1
@__UNIQUE_ID_saa6588343 = internal constant [101 x i8] c"bttv.parm=saa6588:if 1, then load the saa6588 RDS module, default (0) is to use the card definition.\00", section ".modinfo", align 1
@__UNIQUE_ID_no_overlay344 = internal constant [139 x i8] c"bttv.parm=no_overlay:allow override overlay default (0 disables, 1 enables) [some VIA/SIS chipsets are known to have problem with overlay]\00", section ".modinfo", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" *** UNKNOWN/GENERIC *** \00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIRO PCTV\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hauppauge (bt848)\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"STB, Gateway P/N 6000699 (bt848)\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Intel Create and Share PCI/ Smart Video Recorder III\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Diamond DTV2000\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AVerMedia TVPhone\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MATRIX-Vision MV-Delta\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Lifeview FlyVideo II (Bt848) LR26 / MAXI TV Video PCI2 LR26\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IMS/IXmicro TurboTV\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hauppauge (bt878)\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIRO PCTV pro\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ADS Technologies Channel Surfer TV (bt848)\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AVerMedia TVCapture 98\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Aimslab Video Highway Xtreme (VHX)\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Zoltrix TV-Max\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Prolink Pixelview PlayTV (bt878)\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Leadtek WinView 601\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AVEC Intercapture\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Lifeview FlyVideo II EZ /FlyKit LR38 Bt848 (capture only)\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CEI Raffles Card\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Lifeview FlyVideo 98/ Lucky Star Image World ConferenceTV LR50\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Askey CPH050/ Phoebe Tv Master + FM\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Modular Technology MM201/MM202/MM205/MM210/MM215 PCTV, bt878\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Askey CPH05X/06X (bt878) [many vendors]\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Terratec TerraTV+ Version 1.0 (Bt848)/ Terra TValue Version 1.0/ Vobis TV-Boostar\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hauppauge WinCam newer (bt878)\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Lifeview FlyVideo 98/ MAXI TV Video PCI2 LR50\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Terratec TerraTV+ Version 1.1 (bt878)\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Imagenation PXC200\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Lifeview FlyVideo 98 LR50\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Formac iProTV, Formac ProTV I (bt848)\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Terratec TerraTValue Version Bt878\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Leadtek WinFast 2000/ WinFast 2000 XP\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Lifeview FlyVideo 98 LR50 / Chronos Video Shuttle II\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Lifeview FlyVideo 98FM LR50 / Typhoon TView TV/FM Tuner\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Prolink PixelView PlayTV pro\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Askey CPH06X TView99\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Pinnacle PCTV Studio/Rave\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"STB TV PCI FM, Gateway P/N 6000704 (bt878), 3Dfx VoodooTV 100\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AVerMedia TVPhone 98\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ProVideo PV951\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Little OnAir TV\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sigma TVII-FM\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MATRIX-Vision MV-Delta 2\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Zoltrix Genie TV/FM\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Terratec TV/Radio+\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Askey CPH03x/ Dynalink Magic TView\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IODATA GV-BCTV3/PCI\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Prolink PV-BT878P+4E / PixelView PlayTV PAK / Lenco MXTV-9578 CP\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Eagle Wireless Capricorn2 (bt878A)\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pinnacle PCTV Studio Pro\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Typhoon TView RDS + FM Stereo / KNC1 TV Station RDS\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Lifeview FlyVideo 2000 /FlyVideo A2/ Lifetec LT 9415 TV [LR90]\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Askey CPH031/ BESTBUY Easy TV\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Lifeview FlyVideo 98FM LR50\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GrandTec 'Grand Video Capture' (Bt848)\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Askey CPH060/ Phoebe TV Master Only (No FM)\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Askey CPH03x TV Capturer\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Modular Technology MM100PCTV\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AG Electronics GMV1\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Askey CPH061/ BESTBUY Easy TV (bt878)\00", [58 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATI TV-Wonder\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ATI TV-Wonder VE\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Lifeview FlyVideo 2000S LR90\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Terratec TValueRadio\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IODATA GV-BCTV4/PCI\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"3Dfx VoodooTV FM (Euro)\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Active Imaging AIMMS\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Prolink Pixelview PV-BT878P+ (Rev.4C,8E)\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Lifeview FlyVideo 98EZ (capture only) LR51\00", [53 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Prolink Pixelview PV-BT878P+9B (PlayTV Pro rev.9B FM+NICAM)\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sensoray 311/611\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RemoteVision MX (RV605)\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Powercolor MTV878/ MTV878R/ MTV878F\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Canopus WinDVR PCI (COMPAQ Presario 3524JP, 5112JP)\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GrandTec Multi Capture Card (Bt878)\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Jetway TV/Capture JW-TV878-FBK, Kworld KW-TV878RF\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP Design TCVIDEO\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Hauppauge WinTV PVR\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IODATA GV-BCTV5/PCI\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Osprey 100/150 (878)\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Osprey 100/150 (848)\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Osprey 101 (848)\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Osprey 101/151\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Osprey 101/151 w/ svid\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Osprey 200/201/250/251\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Osprey 200/250\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Osprey 210/220/230\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey 500\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey 540\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Osprey 2000\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IDS Eagle\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pinnacle PCTV Sat\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Formac ProTV II (bt878)\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MachTV\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Euresys Picolo\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ProVideo PV150\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AD-TVK503\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hercules Smart TV Stereo\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pace TV & Radio Card\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IVC-200\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Grand X-Guard / Trust 814PCI\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Nebula Electronics DigiTV\00", [38 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ProVideo PV143\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PHYTEC VD-009-X1 VD-011 MiniDIN (bt878)\00", [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PHYTEC VD-009-X1 VD-011 Combi (bt878)\00", [58 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PHYTEC VD-009 MiniDIN (bt878)\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PHYTEC VD-009 Combi (bt878)\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IVC-100\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IVC-120G\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcHDTV HD-2000 TV\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Twinhan DST + clones\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Winfast VC100\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Teppro TEV-560/InterVision IV-560\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SIMUS GVC1100\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NGS NGSTV+\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LMLBT4\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tekram M205 PRO\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Conceptronic CONTVFMi\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Euresys Picolo Tetra\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Spirit TV Tuner\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AVerMedia AVerTV DVB-T 771\00", [37 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AverMedia AverTV DVB-T 761\00", [37 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MATRIX Vision Sigma-SQ\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MATRIX Vision Sigma-SLC\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"APAC Viewcomp 878(AMAX)\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DViCO FusionHDTV DVB-T Lite\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"V-Gear MyVCD\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Super TV Tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Tibet Systems 'Progress DVR' CS16\00", [62 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Kodicom 4400R (master)\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Kodicom 4400R (slave)\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Adlink RTV24\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DViCO FusionHDTV 5 Lite\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Acorp Y878F\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Conceptronic CTVFMi v2\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Prolink Pixelview PV-BT878P+ (Rev.2E)\00", [58 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Prolink PixelView PlayTV MPEG2 PV-M4900\00", [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey 440\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Asound Skyeye PCTV\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sabrent TV-FM (bttv version)\00", [35 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hauppauge ImpactVCB (bt878)\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MagicTV\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SSAI Security Video Interface\00", [34 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SSAI Ultrasound Video Interface\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VoodooTV 200 (USA)\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DViCO FusionHDTV 2\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Typhoon TV-Tuner PCI (50684)\00", [35 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Geovision GV-600\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Kozumi KTV-01C\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Encore ENL TV-FM-2\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHYTEC VD-012 (bt878)\00", [42 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PHYTEC VD-012-X1 (bt878)\00", [39 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PHYTEC VD-012-X2 (bt878)\00", [39 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IVCE-8784\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Geovision GV-800(S) (master)\00", [35 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Geovision GV-800(S) (slave)\00", [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ProVideo PV183\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Tongwei Video Technology TD-3116\00", [63 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Aposonic W-DVR\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Adlink MPG24\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bt848 Capture 14MHz\00", [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CyberVision CV06 (SV)\00", [42 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Kworld V-Stream Xpert TV PVR878\00", [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCI-8604PW\00", [21 x i8] zeroinitializer }, align 32
@bttv_tvcards = dso_local global { [167 x { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 }], [2360 x i8] } { [167 x { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 }] [{ ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 -1, i8 -1, i8 4, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.1, ptr null, ptr null, ptr null, i32 94, i32 15, [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 10, i32 0, i32 -1, i8 -1, i8 4, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.2, ptr null, ptr null, ptr null, i32 94, i32 7, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 4, i32 0, i32 -1, i8 -1, i8 4, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.3, ptr null, ptr null, ptr null, i32 94, i32 7, [4 x i32] [i32 4, i32 0, i32 2, i32 3], i32 1, i32 0, i32 2, i8 -1, i8 3, i8 38, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.4, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.5, ptr null, ptr null, ptr null, i32 30, i32 3, [4 x i32] [i32 0, i32 1, i32 0, i32 1], i32 3, i32 0, i32 -1, i8 -1, i8 4, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.6, ptr null, ptr @avermedia_tvphone_audio, ptr null, i32 94, i32 15, [4 x i32] [i32 12, i32 4, i32 8, i32 4], i32 0, i32 0, i32 -1, i8 -1, i8 3, i8 48, i8 16 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.7, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 5, i8 48, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.8, ptr null, ptr null, ptr null, i32 94, i32 3072, [4 x i32] [i32 0, i32 3072, i32 2048, i32 1024], i32 3072, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.9, ptr null, ptr null, ptr null, i32 94, i32 3, [4 x i32] [i32 1, i32 1, i32 2, i32 3], i32 0, i32 0, i32 0, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.10, ptr null, ptr null, ptr null, i32 82, i32 15, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 4, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.11, ptr null, ptr null, ptr null, i32 94, i32 196943, [4 x i32] [i32 131073, i32 65537, i32 0, i32 0], i32 10, i32 0, i32 -1, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.12, ptr null, ptr null, ptr null, i32 94, i32 15, [4 x i32] [i32 13, i32 14, i32 11, i32 7], i32 0, i32 0, i32 -1, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.13, ptr null, ptr @avermedia_tv_stereo_audio, ptr null, i32 94, i32 15, [4 x i32] [i32 13, i32 14, i32 11, i32 7], i32 0, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 -126 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.14, ptr null, ptr null, ptr null, i32 94, i32 7, [4 x i32] [i32 0, i32 2, i32 1, i32 3], i32 4, i32 0, i32 -1, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.15, ptr null, ptr null, ptr null, i32 94, i32 15, [4 x i32] [i32 0, i32 0, i32 1, i32 0], i32 10, i32 0, i32 -1, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.16, ptr null, ptr null, ptr null, i32 94, i32 130560, [4 x i32] [i32 7680, i32 0, i32 98304, i32 81920], i32 8192, i32 0, i32 -1, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.17, ptr @winview_volume, ptr null, ptr null, i32 94, i32 8585464, [4 x i32] [i32 5218311, i32 13606919, i32 13606919, i32 13606919], i32 13606919, i32 0, i32 -1, i8 -1, i8 3, i8 32, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.18, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], i32 0, i32 0, i32 -1, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.19, ptr null, ptr null, ptr null, i32 94, i32 9305856, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -14, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.20, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 -1, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.21, ptr null, ptr null, ptr null, i32 94, i32 6144, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6144, i32 0, i32 1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.22, ptr null, ptr null, ptr null, i32 94, i32 3072, [4 x i32] [i32 0, i32 1, i32 2048, i32 1024], i32 3072, i32 0, i32 -1, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.23, ptr null, ptr null, ptr null, i32 14, i32 7, [4 x i32] zeroinitializer, i32 0, i32 0, i32 11, i8 -1, i8 3, i8 -10, i8 4 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.24, ptr null, ptr null, ptr null, i32 94, i32 3584, [4 x i32] [i32 1024, i32 1024, i32 1024, i32 1024], i32 3072, i32 0, i32 -1, i8 -1, i8 3, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.25, ptr null, ptr @terratv_audio, ptr null, i32 94, i32 2035711, [4 x i32] [i32 131072, i32 196608, i32 65536, i32 0], i32 262144, i32 0, i32 5, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.26, ptr null, ptr null, ptr null, i32 82, i32 7, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 4, i32 0, i32 -1, i8 -1, i8 4, i8 48, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.27, ptr null, ptr null, ptr null, i32 94, i32 6144, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6144, i32 0, i32 3, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.28, ptr null, ptr @terratv_audio, ptr null, i32 94, i32 2035711, [4 x i32] [i32 131072, i32 196608, i32 65536, i32 0], i32 262144, i32 0, i32 5, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.29, ptr null, ptr null, ptr @PXC200_muxsel, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 5, i8 16, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.30, ptr null, ptr null, ptr null, i32 94, i32 6144, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6144, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.31, ptr null, ptr null, ptr null, i32 94, i32 1, [4 x i32] [i32 1, i32 0, i32 0, i32 0], i32 0, i32 0, i32 5, i8 -1, i8 4, i8 52, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.4, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.32, ptr null, ptr null, ptr null, i32 94, i32 16776960, [4 x i32] [i32 1280, i32 0, i32 768, i32 2304], i32 2304, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.33, ptr null, ptr @winfast2000_audio, ptr null, i32 94, i32 11743232, [4 x i32] [i32 1187840, i32 4096, i32 0, i32 6422528], i32 8388608, i32 0, i32 5, i8 -1, i8 4, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.34, ptr null, ptr null, ptr null, i32 94, i32 6144, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6144, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.35, ptr null, ptr null, ptr null, i32 94, i32 6144, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6144, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.36, ptr null, ptr null, ptr null, i32 94, i32 255, [4 x i32] [i32 33, i32 32, i32 36, i32 44], i32 41, i32 0, i32 -1, i8 -1, i8 3, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.37, ptr null, ptr null, ptr null, i32 30, i32 5578240, [4 x i32] [i32 5575680, i32 5575168, i32 0, i32 0], i32 5577728, i32 0, i32 1, i8 -1, i8 4, i8 36, i8 16 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.38, ptr null, ptr null, ptr null, i32 94, i32 196623, [4 x i32] [i32 2, i32 851969, i32 0, i32 0], i32 1, i32 0, i32 -1, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.39, ptr null, ptr null, ptr null, i32 94, i32 7, [4 x i32] [i32 4, i32 0, i32 2, i32 3], i32 1, i32 0, i32 2, i8 -1, i8 3, i8 38, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.40, ptr null, ptr @avermedia_tvphone_audio, ptr null, i32 94, i32 15, [4 x i32] [i32 13, i32 4, i32 11, i32 7], i32 0, i32 0, i32 -1, i8 -1, i8 3, i8 36, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.41, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 1, i8 -1, i8 3, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.42, ptr null, ptr null, ptr null, i32 94, i32 57355, [4 x i32] [i32 16752630, i32 16752630, i32 16719863, i32 0], i32 16728060, i32 0, i32 -1, i8 -1, i8 3, i8 34, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.43, ptr null, ptr null, ptr null, i32 94, i32 3, [4 x i32] [i32 1, i32 1, i32 0, i32 2], i32 3, i32 0, i32 -1, i8 -1, i8 2, i8 -14, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.44, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 5, i8 54, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.45, ptr null, ptr null, ptr null, i32 94, i32 12382271, [4 x i32] [i32 12353599, i32 12357695, i32 12365887, i32 0], i32 12365887, i32 0, i32 21, i8 -1, i8 3, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.46, ptr null, ptr null, ptr null, i32 94, i32 458752, [4 x i32] [i32 131072, i32 196608, i32 65536, i32 0], i32 262144, i32 0, i32 1, i8 -1, i8 3, i8 42, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.47, ptr null, ptr null, ptr null, i32 94, i32 15, [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 1, i32 0, i32 -1, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.48, ptr null, ptr @gvbctv3pci_audio, ptr null, i32 14, i32 69376, [4 x i32] [i32 65536, i32 0, i32 65536, i32 0], i32 0, i32 0, i32 15, i8 -1, i8 3, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.49, ptr null, ptr null, ptr null, i32 94, i32 11141120, [4 x i32] [i32 131072, i32 0, i32 524288, i32 524288], i32 688128, i32 0, i32 1, i8 -1, i8 5, i8 54, i8 20 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.50, ptr null, ptr null, ptr null, i32 82, i32 7, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 4, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.51, ptr null, ptr null, ptr null, i32 94, i32 196623, [4 x i32] [i32 1, i32 851969, i32 0, i32 0], i32 10, i32 0, i32 -1, i8 -1, i8 4, i8 52, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.52, ptr null, ptr null, ptr null, i32 94, i32 28, [4 x i32] [i32 0, i32 0, i32 16, i32 8], i32 4, i32 0, i32 5, i8 -1, i8 4, i8 36, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.53, ptr null, ptr null, ptr null, i32 94, i32 6368, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6368, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.54, ptr null, ptr null, ptr null, i32 30, i32 15, [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 10, i32 0, i32 0, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.55, ptr null, ptr null, ptr null, i32 94, i32 6144, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6144, i32 0, i32 5, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.56, ptr null, ptr null, ptr null, i32 7, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 26, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.57, ptr null, ptr null, ptr null, i32 94, i32 3584, [4 x i32] [i32 1024, i32 1024, i32 1024, i32 1024], i32 2048, i32 0, i32 8, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.58, ptr null, ptr null, ptr null, i32 30, i32 196623, [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 1, i32 0, i32 0, i8 -1, i8 4, i8 36, i8 16 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.59, ptr null, ptr null, ptr null, i32 94, i32 11, [4 x i32] [i32 2, i32 0, i32 0, i32 1], i32 8, i32 0, i32 0, i8 -1, i8 2, i8 -8, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.60, ptr null, ptr null, ptr null, i32 10, i32 15, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 22, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.61, ptr null, ptr null, ptr null, i32 30, i32 255, [4 x i32] [i32 1, i32 0, i32 4, i32 4], i32 9, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.62, ptr null, ptr null, ptr null, i32 30, i32 61503, [4 x i32] [i32 49150, i32 0, i32 49151, i32 0], i32 49150, i32 0, i32 19, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.63, ptr null, ptr null, ptr null, i32 78, i32 1, [4 x i32] [i32 0, i32 0, i32 1, i32 0], i32 0, i32 0, i32 19, i8 -1, i8 2, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.64, ptr null, ptr @fv2000s_audio, ptr null, i32 78, i32 6368, [4 x i32] [i32 0, i32 2048, i32 4096, i32 4096], i32 6144, i32 0, i32 5, i8 -1, i8 3, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.65, ptr null, ptr null, ptr null, i32 94, i32 16776960, [4 x i32] [i32 1280, i32 1280, i32 768, i32 2304], i32 2304, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.66, ptr null, ptr @gvbctv3pci_audio, ptr null, i32 14, i32 69376, [4 x i32] [i32 65536, i32 0, i32 65536, i32 0], i32 0, i32 0, i32 31, i8 -1, i8 3, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.67, ptr null, ptr null, ptr null, i32 78, i32 5212672, [4 x i32] [i32 9732095, i32 9994239, i32 9732095, i32 9732095], i32 9732095, i32 0, i32 33, i8 -1, i8 4, i8 -12, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.68, ptr null, ptr null, ptr null, i32 2, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 1, i8 4, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.69, ptr null, ptr null, ptr null, i32 94, i32 15, [4 x i32] [i32 0, i32 0, i32 11, i32 7], i32 13, i32 0, i32 25, i8 -1, i8 3, i8 36, i8 16 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.70, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.71, ptr null, ptr @pvbt878p9b_audio, ptr null, i32 94, i32 63, [4 x i32] [i32 1, i32 0, i32 3, i32 3], i32 9, i32 0, i32 5, i8 -1, i8 4, i8 38, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.72, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 5, i8 64, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.73, ptr null, ptr null, ptr @rv605_muxsel, i32 -1, i32 0, [4 x i32] zeroinitializer, i32 0, i32 2047, i32 4, i8 -1, i8 16, i8 -14, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.74, ptr null, ptr null, ptr null, i32 22, i32 1867791, [4 x i32] [i32 0, i32 1, i32 2, i32 2], i32 4, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.75, ptr null, ptr @windvr_audio, ptr null, i32 94, i32 1310727, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 4, i32 0, i32 2, i8 -1, i8 3, i8 32, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.76, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.77, ptr null, ptr null, ptr null, i32 94, i32 7, [4 x i32] [i32 0, i32 0, i32 4, i32 4], i32 4, i32 0, i32 5, i8 -1, i8 4, i8 38, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.78, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 -1, i8 -1, i8 4, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.79, ptr null, ptr null, ptr null, i32 82, i32 7, [4 x i32] [i32 7, i32 0, i32 0, i32 0], i32 0, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.80, ptr null, ptr @gvbctv5pci_audio, ptr null, i32 30, i32 987008, [4 x i32] [i32 196608, i32 65536, i32 0, i32 0], i32 131072, i32 0, i32 17, i8 -1, i8 3, i8 38, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.81, ptr null, ptr null, ptr null, i32 75, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 55, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.82, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 3, i8 39, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.83, ptr null, ptr null, ptr null, i32 7, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.84, ptr null, ptr null, ptr null, i32 0, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 1, i8 -9, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.85, ptr null, ptr null, ptr null, i32 4, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.86, ptr null, ptr null, ptr null, i32 0, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 1, i8 -9, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.87, ptr null, ptr null, ptr null, i32 4, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.88, ptr null, ptr null, ptr null, i32 14, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.89, ptr null, ptr null, ptr null, i32 14, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.90, ptr null, ptr null, ptr null, i32 0, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 7, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.91, ptr null, ptr null, ptr null, i32 14, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.92, ptr null, ptr null, ptr @eagle_muxsel, i32 170, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.93, ptr null, ptr null, ptr null, i32 7, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 34 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.94, ptr null, ptr null, ptr null, i32 94, i32 2, [4 x i32] [i32 2, i32 2, i32 0, i32 0], i32 0, i32 0, i32 5, i8 -1, i8 4, i8 52, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.95, ptr null, ptr null, ptr null, i32 94, i32 7, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 4, i32 0, i32 5, i8 -1, i8 3, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.96, ptr null, ptr null, ptr null, i32 18, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 3, i8 39, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.97, ptr null, ptr null, ptr null, i32 14, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.98, ptr null, ptr @adtvk503_audio, ptr null, i32 30, i32 1998855, [4 x i32] [i32 8, i32 15, i32 10, i32 8], i32 15, i32 0, i32 2, i8 -1, i8 4, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.99, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 5, i8 -1, i8 4, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.100, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 1, i8 -1, i8 4, i8 37, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.101, ptr null, ptr null, ptr null, i32 2, i32 223, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 1, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.102, ptr null, ptr null, ptr @xguard_muxsel, i32 5636010, i32 0, [4 x i32] zeroinitializer, i32 0, i32 255, i32 4, i8 -1, i8 16, i8 -9, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.103, ptr null, ptr null, ptr null, i32 30, i32 27, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 1, i8 -9, i8 50 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.104, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.105, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 52, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.106, ptr null, ptr null, ptr null, i32 94, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 52, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.107, ptr null, ptr null, ptr @phytec_muxsel, i32 130986, i32 0, [4 x i32] zeroinitializer, i32 0, i32 3, i32 4, i8 -1, i8 10, i8 -108, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.108, ptr null, ptr null, ptr @phytec_muxsel, i32 393130, i32 0, [4 x i32] zeroinitializer, i32 0, i32 3, i32 4, i8 -1, i8 10, i8 -108, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.109, ptr null, ptr null, ptr null, i32 30, i32 223, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.110, ptr null, ptr null, ptr @ivc120_muxsel, i32 0, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 16, i8 -9, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.111, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 42, i8 -1, i8 4, i8 32, i8 32 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.112, ptr null, ptr null, ptr null, i32 0, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 0, i8 3, i8 96 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.113, ptr null, ptr null, ptr null, i32 215, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 3, i8 23, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.114, ptr null, ptr null, ptr null, i32 94, i32 3, [4 x i32] [i32 1, i32 1, i32 1, i32 1], i32 0, i32 0, i32 5, i8 -1, i8 3, i8 40, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.115, ptr null, ptr null, ptr @gvc1100_muxsel, i32 170, i32 63, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.116, ptr null, ptr null, ptr null, i32 14, i32 32775, [4 x i32] zeroinitializer, i32 3, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 16 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.117, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -13, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.118, ptr null, ptr null, ptr null, i32 30, i32 104, [4 x i32] [i32 104, i32 104, i32 97, i32 97], i32 0, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.119, ptr null, ptr null, ptr null, i32 94, i32 32775, [4 x i32] [i32 0, i32 1, i32 2, i32 2], i32 3, i32 0, i32 5, i8 -1, i8 3, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.120, ptr null, ptr null, ptr @picolo_tetra_muxsel, i32 170, i32 0, [4 x i32] zeroinitializer, i32 0, i32 3932160, i32 4, i8 -1, i8 4, i8 -9, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.121, ptr null, ptr null, ptr null, i32 22, i32 15, [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, i8 -1, i8 3, i8 34, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.122, ptr null, ptr null, ptr null, i32 15, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 50 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.123, ptr null, ptr null, ptr null, i32 39, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 23, i8 50 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.124, ptr null, ptr null, ptr @sigmaSQ_muxsel, i32 -21846, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 16, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.125, ptr null, ptr null, ptr @sigmaSLC_muxsel, i32 170, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.126, ptr null, ptr null, ptr null, i32 94, i32 255, [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 10, i32 0, i32 5, i8 -1, i8 2, i8 -12, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.127, ptr null, ptr null, ptr null, i32 0, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 0, i8 7, i8 96 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.128, ptr null, ptr null, ptr null, i32 30, i32 63, [4 x i32] [i32 49, i32 49, i32 49, i32 49], i32 49, i32 0, i32 17, i8 -1, i8 3, i8 38, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.129, ptr null, ptr null, ptr null, i32 30, i32 32775, [4 x i32] [i32 0, i32 1, i32 0, i32 0], i32 0, i32 0, i32 2, i8 -1, i8 4, i8 32, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.130, ptr null, ptr null, ptr @tibetCS16_muxsel, i32 -1431655766, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 16, i8 -9, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.131, ptr null, ptr null, ptr @kodicom4400r_muxsel, i32 -1, i32 1023, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 16, i8 -9, i8 2 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.132, ptr null, ptr null, ptr @kodicom4400r_muxsel, i32 -1, i32 65536, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 16, i8 -9, i8 2 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.133, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 -1, i8 -1, i8 4, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.134, ptr null, ptr null, ptr null, i32 30, i32 14680071, [4 x i32] [i32 4194309, i32 0, i32 1, i32 0], i32 12582919, i32 0, i32 64, i8 -1, i8 3, i8 35, i8 32 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.135, ptr null, ptr null, ptr null, i32 94, i32 130560, [4 x i32] [i32 7680, i32 0, i32 98304, i32 81920], i32 8192, i32 0, i32 65, i8 96, i8 3, i8 36, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.136, ptr null, ptr null, ptr null, i32 94, i32 1835015, [4 x i32] [i32 0, i32 1, i32 2, i32 2], i32 3, i32 0, i32 61, i8 -1, i8 3, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.137, ptr null, ptr null, ptr null, i32 94, i32 130560, [4 x i32] [i32 1024, i32 66560, i32 17408, i32 524288], i32 74752, i32 0, i32 28, i8 -1, i8 5, i8 54, i8 20 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.138, ptr null, ptr null, ptr null, i32 94, i32 63, [4 x i32] [i32 33, i32 32, i32 36, i32 44], i32 41, i32 0, i32 59, i8 -1, i8 3, i8 38, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.139, ptr null, ptr null, ptr null, i32 78, i32 771, [4 x i32] [i32 0, i32 0, i32 0, i32 256], i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -9, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.140, ptr null, ptr null, ptr null, i32 94, i32 15, [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 1, i32 0, i32 2, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.141, ptr null, ptr null, ptr null, i32 94, i32 1081351, [4 x i32] [i32 100000, i32 100002, i32 100002, i32 100000], i32 0, i32 0, i32 69, i8 -1, i8 3, i8 39, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.142, ptr null, ptr null, ptr null, i32 180, i32 15, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -13, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.143, ptr null, ptr null, ptr null, i32 94, i32 7, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 4, i32 0, i32 20, i8 -1, i8 3, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.144, ptr null, ptr null, ptr null, i32 228, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -16, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.145, ptr null, ptr null, ptr null, i32 210, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 16, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.146, ptr null, ptr null, ptr null, i32 78, i32 5212672, [4 x i32] [i32 9732095, i32 9994239, i32 9732095, i32 9732095], i32 9732095, i32 0, i32 33, i8 -1, i8 4, i8 -12, i8 8 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.147, ptr null, ptr null, ptr null, i32 30, i32 14680071, [4 x i32] [i32 4194309, i32 0, i32 1, i32 0], i32 12582919, i32 0, i32 42, i8 -1, i8 3, i8 35, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.148, ptr null, ptr null, ptr null, i32 94, i32 196943, [4 x i32] [i32 131073, i32 65537, i32 0, i32 0], i32 10, i32 0, i32 1, i8 -1, i8 3, i8 36, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.149, ptr null, ptr null, ptr @geovision_muxsel, i32 -1431655766, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 16, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.150, ptr null, ptr null, ptr null, i32 94, i32 32775, [4 x i32] [i32 0, i32 1, i32 2, i32 2], i32 3, i32 0, i32 38, i8 -1, i8 3, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.151, ptr null, ptr null, ptr null, i32 62, i32 393280, [4 x i32] [i32 393216, i32 393216, i32 131072, i32 131072], i32 0, i32 0, i32 77, i8 -1, i8 3, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.152, ptr null, ptr null, ptr null, i32 120, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.153, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 52, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.154, ptr null, ptr null, ptr null, i32 27, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 52, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.155, ptr null, ptr null, ptr null, i32 2, i32 223, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 1, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.156, ptr null, ptr null, ptr @gv800s_muxsel, i32 170, i32 987263, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -9, i8 2 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.157, ptr null, ptr null, ptr @gv800s_muxsel, i32 170, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -9, i8 2 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.158, ptr null, ptr null, ptr null, i32 14, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 2, i8 -10, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.159, ptr null, ptr null, ptr @td3116_muxsel, i32 -1431655766, i32 786687, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 0, i8 16, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.160, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 0, i8 4, i8 -16, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.161, ptr null, ptr null, ptr null, i32 170, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 -1, i8 -1, i8 1, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.162, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 0, i8 4, i8 44, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.163, ptr null, ptr null, ptr null, i32 30, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 -1, i8 4, i8 -12, i8 0 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.164, ptr null, ptr null, ptr null, i32 94, i32 1835015, [4 x i32] [i32 0, i32 1, i32 2, i32 2], i32 3, i32 0, i32 61, i8 -1, i8 3, i8 36, i8 24 }, { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 } { ptr @.str.165, ptr null, ptr null, ptr null, i32 14, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0, i32 4, i8 0, i8 2, i8 -5, i8 0 }], [2360 x i8] zeroinitializer }, align 32
@cards = internal constant { [160 x %struct.CARD], [480 x i8] } { [160 x %struct.CARD] [%struct.CARD { i32 334168176, i32 10, ptr @.str.250 }, %struct.CARD { i32 956301424, i32 10, ptr @.str.251 }, %struct.CARD { i32 1157628016, i32 80, ptr @.str.252 }, %struct.CARD { i32 -16777104, i32 82, ptr @.str.253 }, %struct.CARD { i32 -16711568, i32 88, ptr @.str.254 }, %struct.CARD { i32 -16646032, i32 90, ptr @.str.255 }, %struct.CARD { i32 -16580496, i32 92, ptr @.str.256 }, %struct.CARD { i32 -16514960, i32 91, ptr @.str.257 }, %struct.CARD { i32 -16318352, i32 140, ptr @.str.258 }, %struct.CARD { i32 69634, i32 63, ptr @.str.259 }, %struct.CARD { i32 200706, i32 64, ptr @.str.260 }, %struct.CARD { i32 1711673469, i32 34, ptr @.str.261 }, %struct.CARD { i32 1711739005, i32 114, ptr @.str.262 }, %struct.CARD { i32 1711870077, i32 34, ptr @.str.263 }, %struct.CARD { i32 641077428, i32 40, ptr @.str.264 }, %struct.CARD { i32 642060468, i32 40, ptr @.str.264 }, %struct.CARD { i32 1075843324, i32 49, ptr @.str.265 }, %struct.CARD { i32 1078989052, i32 67, ptr @.str.266 }, %struct.CARD { i32 1081086204, i32 81, ptr @.str.267 }, %struct.CARD { i32 -803729156, i32 81, ptr @.str.267 }, %struct.CARD { i32 1184189, i32 39, ptr @.str.268 }, %struct.CARD { i32 302038289, i32 39, ptr @.str.269 }, %struct.CARD { i32 -16728815, i32 39, ptr @.str.269 }, %struct.CARD { i32 -15593027, i32 39, ptr @.str.268 }, %struct.CARD { i32 805311002, i32 147, ptr @.str.270 }, %struct.CARD { i32 641142964, i32 68, ptr @.str.271 }, %struct.CARD { i32 811602458, i32 40, ptr @.str.272 }, %struct.CARD { i32 805311567, i32 38, ptr @.str.273 }, %struct.CARD { i32 -1610279857, i32 38, ptr @.str.274 }, %struct.CARD { i32 805442639, i32 24, ptr @.str.275 }, %struct.CARD { i32 805639247, i32 24, ptr @.str.276 }, %struct.CARD { i32 1342182479, i32 24, ptr @.str.277 }, %struct.CARD { i32 805311743, i32 24, ptr @.str.278 }, %struct.CARD { i32 805442815, i32 22, ptr @.str.279 }, %struct.CARD { i32 70753, i32 41, ptr @.str.280 }, %struct.CARD { i32 136289, i32 13, ptr @.str.281 }, %struct.CARD { i32 201825, i32 41, ptr @.str.280 }, %struct.CARD { i32 267361, i32 13, ptr @.str.13 }, %struct.CARD { i32 50336865, i32 13, ptr @.str.282 }, %struct.CARD { i32 286725435, i32 33, ptr @.str.283 }, %struct.CARD { i32 286790971, i32 33, ptr @.str.284 }, %struct.CARD { i32 286856507, i32 33, ptr @.str.285 }, %struct.CARD { i32 286922043, i32 33, ptr @.str.286 }, %struct.CARD { i32 287511867, i32 47, ptr @.str.287 }, %struct.CARD { i32 287774011, i32 28, ptr @.str.288 }, %struct.CARD { i32 288625979, i32 33, ptr @.str.289 }, %struct.CARD { i32 288691515, i32 66, ptr @.str.290 }, %struct.CARD { i32 1343755579, i32 33, ptr @.str.291 }, %struct.CARD { i32 -12905157, i32 66, ptr @.str.290 }, %struct.CARD { i32 1073747376, i32 46, ptr @.str.292 }, %struct.CARD { i32 1074402736, i32 46, ptr @.str.292 }, %struct.CARD { i32 1074599344, i32 46, ptr @.str.293 }, %struct.CARD { i32 1074795952, i32 46, ptr @.str.293 }, %struct.CARD { i32 1075189168, i32 46, ptr @.str.293 }, %struct.CARD { i32 338733568, i32 105, ptr @.str.294 }, %struct.CARD { i32 338799104, i32 105, ptr @.str.295 }, %struct.CARD { i32 338864640, i32 105, ptr @.str.296 }, %struct.CARD { i32 338930176, i32 105, ptr @.str.297 }, %struct.CARD { i32 338930179, i32 105, ptr @.str.298 }, %struct.CARD { i32 341879296, i32 98, ptr @.str.299 }, %struct.CARD { i32 341944833, i32 98, ptr @.str.300 }, %struct.CARD { i32 342010370, i32 98, ptr @.str.301 }, %struct.CARD { i32 342075907, i32 98, ptr @.str.302 }, %struct.CARD { i32 342141444, i32 98, ptr @.str.303 }, %struct.CARD { i32 342206981, i32 98, ptr @.str.304 }, %struct.CARD { i32 342272518, i32 98, ptr @.str.305 }, %struct.CARD { i32 342338055, i32 98, ptr @.str.306 }, %struct.CARD { i32 -1590493440, i32 110, ptr @.str.109 }, %struct.CARD { i32 -1588264960, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1588264959, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1588264958, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1588264957, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1588264704, i32 102, ptr @.str.307 }, %struct.CARD { i32 -1588264703, i32 102, ptr @.str.307 }, %struct.CARD { i32 -1588264702, i32 102, ptr @.str.307 }, %struct.CARD { i32 -1588264701, i32 102, ptr @.str.307 }, %struct.CARD { i32 -1588262912, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1588262911, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1588262910, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1588262909, i32 102, ptr @.str.101 }, %struct.CARD { i32 -1585250560, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250559, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250558, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250557, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250556, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250555, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250554, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250553, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250552, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250551, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250550, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250549, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250548, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250547, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250546, i32 111, ptr @.str.110 }, %struct.CARD { i32 -1585250545, i32 111, ptr @.str.110 }, %struct.CARD { i32 -263192576, i32 156, ptr @.str.155 }, %struct.CARD { i32 -263192575, i32 156, ptr @.str.155 }, %struct.CARD { i32 -263192574, i32 156, ptr @.str.155 }, %struct.CARD { i32 -263192573, i32 156, ptr @.str.155 }, %struct.CARD { i32 1094861636, i32 57, ptr @.str.308 }, %struct.CARD { i32 16909060, i32 103, ptr @.str.309 }, %struct.CARD { i32 407902289, i32 35, ptr @.str.310 }, %struct.CARD { i32 -1605363631, i32 35, ptr @.str.310 }, %struct.CARD { i32 407967825, i32 71, ptr @.str.311 }, %struct.CARD { i32 408033362, i32 36, ptr @.str.312 }, %struct.CARD { i32 1101045841, i32 56, ptr @.str.313 }, %struct.CARD { i32 407904127, i32 30, ptr @.str.314 }, %struct.CARD { i32 16848331, i32 61, ptr @.str.315 }, %struct.CARD { i32 16848071, i32 23, ptr @.str.316 }, %struct.CARD { i32 280241718, i32 10, ptr @.str.317 }, %struct.CARD { i32 561866246, i32 34, ptr @.str.261 }, %struct.CARD { i32 -592129, i32 34, ptr @.str.261 }, %struct.CARD { i32 51470336, i32 73, ptr @.str.318 }, %struct.CARD { i32 101801984, i32 73, ptr @.str.319 }, %struct.CARD { i32 7933457, i32 76, ptr @.str.320 }, %struct.CARD { i32 -1594056288, i32 15, ptr @.str.321 }, %struct.CARD { i32 -2102220182, i32 116, ptr @.str.115 }, %struct.CARD { i32 342665740, i32 42, ptr @.str.322 }, %struct.CARD { i32 537531029, i32 29, ptr @.str.323 }, %struct.CARD { i32 1074861396, i32 72, ptr @.str.324 }, %struct.CARD { i32 400427521, i32 78, ptr @.str.325 }, %struct.CARD { i32 17111045, i32 121, ptr @.str.326 }, %struct.CARD { i32 17176581, i32 121, ptr @.str.327 }, %struct.CARD { i32 17242117, i32 121, ptr @.str.328 }, %struct.CARD { i32 17307653, i32 121, ptr @.str.329 }, %struct.CARD { i32 356554001, i32 136, ptr @.str.135 }, %struct.CARD { i32 1397965129, i32 145, ptr @.str.144 }, %struct.CARD { i32 1397965130, i32 146, ptr @.str.145 }, %struct.CARD { i32 278791022, i32 137, ptr @.str.136 }, %struct.CARD { i32 1839549, i32 94, ptr @.str.93 }, %struct.CARD { i32 16842865, i32 104, ptr @.str.103 }, %struct.CARD { i32 536899683, i32 112, ptr @.str.111 }, %struct.CARD { i32 2494909, i32 113, ptr @.str.330 }, %struct.CARD { i32 71714, i32 113, ptr @.str.331 }, %struct.CARD { i32 -67098865, i32 113, ptr @.str.332 }, %struct.CARD { i32 124851297, i32 123, ptr @.str.333 }, %struct.CARD { i32 123802721, i32 124, ptr @.str.123 }, %struct.CARD { i32 -619702100, i32 128, ptr @.str.127 }, %struct.CARD { i32 -619636564, i32 128, ptr @.str.334 }, %struct.CARD { i32 -721413972, i32 135, ptr @.str.134 }, %struct.CARD { i32 2496546, i32 113, ptr @.str.335 }, %struct.CARD { i32 -771695680, i32 148, ptr @.str.147 }, %struct.CARD { i32 1983643786, i32 150, ptr @.str.336 }, %struct.CARD { i32 402722816, i32 152, ptr @.str.151 }, %struct.CARD { i32 1983741962, i32 157, ptr @.str.337 }, %struct.CARD { i32 1983741963, i32 158, ptr @.str.338 }, %struct.CARD { i32 1983741964, i32 158, ptr @.str.338 }, %struct.CARD { i32 1983741965, i32 158, ptr @.str.338 }, %struct.CARD { i32 356522032, i32 159, ptr @.str.339 }, %struct.CARD { i32 356522033, i32 159, ptr @.str.340 }, %struct.CARD { i32 356522034, i32 159, ptr @.str.341 }, %struct.CARD { i32 356522035, i32 159, ptr @.str.342 }, %struct.CARD { i32 356522036, i32 159, ptr @.str.343 }, %struct.CARD { i32 356522037, i32 159, ptr @.str.344 }, %struct.CARD { i32 356522038, i32 159, ptr @.str.345 }, %struct.CARD { i32 356522039, i32 159, ptr @.str.346 }, %struct.CARD { i32 823587328, i32 160, ptr @.str.159 }, %struct.CARD { i32 36176505, i32 161, ptr @.str.160 }, %struct.CARD { i32 0, i32 -1, ptr null }], [480 x i8] zeroinitializer }, align 32
@bttv_idcard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.168, i32 2913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016bttv: %d: detected: %s [card=%d], PCI subsystem ID is %04x:%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bttv_idcard\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/pci/bt8xx/bttv-cards.c\00", [59 x i8] zeroinitializer }, align 32
@bttv_idcard._entry_ptr = internal global ptr @bttv_idcard._entry, section ".printk_index", align 4
@bttv_idcard._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.167, ptr @.str.168, i32 2919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016bttv: %d: subsystem: %04x:%04x (UNKNOWN)\0A\00", [52 x i8] zeroinitializer }, align 32
@bttv_idcard._entry_ptr.171 = internal global ptr @bttv_idcard._entry.169, section ".printk_index", align 4
@bttv_idcard.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.167, ptr @.str.168, ptr @.str.173, i8 2, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bttv\00", [27 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"please mail id, board name and the correct card= insmod option to linux-media@vger.kernel.org\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"bttv: please mail id, board name and the correct card= insmod option to linux-media@vger.kernel.org\0A\00", [59 x i8] zeroinitializer }, align 32
@card = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@bttv_idcard._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.167, ptr @.str.168, i32 2932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016bttv: %d: using: %s [card=%d,%s]\0A\00", [60 x i8] zeroinitializer }, align 32
@bttv_idcard._entry_ptr.177 = internal global ptr @bttv_idcard._entry.175, section ".printk_index", align 4
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"insmod option\00", [18 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"autodetected\00", [19 x i8] zeroinitializer }, align 32
@audiomux = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@bttv_idcard._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.167, ptr @.str.168, i32 2952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016bttv: %d: gpio config override: mask=0x%x, mux=\00", [46 x i8] zeroinitializer }, align 32
@bttv_idcard._entry_ptr.182 = internal global ptr @bttv_idcard._entry.180, section ".printk_index", align 4
@bttv_idcard._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.167, ptr @.str.168, i32 2955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c%s0x%x\00", [23 x i8] zeroinitializer }, align 32
@bttv_idcard._entry_ptr.185 = internal global ptr @bttv_idcard._entry.183, section ".printk_index", align 4
@.str.186 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@bttv_idcard._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.167, ptr @.str.168, i32 2957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@bttv_idcard._entry_ptr.190 = internal global ptr @bttv_idcard._entry.188, section ".printk_index", align 4
@eeprom_data = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@bttv_init_card2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.168, i32 3391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016bttv: %d: radio detected by subsystem id (CPH05x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bttv_init_card2\00", [16 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr = internal global ptr @bttv_init_card2._entry, section ".printk_index", align 4
@pll = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@tuner = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.192, ptr @.str.168, i32 3490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016bttv: %d: tuner absent\0A\00", [38 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr.195 = internal global ptr @bttv_init_card2._entry.193, section ".printk_index", align 4
@bttv_init_card2._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.192, ptr @.str.168, i32 3492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014bttv: %d: tuner type unset\0A\00", [34 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr.198 = internal global ptr @bttv_init_card2._entry.196, section ".printk_index", align 4
@bttv_init_card2._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.192, ptr @.str.168, i32 3494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016bttv: %d: tuner type=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr.201 = internal global ptr @bttv_init_card2._entry.199, section ".printk_index", align 4
@bttv_init_card2._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.192, ptr @.str.168, i32 3497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014bttv: %d: the autoload option is obsolete\0A\00", [51 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr.204 = internal global ptr @bttv_init_card2._entry.202, section ".printk_index", align 4
@bttv_init_card2._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.192, ptr @.str.168, i32 3499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\014bttv: %d: use option msp3400, tda7432 or tvaudio to override which audio module should be used\0A\00", [62 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr.207 = internal global ptr @bttv_init_card2._entry.205, section ".printk_index", align 4
@svhs = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@remote = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@bttv_init_card2.addrs = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 16, i16 17, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa6588\00", [24 x i8] zeroinitializer }, align 32
@audiodev = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@bttv_init_card2.addrs.209 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 64, i16 68, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp3400\00", [24 x i8] zeroinitializer }, align 32
@bttv_init_card2.addrs.211 = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 69, i16 -2], [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda7432\00", [24 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvaudio\00", [24 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.192, ptr @.str.168, i32 3592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014bttv: %d: unknown audiodev value!\0A\00", [59 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr.216 = internal global ptr @bttv_init_card2._entry.214, section ".printk_index", align 4
@bttv_init_card2.addrs.217 = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 69, i16 -2], [28 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.192, ptr @.str.168, i32 3642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014bttv: %d: audio absent, no audio device found!\0A\00", [46 x i8] zeroinitializer }, align 32
@bttv_init_card2._entry_ptr.220 = internal global ptr @bttv_init_card2._entry.218, section ".printk_index", align 4
@.str.221 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@bttv_tvnorms = external dso_local local_unnamed_addr constant [0 x %struct.bttv_tvnorm], align 4
@pci_pci_problems = external dso_local local_unnamed_addr global i32, align 4
@bttv_check_chipset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.168, i32 4889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016bttv: Host bridge needs ETBF enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bttv_check_chipset\00", [45 x i8] zeroinitializer }, align 32
@bttv_check_chipset._entry_ptr = internal global ptr @bttv_check_chipset._entry, section ".printk_index", align 4
@bttv_check_chipset._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.168, i32 4891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016bttv: Host bridge needs VSFX enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@bttv_check_chipset._entry_ptr.226 = internal global ptr @bttv_check_chipset._entry.224, section ".printk_index", align 4
@bttv_check_chipset._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.223, ptr @.str.168, i32 4893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016bttv: bttv and your chipset may not work together\0A\00", [43 x i8] zeroinitializer }, align 32
@bttv_check_chipset._entry_ptr.229 = internal global ptr @bttv_check_chipset._entry.227, section ".printk_index", align 4
@bttv_check_chipset._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.223, ptr @.str.168, i32 4895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016bttv: overlay will be disabled\0A\00", [62 x i8] zeroinitializer }, align 32
@bttv_check_chipset._entry_ptr.232 = internal global ptr @bttv_check_chipset._entry.230, section ".printk_index", align 4
@bttv_check_chipset._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.223, ptr @.str.168, i32 4898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016bttv: overlay forced. Use this option at your own risk.\0A\00", [37 x i8] zeroinitializer }, align 32
@bttv_check_chipset._entry_ptr.235 = internal global ptr @bttv_check_chipset._entry.233, section ".printk_index", align 4
@bttv_check_chipset._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.223, ptr @.str.168, i32 4902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016bttv: pci latency fixup [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@bttv_check_chipset._entry_ptr.238 = internal global ptr @bttv_check_chipset._entry.236, section ".printk_index", align 4
@bttv_debug = external dso_local local_unnamed_addr global i32, align 4
@bttv_check_chipset._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.223, ptr @.str.168, i32 4909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016bttv: Host bridge: 82441FX Natoma, bufcon=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@bttv_check_chipset._entry_ptr.241 = internal global ptr @bttv_check_chipset._entry.239, section ".printk_index", align 4
@bttv_verbose = external dso_local local_unnamed_addr global i32, align 4
@bttv_handle_chipset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.168, i32 4923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016bttv: %d: enabling ETBF (430FX/VP3 compatibility)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bttv_handle_chipset\00", [44 x i8] zeroinitializer }, align 32
@bttv_handle_chipset._entry_ptr = internal global ptr @bttv_handle_chipset._entry, section ".printk_index", align 4
@bttv_handle_chipset._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.243, ptr @.str.168, i32 4925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016bttv: %d: enabling VSFX\0A\00", [37 x i8] zeroinitializer }, align 32
@bttv_handle_chipset._entry_ptr.246 = internal global ptr @bttv_handle_chipset._entry.244, section ".printk_index", align 4
@bttv_handle_chipset._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.243, ptr @.str.168, i32 4928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016bttv: %d: setting pci timer to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bttv_handle_chipset._entry_ptr.249 = internal global ptr @bttv_handle_chipset._entry.247, section ".printk_index", align 4
@.str.250 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Hauppauge WinTV\00", [16 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hauppauge WinTV-D\00", [46 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Hauppauge WinTV/PVR\00", [44 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey-100\00", [21 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey-200\00", [21 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey-500\00", [21 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Osprey-2000\00", [20 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey-540\00", [21 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Osprey-440\00", [21 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATI TV Wonder\00", [18 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ATI TV Wonder/VE\00", [47 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Leadtek WinFast TV 2000\00", [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Leadtek WinFast VC 100\00", [41 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Leadtek TV 2000 XP\00", [45 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"STB TV PCI FM, Gateway P/N 6000704\00", [61 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I-O Data Co. GV-BCTV3/PCI\00", [38 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I-O Data Co. GV-BCTV4/PCI\00", [38 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I-O Data Co. GV-BCTV5/PCI\00", [38 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Pinnacle PCTV\00", [18 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Pinnacle PCTV [bswap]\00", [42 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"3Dfx VoodooTV 200\00", [46 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"3Dfx VoodooTV FM\00", [47 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"3Dfx VoodooTV 100/ STB OEM\00", [37 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(Askey Magic/others) TView99 CPH06x\00", [60 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CPH06X TView99-Card\00", [44 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(Askey Magic/others) TView99 CPH05x\00", [60 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(Askey Magic/others) TView99 CPH061/06L (T1/LC)\00", [48 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Askey CPH050\00", [19 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TView 99 (CPH061)\00", [46 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Phoebe TV Master (CPH060)\00", [38 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AVerMedia TVPhone98\00", [44 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AVermedia TVCapture 98\00", [41 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VDOMATE TV TUNER CARD\00", [42 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Terratec TValue (Philips PAL B/G)\00", [62 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Terratec TValue (Temic PAL B/G)\00", [32 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Terratec TValue (Philips PAL I)\00", [32 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Terratec TValue (Temic PAL I)\00", [34 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Terratec TV Radio+\00", [45 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Terratec TV+ (V1.05)\00", [43 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec TValue (LR102)\00", [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Terratec TValue Radio\00", [42 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Terratec TValue\00", [16 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zoltrix Genie TV\00", [47 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Zoltrix Genie TV / Radio\00", [39 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Provideo PV143A\00", [16 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Provideo PV143B\00", [16 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Provideo PV143C\00", [16 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Provideo PV143D\00", [16 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Security Eyes\00", [18 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150A-1\00", [46 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150A-2\00", [46 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150A-3\00", [46 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150A-4\00", [46 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150B-1\00", [46 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150B-2\00", [46 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150B-3\00", [46 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Provideo PV150B-4\00", [46 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IVC-200G\00", [23 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GrandTec Multi Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Grandtec Grand X-Guard\00", [41 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FlyVideo 98 (LR50)/ Chronos Video Shuttle II\00", [51 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FlyVideo 98EZ (LR51)/ CyberMail AV\00", [61 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FlyVideo 98FM (LR50)/ Typhoon TView TV/FM Tuner\00", [48 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Lifeview FlyVideo 98 LR50 Rev Q\00", [32 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Lifeview Flyvideo 98\00", [43 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AG GMV1\00", [24 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Modular Technology MM201/MM202/MM205/MM210/MM215 PCTV\00", [42 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STB ???\00", [24 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sensoray 311\00", [19 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sensoray 611\00", [19 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Canopus WinDVR PCI\00", [45 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Face to Face Tvmax\00", [45 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ituner spectra8\00", [16 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ImageNation PXC200A\00", [44 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Prolink Pixelview PV-BT\00", [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mecer TV/FM/Video Tuner\00", [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Picolo Tetra Chip #1\00", [43 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Picolo Tetra Chip #2\00", [43 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Picolo Tetra Chip #3\00", [43 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Picolo Tetra Chip #4\00", [43 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pinnacle PCTV SAT CI\00", [43 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Twinhan VisionPlus DVB\00", [41 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ChainTech digitop DST-1000 DVB-S\00", [63 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AVermedia AverTV DVB-T 771\00", [37 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ultraview DVB-T Lite\00", [43 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DNTV Live! Mini \00", [47 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeoVision GV-600\00", [47 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GeoVision GV-800(S) (master)\00", [35 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GeoVision GV-800(S) (slave)\00", [36 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-1\00", [47 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-2\00", [47 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-3\00", [47 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-4\00", [47 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-5\00", [47 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-6\00", [47 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-7\00", [47 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Provideo PV183-8\00", [47 x i8] zeroinitializer }, align 32
@gvc1100_muxsel.masks = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 48, i32 1, i32 18, i32 35], [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bttv_reset_audio.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.347, ptr @.str.168, ptr @.str.348, i8 3, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.347 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bttv_reset_audio\00", [47 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d: BT878A ARESET\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bttv: %d: BT878A ARESET\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GET MM20xPCTV\00", [18 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Picolo\00", [25 x i8] zeroinitializer }, align 32
@identify_by_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.353, ptr @.str.168, i32 2979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016bttv: %d: detected by eeprom: %s [card=%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"identify_by_eeprom\00", [45 x i8] zeroinitializer }, align 32
@identify_by_eeprom._entry_ptr = internal global ptr @identify_by_eeprom._entry, section ".printk_index", align 4
@.str.354 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSP34xx\00", [24 x i8] zeroinitializer }, align 32
@miro_tunermap = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 6, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 3, i32 0, i32 4, i32 5, i32 5, i32 2, i32 16, i32 1, i32 14, i32 2, i32 17, i32 1, i32 4, i32 1, i32 4, i32 3, i32 1, i32 2, i32 16, i32 1, i32 4, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@miro_pinnacle_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.355, ptr @.str.356, ptr @.str.168, i32 3099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016bttv: %d: miro: id=%d tuner=%d radio=%s stereo=%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"miro_pinnacle_gpio\00", [45 x i8] zeroinitializer }, align 32
@miro_pinnacle_gpio._entry_ptr = internal global ptr @miro_pinnacle_gpio._entry, section ".printk_index", align 4
@.str.357 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tea575x\00", [24 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fmtuner\00", [24 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PAL / mono\00", [21 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PAL+SECAM / stereo\00", [45 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NTSC / stereo\00", [18 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PAL+SECAM / mono\00", [47 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NTSC / mono\00", [20 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PAL / stereo\00", [19 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"oops: unknown card\00", [45 x i8] zeroinitializer }, align 32
@miro_pinnacle_gpio._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.356, ptr @.str.168, i32 3142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016bttv: %d: pinnacle/mt: id=%d info=\22%s\22 radio=%s\0A\00", [45 x i8] zeroinitializer }, align 32
@miro_pinnacle_gpio._entry_ptr.370 = internal global ptr @miro_pinnacle_gpio._entry.368, section ".printk_index", align 4
@flyvideo_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.371, ptr @.str.372, ptr @.str.168, i32 3023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016bttv: %d: FlyVideo_gpio: unknown tuner type\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flyvideo_gpio\00", [18 x i8] zeroinitializer }, align 32
@flyvideo_gpio._entry_ptr = internal global ptr @flyvideo_gpio._entry, section ".printk_index", align 4
@flyvideo_gpio._entry.373 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.374, ptr @.str.372, ptr @.str.168, i32 3042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016bttv: %d: FlyVideo Radio=%s RemoteControl=%s Tuner=%d gpio=0x%06x\0A\00", [59 x i8] zeroinitializer }, align 32
@flyvideo_gpio._entry_ptr.375 = internal global ptr @flyvideo_gpio._entry.373, section ".printk_index", align 4
@flyvideo_gpio._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.372, ptr @.str.168, i32 3046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016bttv: %d: FlyVideo  LR90=%s tda9821/tda9820=%s capture_only=%s\0A\00", [62 x i8] zeroinitializer }, align 32
@flyvideo_gpio._entry_ptr.378 = internal global ptr @flyvideo_gpio._entry.376, section ".printk_index", align 4
@init_lmlbt4x.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.379, ptr @.str.168, ptr @.str.380, i8 3, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.379 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_lmlbt4x\00", [19 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LMLBT4x init\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bttv: LMLBT4x init\0A\00", [44 x i8] zeroinitializer }, align 32
@tvaudio_addrs.addrs = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 65, i16 64, i16 76, i16 66, i16 90, i16 91, i16 88, i16 75, i16 -2], [46 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Temic 4066 FY5\00", [17 x i8] zeroinitializer }, align 32
@modtec_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.384, ptr @.str.168, i32 3696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016bttv: %d: Modtec: Tuner autodetected by eeprom: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"modtec_eeprom\00", [18 x i8] zeroinitializer }, align 32
@modtec_eeprom._entry_ptr = internal global ptr @modtec_eeprom._entry, section ".printk_index", align 4
@.str.385 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Alps TSBB5\00", [21 x i8] zeroinitializer }, align 32
@modtec_eeprom._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.384, ptr @.str.168, i32 3700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@modtec_eeprom._entry_ptr.387 = internal global ptr @modtec_eeprom._entry.386, section ".printk_index", align 4
@.str.388 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips FM1246\00", [17 x i8] zeroinitializer }, align 32
@modtec_eeprom._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.384, ptr @.str.168, i32 3704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@modtec_eeprom._entry_ptr.390 = internal global ptr @modtec_eeprom._entry.389, section ".printk_index", align 4
@modtec_eeprom._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.384, ptr @.str.168, i32 3707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bttv: %d: Modtec: Unknown TunerString: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@modtec_eeprom._entry_ptr.393 = internal global ptr @modtec_eeprom._entry.391, section ".printk_index", align 4
@hauppauge_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.394, ptr @.str.395, ptr @.str.168, i32 3720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bttv: %d: Hauppauge eeprom indicates model#%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hauppauge_eeprom\00", [47 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr = internal global ptr @hauppauge_eeprom._entry, section ".printk_index", align 4
@hauppauge_eeprom._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.395, ptr @.str.168, i32 3730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016bttv: %d: Switching board type from %s to %s\0A\00", [48 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr.398 = internal global ptr @hauppauge_eeprom._entry.396, section ".printk_index", align 4
@bttv_tea_ops = internal constant { %struct.snd_tea575x_ops, [44 x i8] } { %struct.snd_tea575x_ops { ptr null, ptr null, ptr @bttv_tea575x_set_pins, ptr @bttv_tea575x_get_pins, ptr @bttv_tea575x_set_direction }, [44 x i8] zeroinitializer }, align 32
@tea575x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.400, ptr @.str.168, i32 3814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016bttv: %d: detected TEA575x radio\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tea575x_init\00", [19 x i8] zeroinitializer }, align 32
@tea575x_init._entry_ptr = internal global ptr @tea575x_init._entry, section ".printk_index", align 4
@terratec_active_radio_upgrade._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.402, ptr @.str.168, i32 3841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bttv: %d: Terratec Active Radio Upgrade found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"terratec_active_radio_upgrade\00", [34 x i8] zeroinitializer }, align 32
@terratec_active_radio_upgrade._entry_ptr = internal global ptr @terratec_active_radio_upgrade._entry, section ".printk_index", align 4
@.str.403 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hcwamc.rbf\00", [21 x i8] zeroinitializer }, align 32
@pvr_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.404, ptr @.str.405, ptr @.str.168, i32 3908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014bttv: %d: no altera firmware [via hotplug]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pvr_boot\00", [23 x i8] zeroinitializer }, align 32
@pvr_boot._entry_ptr = internal global ptr @pvr_boot._entry, section ".printk_index", align 4
@pvr_boot._entry.406 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.407, ptr @.str.405, ptr @.str.168, i32 3913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016bttv: %d: altera firmware upload %s\0A\00", [57 x i8] zeroinitializer }, align 32
@pvr_boot._entry_ptr.408 = internal global ptr @pvr_boot._entry.406, section ".printk_index", align 4
@.str.410 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MMAC\00", [27 x i8] zeroinitializer }, align 32
@osprey_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.412, ptr @.str.413, ptr @.str.168, i32 4012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016bttv: %d: osprey eeprom: unknown card type 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"osprey_eeprom\00", [18 x i8] zeroinitializer }, align 32
@osprey_eeprom._entry_ptr = internal global ptr @osprey_eeprom._entry, section ".printk_index", align 4
@osprey_eeprom._entry.414 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.415, ptr @.str.413, ptr @.str.168, i32 4020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016bttv: %d: osprey eeprom: card=%d '%s' serial=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@osprey_eeprom._entry_ptr.416 = internal global ptr @osprey_eeprom._entry.414, section ".printk_index", align 4
@.str.417 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@osprey_eeprom._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.419, ptr @.str.413, ptr @.str.168, i32 4028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014bttv: %d: osprey eeprom: Not overriding user specified card type\0A\00", [60 x i8] zeroinitializer }, align 32
@osprey_eeprom._entry_ptr.420 = internal global ptr @osprey_eeprom._entry.418, section ".printk_index", align 4
@osprey_eeprom._entry.421 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.422, ptr @.str.413, ptr @.str.168, i32 4031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016bttv: %d: osprey eeprom: Changing card type from %d to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@osprey_eeprom._entry_ptr.423 = internal global ptr @osprey_eeprom._entry.421, section ".printk_index", align 4
@tuner_0_table = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 5, i32 5, i32 5, i32 5, i32 5, i32 3, i32 3, i32 3, i32 5, i32 38], [52 x i8] zeroinitializer }, align 32
@tuner_1_table = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 35, i32 35, i32 0], [56 x i8] zeroinitializer }, align 32
@avermedia_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.425, ptr @.str.168, i32 4075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bttv: %d: Avermedia eeprom[0x%02x%02x]: tuner=\00", [47 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"avermedia_eeprom\00", [47 x i8] zeroinitializer }, align 32
@avermedia_eeprom._entry_ptr = internal global ptr @avermedia_eeprom._entry, section ".printk_index", align 4
@avermedia_eeprom._entry.426 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.427, ptr @.str.425, ptr @.str.168, i32 4078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%d\00", [27 x i8] zeroinitializer }, align 32
@avermedia_eeprom._entry_ptr.428 = internal global ptr @avermedia_eeprom._entry.426, section ".printk_index", align 4
@avermedia_eeprom._entry.429 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.430, ptr @.str.425, ptr @.str.168, i32 4080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01cUnknown type\00", [17 x i8] zeroinitializer }, align 32
@avermedia_eeprom._entry_ptr.431 = internal global ptr @avermedia_eeprom._entry.429, section ".printk_index", align 4
@avermedia_eeprom._entry.432 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.433, ptr @.str.425, ptr @.str.168, i32 4083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\01c radio:%s remote control:%s\0A\00", [33 x i8] zeroinitializer }, align 32
@avermedia_eeprom._entry_ptr.434 = internal global ptr @avermedia_eeprom._entry.432, section ".printk_index", align 4
@bttv_gpio = external dso_local local_unnamed_addr global i32, align 4
@.str.435 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp34xx\00", [24 x i8] zeroinitializer }, align 32
@boot_msp34xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.436, ptr @.str.437, ptr @.str.168, i32 4130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016bttv: %d: Hauppauge/Voodoo msp34xx: reset line init [%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"boot_msp34xx\00", [19 x i8] zeroinitializer }, align 32
@boot_msp34xx._entry_ptr = internal global ptr @boot_msp34xx._entry, section ".printk_index", align 4
@init_PXC200.vals = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0], [44 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pxc200\00", [25 x i8] zeroinitializer }, align 32
@init_PXC200._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.439, ptr @.str.440, ptr @.str.168, i32 4169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bttv: Setting DAC reference voltage level ...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_PXC200\00", [20 x i8] zeroinitializer }, align 32
@init_PXC200._entry_ptr = internal global ptr @init_PXC200._entry, section ".printk_index", align 4
@init_PXC200._entry.441 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.442, ptr @.str.440, ptr @.str.168, i32 4178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016bttv: Initialising 12C508 PIC chip ...\0A\00", [54 x i8] zeroinitializer }, align 32
@init_PXC200._entry_ptr.443 = internal global ptr @init_PXC200._entry.441, section ".printk_index", align 4
@init_PXC200._entry.444 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.445, ptr @.str.440, ptr @.str.168, i32 4198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016bttv: I2C Write(%2.2x) = %i\0AI2C Read () = %2.2x\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@init_PXC200._entry_ptr.446 = internal global ptr @init_PXC200._entry.444, section ".printk_index", align 4
@init_PXC200._entry.447 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.448, ptr @.str.440, ptr @.str.168, i32 4202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016bttv: PXC200 Initialised\0A\00", [36 x i8] zeroinitializer }, align 32
@init_PXC200._entry_ptr.449 = internal global ptr @init_PXC200._entry.447, section ".printk_index", align 4
@init_RTV24._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.450, ptr @.str.451, ptr @.str.168, i32 4242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016bttv: %d: Adlink RTV-24 initialisation in progress ...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_RTV24\00", [21 x i8] zeroinitializer }, align 32
@init_RTV24._entry_ptr = internal global ptr @init_RTV24._entry, section ".printk_index", align 4
@init_RTV24._entry.452 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.453, ptr @.str.451, ptr @.str.168, i32 4256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016bttv: %d: Adlink RTV-24 initialisation(1) ERROR_CPLD_Check_Failed (read %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@init_RTV24._entry_ptr.454 = internal global ptr @init_RTV24._entry.452, section ".printk_index", align 4
@init_RTV24._entry.455 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.456, ptr @.str.451, ptr @.str.168, i32 4269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016bttv: %d: Adlink RTV-24 initialisation(2) ERROR_CPLD_Check_Failed (read %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@init_RTV24._entry_ptr.457 = internal global ptr @init_RTV24._entry.455, section ".printk_index", align 4
@init_RTV24._entry.458 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.459, ptr @.str.451, ptr @.str.168, i32 4274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.459 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016bttv: %d: Adlink RTV-24 initialisation complete\0A\00", [45 x i8] zeroinitializer }, align 32
@init_RTV24._entry_ptr.460 = internal global ptr @init_RTV24._entry.458, section ".printk_index", align 4
@init_PCI8604PW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.461, ptr @.str.462, ptr @.str.168, i32 4306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014bttv: This is not a PCI-8604PW\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_PCI8604PW\00", [17 x i8] zeroinitializer }, align 32
@init_PCI8604PW._entry_ptr = internal global ptr @init_PCI8604PW._entry, section ".printk_index", align 4
@init_PCI8604PW.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.462, ptr @.str.168, ptr @.str.463, i8 4, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.463 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCI-8604PW in state %i, toggling pin\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bttv: PCI-8604PW in state %i, toggling pin\0A\00", [52 x i8] zeroinitializer }, align 32
@init_PCI8604PW._entry.465 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.466, ptr @.str.462, ptr @.str.168, i32 4331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016bttv: PCI-8604PW unlocked\0A\00", [35 x i8] zeroinitializer }, align 32
@init_PCI8604PW._entry_ptr.467 = internal global ptr @init_PCI8604PW._entry.465, section ".printk_index", align 4
@init_PCI8604PW._entry.468 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.469, ptr @.str.462, ptr @.str.168, i32 4339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bttv: PCI-8604PW locked until reset\0A\00", [57 x i8] zeroinitializer }, align 32
@init_PCI8604PW._entry_ptr.470 = internal global ptr @init_PCI8604PW._entry.468, section ".printk_index", align 4
@init_PCI8604PW._entry.471 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.472, ptr @.str.462, ptr @.str.168, i32 4342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bttv: PCI-8604PW in unknown state %i\0A\00", [56 x i8] zeroinitializer }, align 32
@init_PCI8604PW._entry_ptr.473 = internal global ptr @init_PCI8604PW._entry.471, section ".printk_index", align 4
@init_PCI8604PW._entry.474 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.475, ptr @.str.462, ptr @.str.168, i32 4360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bttv: PCI-8604PW invalid transition %i -> %i\0A\00", [48 x i8] zeroinitializer }, align 32
@init_PCI8604PW._entry_ptr.476 = internal global ptr @init_PCI8604PW._entry.474, section ".printk_index", align 4
@rv605_muxsel.muxgpio = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\03\01\02\04\0F\07\0E\00\0D\0B\0C\06\09\05\08\0A", [16 x i8] zeroinitializer }, align 32
@kodicom4400r_muxsel.map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\00\02\01", [28 x i8] zeroinitializer }, align 32
@master = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@xguard_muxsel.masks = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2, i32 34, i32 18, i32 50, i32 1, i32 33, i32 17, i32 49, i32 8, i32 136, i32 72, i32 200, i32 4, i32 132, i32 68, i32 196], [32 x i8] zeroinitializer }, align 32
@picolo_tetra_muxsel.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.477, ptr @.str.168, ptr @.str.478, i8 4, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.477 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"picolo_tetra_muxsel\00", [44 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d : picolo_tetra_muxsel =>  input = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bttv: %d : picolo_tetra_muxsel =>  input = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ivc120_muxsel.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.480, ptr @.str.168, ptr @.str.481, i8 4, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.480 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivc120_muxsel\00", [18 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%d: ivc120_muxsel: Input - %02d | TDA - %02d | In - %02d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"bttv: %d: ivc120_muxsel: Input - %02d | TDA - %02d | In - %02d\0A\00", [32 x i8] zeroinitializer }, align 32
@PXC200_muxsel.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.483, ptr @.str.168, ptr @.str.484, i8 4, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.483 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PXC200_muxsel\00", [18 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d: PXC200_muxsel: pic cfg write failed:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bttv: %d: PXC200_muxsel: pic cfg write failed:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@PXC200_muxsel.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.483, ptr @.str.168, ptr @.str.486, i8 4, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.486 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d: PXC200_muxsel: not PXC200F rc:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bttv: %d: PXC200_muxsel: not PXC200F rc:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@PXC200_muxsel.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.172, ptr @.str.483, ptr @.str.168, ptr @.str.488, i8 4, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.488 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d: setting input channel to:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bttv: %d: setting input channel to:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@gv800s_muxsel.map = internal constant { [4 x [4 x i32]], [32 x i8] } { [4 x [4 x i32]] [[4 x i32] [i32 0, i32 4, i32 10, i32 6], [4 x i32] [i32 1, i32 5, i32 11, i32 7], [4 x i32] [i32 2, i32 8, i32 12, i32 14], [4 x i32] [i32 3, i32 9, i32 13, i32 15]], [32 x i8] zeroinitializer }, align 32
@switch.table.bttv_init_card2 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 39, i32 5, i32 37, i32 2, i32 2, i32 3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.490 = internal global [13 x i64] [i64 11, i64 32, i64 2, i64 10, i64 13, i64 68, i64 80, i64 94, i64 113, i64 123, i64 134, i64 147, i64 166]
@__sancov_gen_cov_switch_values.491 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.492 = internal global [6 x i64] [i64 4, i64 32, i64 21, i64 71, i64 86, i64 100]
@__sancov_gen_cov_switch_values.493 = internal global [47 x i64] [i64 45, i64 32, i64 1, i64 2, i64 8, i64 10, i64 11, i64 13, i64 14, i64 19, i64 21, i64 23, i64 24, i64 25, i64 27, i64 28, i64 29, i64 30, i64 35, i64 36, i64 39, i64 40, i64 41, i64 52, i64 54, i64 56, i64 65, i64 71, i64 80, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 118, i64 121, i64 131, i64 132, i64 140, i64 157]
@__sancov_gen_cov_switch_values.494 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 39]
@__sancov_gen_cov_switch_values.495 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.496 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.497 = internal global [24 x i64] [i64 22, i64 16, i64 4, i64 5, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 30, i64 31, i64 32, i64 64, i64 80, i64 86, i64 96, i64 112, i64 160, i64 216]
@__sancov_gen_cov_switch_values.498 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 28, i64 35]
@__sancov_gen_cov_switch_values.499 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.500 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4294967295]
@___asan_gen_.501 = private unnamed_addr constant [11 x i8] c"no_overlay\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 84, i32 5 }
@___asan_gen_.504 = private unnamed_addr constant [8 x i8] c"triton1\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 81, i32 21 }
@___asan_gen_.507 = private unnamed_addr constant [5 x i8] c"vsfx\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 82, i32 21 }
@___asan_gen_.510 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 83, i32 21 }
@___asan_gen_.513 = private unnamed_addr constant [9 x i8] c"gpiomask\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 95, i32 21 }
@___asan_gen_.516 = private unnamed_addr constant [9 x i8] c"audioall\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 96, i32 21 }
@___asan_gen_.519 = private unnamed_addr constant [9 x i8] c"autoload\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 94, i32 21 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 350, i32 12 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 358, i32 12 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 370, i32 12 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 382, i32 12 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 399, i32 12 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 410, i32 12 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 422, i32 12 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 436, i32 12 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 449, i32 12 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 462, i32 12 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 474, i32 12 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 487, i32 12 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 501, i32 12 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 512, i32 12 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 527, i32 12 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 540, i32 12 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 554, i32 12 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 568, i32 12 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 582, i32 12 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 593, i32 12 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 607, i32 12 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 616, i32 12 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 629, i32 12 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 642, i32 12 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 659, i32 12 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 674, i32 21 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 687, i32 12 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 699, i32 12 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 714, i32 21 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 759, i32 12 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 772, i32 12 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 785, i32 12 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 810, i32 21 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 823, i32 12 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 852, i32 12 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 867, i32 12 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 881, i32 12 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 895, i32 12 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 909, i32 12 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 924, i32 12 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 939, i32 12 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 953, i32 12 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 966, i32 12 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 981, i32 12 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 995, i32 12 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1008, i32 12 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1022, i32 12 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1039, i32 12 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1052, i32 12 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1066, i32 12 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1092, i32 21 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1108, i32 21 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1132, i32 12 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1151, i32 12 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1170, i32 21 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1186, i32 21 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1202, i32 21 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1216, i32 21 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1230, i32 12 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1247, i32 21 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1261, i32 12 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1277, i32 21 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1291, i32 12 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1307, i32 12 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1321, i32 21 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1339, i32 12 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1354, i32 21 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1370, i32 21 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1411, i32 21 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1422, i32 21 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1443, i32 12 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1458, i32 12 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1484, i32 21 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1496, i32 21 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1509, i32 21 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1526, i32 21 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1539, i32 21 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1552, i32 21 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1586, i32 21 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1597, i32 21 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1610, i32 21 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1626, i32 21 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1638, i32 21 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1652, i32 21 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1664, i32 21 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1676, i32 21 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1688, i32 21 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1702, i32 21 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1714, i32 21 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1726, i32 21 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1738, i32 21 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1750, i32 21 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1763, i32 21 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1776, i32 21 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1790, i32 21 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1813, i32 21 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1826, i32 21 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1840, i32 21 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1855, i32 21 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1873, i32 21 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1894, i32 21 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1915, i32 21 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1937, i32 21 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1953, i32 21 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1969, i32 21 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1983, i32 21 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1995, i32 21 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2009, i32 21 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2023, i32 21 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2037, i32 21 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2049, i32 21 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2065, i32 21 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2075, i32 21 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2084, i32 21 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2097, i32 21 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2111, i32 21 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2124, i32 21 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2138, i32 21 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2150, i32 21 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2166, i32 21 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2185, i32 21 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2204, i32 21 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2217, i32 21 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2234, i32 21 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2249, i32 12 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2264, i32 12 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2281, i32 21 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2299, i32 21 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2310, i32 21 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2326, i32 21 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2339, i32 21 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2363, i32 21 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2392, i32 12 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2410, i32 21 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2422, i32 21 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2439, i32 12 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2454, i32 21 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2470, i32 12 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2489, i32 21 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2518, i32 21 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2534, i32 12 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2548, i32 12 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2564, i32 12 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2583, i32 21 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2598, i32 12 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2607, i32 12 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1390, i32 21 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2617, i32 21 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2632, i32 21 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2646, i32 12 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2663, i32 21 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2680, i32 21 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2702, i32 21 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2715, i32 21 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2728, i32 21 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 1926, i32 21 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2752, i32 21 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2776, i32 21 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2791, i32 21 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2805, i32 21 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2815, i32 21 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2823, i32 21 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2833, i32 12 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2841, i32 12 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2852, i32 21 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2869, i32 21 }
@___asan_gen_.1020 = private unnamed_addr constant [13 x i8] c"bttv_tvcards\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 347, i32 15 }
@___asan_gen_.1023 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 146, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2910, i32 4 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2917, i32 4 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2920, i32 4 }
@___asan_gen_.1053 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 86, i32 21 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2929, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant [9 x i8] c"audiomux\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 97, i32 21 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2951, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2954, i32 3 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2957, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant [12 x i8] c"eeprom_data\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2888, i32 22 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3390, i32 4 }
@___asan_gen_.1107 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 87, i32 21 }
@___asan_gen_.1110 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 88, i32 21 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3490, i32 3 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3492, i32 3 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3494, i32 3 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3497, i32 3 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3498, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant [5 x i8] c"svhs\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 89, i32 21 }
@___asan_gen_.1146 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 90, i32 21 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3530, i32 31 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3538, i32 22 }
@___asan_gen_.1155 = private unnamed_addr constant [9 x i8] c"audiodev\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 91, i32 21 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3556, i32 31 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3563, i32 22 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3571, i32 31 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3577, i32 23 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3585, i32 22 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3592, i32 3 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3628, i32 31 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3642, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3660, i32 23 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4889, i32 3 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4891, i32 3 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4893, i32 3 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4895, i32 4 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4898, i32 4 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4902, i32 3 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4908, i32 4 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4922, i32 4 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4925, i32 4 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4927, i32 4 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 147, i32 42 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 148, i32 42 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 149, i32 42 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 150, i32 42 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 151, i32 42 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 152, i32 42 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 153, i32 42 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 154, i32 42 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 155, i32 42 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 157, i32 42 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 158, i32 42 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 160, i32 42 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 161, i32 42 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 162, i32 42 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 163, i32 42 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 165, i32 42 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 166, i32 42 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 167, i32 42 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 170, i32 42 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 172, i32 42 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 177, i32 42 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 178, i32 42 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 179, i32 35 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 181, i32 42 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 182, i32 42 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 183, i32 42 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 184, i32 42 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 185, i32 42 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 186, i32 42 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 187, i32 42 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 189, i32 42 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 190, i32 42 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 193, i32 42 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 195, i32 42 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 196, i32 42 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 197, i32 42 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 198, i32 42 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 200, i32 42 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 201, i32 42 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 204, i32 42 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 205, i32 42 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 206, i32 42 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 209, i32 42 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 211, i32 42 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 215, i32 42 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 216, i32 42 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 217, i32 42 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 218, i32 42 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 219, i32 42 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 221, i32 42 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 222, i32 42 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 223, i32 42 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 224, i32 42 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 226, i32 42 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 227, i32 42 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 228, i32 42 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 229, i32 42 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 236, i32 42 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 265, i32 42 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 266, i32 42 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 268, i32 42 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 270, i32 42 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 271, i32 42 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 272, i32 42 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 273, i32 42 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 275, i32 42 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 276, i32 42 }
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 278, i32 42 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 281, i32 44 }
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 282, i32 44 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 283, i32 42 }
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 284, i32 42 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 286, i32 42 }
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 287, i32 42 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 289, i32 42 }
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 290, i32 42 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 292, i32 46 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 293, i32 46 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 294, i32 46 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 295, i32 46 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 314, i32 42 }
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 315, i32 42 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 316, i32 42 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 317, i32 42 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 320, i32 47 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 322, i32 40 }
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 324, i32 44 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 326, i32 45 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 327, i32 48 }
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 331, i32 42 }
@___asan_gen_.1529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 332, i32 42 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 333, i32 42 }
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 334, i32 42 }
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 335, i32 42 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 336, i32 42 }
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 337, i32 42 }
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 338, i32 42 }
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3185, i32 19 }
@___asan_gen_.1559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3284, i32 3 }
@___asan_gen_.1562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2969, i32 31 }
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2971, i32 39 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 2978, i32 3 }
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3073, i32 45 }
@___asan_gen_.1578 = private unnamed_addr constant [14 x i8] c"miro_tunermap\00", align 1
@___asan_gen_.1580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3060, i32 12 }
@___asan_gen_.1601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3095, i32 3 }
@___asan_gen_.1604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3106, i32 11 }
@___asan_gen_.1607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3110, i32 11 }
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3115, i32 11 }
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3120, i32 11 }
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3124, i32 11 }
@___asan_gen_.1619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3132, i32 11 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3136, i32 11 }
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3141, i32 3 }
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3023, i32 3 }
@___asan_gen_.1643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3040, i32 2 }
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3043, i32 2 }
@___asan_gen_.1658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3204, i32 2 }
@___asan_gen_.1659 = private unnamed_addr constant [6 x i8] c"addrs\00", align 1
@___asan_gen_.1660 = private unnamed_addr constant [31 x i8] c"../include/media/i2c/tvaudio.h\00", align 1
@___asan_gen_.1661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 37, i32 30 }
@___asan_gen_.1664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3693, i32 35 }
@___asan_gen_.1673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3695, i32 3 }
@___asan_gen_.1676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3697, i32 42 }
@___asan_gen_.1679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3699, i32 3 }
@___asan_gen_.1682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3701, i32 42 }
@___asan_gen_.1685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3703, i32 3 }
@___asan_gen_.1691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3706, i32 3 }
@___asan_gen_.1700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3719, i32 2 }
@___asan_gen_.1706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3727, i32 3 }
@___asan_gen_.1707 = private unnamed_addr constant [13 x i8] c"bttv_tea_ops\00", align 1
@___asan_gen_.1709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3803, i32 37 }
@___asan_gen_.1718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3814, i32 3 }
@___asan_gen_.1727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3841, i32 3 }
@___asan_gen_.1730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3906, i32 35 }
@___asan_gen_.1739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3908, i32 3 }
@___asan_gen_.1748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3912, i32 2 }
@___asan_gen_.1751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 3930, i32 20 }
@___asan_gen_.1760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4011, i32 4 }
@___asan_gen_.1769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4018, i32 2 }
@___asan_gen_.1775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4027, i32 3 }
@___asan_gen_.1781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4030, i32 3 }
@___asan_gen_.1782 = private unnamed_addr constant [14 x i8] c"tuner_0_table\00", align 1
@___asan_gen_.1784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4039, i32 12 }
@___asan_gen_.1785 = private unnamed_addr constant [14 x i8] c"tuner_1_table\00", align 1
@___asan_gen_.1787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4047, i32 12 }
@___asan_gen_.1796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4074, i32 2 }
@___asan_gen_.1802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4078, i32 3 }
@___asan_gen_.1808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4080, i32 3 }
@___asan_gen_.1814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4081, i32 2 }
@___asan_gen_.1817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4127, i32 26 }
@___asan_gen_.1826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4129, i32 3 }
@___asan_gen_.1827 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.1829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4141, i32 13 }
@___asan_gen_.1832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4156, i32 26 }
@___asan_gen_.1841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4169, i32 2 }
@___asan_gen_.1847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4178, i32 2 }
@___asan_gen_.1853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4197, i32 4 }
@___asan_gen_.1859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4202, i32 2 }
@___asan_gen_.1868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4241, i32 2 }
@___asan_gen_.1874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4255, i32 3 }
@___asan_gen_.1880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4268, i32 3 }
@___asan_gen_.1886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4274, i32 2 }
@___asan_gen_.1895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4306, i32 3 }
@___asan_gen_.1901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4323, i32 4 }
@___asan_gen_.1907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4331, i32 4 }
@___asan_gen_.1913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4339, i32 4 }
@___asan_gen_.1919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4342, i32 4 }
@___asan_gen_.1920 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4359, i32 4 }
@___asan_gen_.1926 = private unnamed_addr constant [8 x i8] c"muxgpio\00", align 1
@___asan_gen_.1928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4393, i32 18 }
@___asan_gen_.1931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4503, i32 23 }
@___asan_gen_.1932 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@___asan_gen_.1934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 93, i32 22 }
@___asan_gen_.1935 = private unnamed_addr constant [6 x i8] c"masks\00", align 1
@___asan_gen_.1937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4573, i32 19 }
@___asan_gen_.1946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4590, i32 2 }
@___asan_gen_.1955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4635, i32 2 }
@___asan_gen_.1964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4692, i32 3 }
@___asan_gen_.1970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4700, i32 3 }
@___asan_gen_.1974 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4741, i32 2 }
@___asan_gen_.1977 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.1978 = private constant [40 x i8] c"../drivers/media/pci/bt8xx/bttv-cards.c\00", align 1
@___asan_gen_.1979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1978, i32 4815, i32 22 }
@___asan_gen_.1980 = private unnamed_addr constant [29 x i8] c"switch.table.bttv_init_card2\00", align 1
@llvm.compiler.used = appending global [594 x ptr] [ptr @__UNIQUE_ID_audioalltype326, ptr @__UNIQUE_ID_audiodev342, ptr @__UNIQUE_ID_audiodevtype333, ptr @__UNIQUE_ID_audiomuxtype334, ptr @__UNIQUE_ID_autoload341, ptr @__UNIQUE_ID_autoloadtype327, ptr @__UNIQUE_ID_card338, ptr @__UNIQUE_ID_cardtype328, ptr @__UNIQUE_ID_gpiomasktype325, ptr @__UNIQUE_ID_latency337, ptr @__UNIQUE_ID_latencytype324, ptr @__UNIQUE_ID_no_overlay344, ptr @__UNIQUE_ID_no_overlaytype323, ptr @__UNIQUE_ID_pll339, ptr @__UNIQUE_ID_plltype329, ptr @__UNIQUE_ID_remotetype332, ptr @__UNIQUE_ID_saa6588343, ptr @__UNIQUE_ID_svhstype331, ptr @__UNIQUE_ID_triton1335, ptr @__UNIQUE_ID_triton1type321, ptr @__UNIQUE_ID_tuner340, ptr @__UNIQUE_ID_tunertype330, ptr @__UNIQUE_ID_vsfx336, ptr @__UNIQUE_ID_vsfxtype322, ptr @__param_audioall, ptr @__param_audiodev, ptr @__param_audiomux, ptr @__param_autoload, ptr @__param_card, ptr @__param_gpiomask, ptr @__param_latency, ptr @__param_no_overlay, ptr @__param_pll, ptr @__param_remote, ptr @__param_svhs, ptr @__param_triton1, ptr @__param_tuner, ptr @__param_vsfx, ptr @avermedia_eeprom._entry, ptr @avermedia_eeprom._entry.426, ptr @avermedia_eeprom._entry.429, ptr @avermedia_eeprom._entry.432, ptr @avermedia_eeprom._entry_ptr, ptr @avermedia_eeprom._entry_ptr.428, ptr @avermedia_eeprom._entry_ptr.431, ptr @avermedia_eeprom._entry_ptr.434, ptr @boot_msp34xx._entry, ptr @boot_msp34xx._entry_ptr, ptr @bttv_check_chipset._entry, ptr @bttv_check_chipset._entry.224, ptr @bttv_check_chipset._entry.227, ptr @bttv_check_chipset._entry.230, ptr @bttv_check_chipset._entry.233, ptr @bttv_check_chipset._entry.236, ptr @bttv_check_chipset._entry.239, ptr @bttv_check_chipset._entry_ptr, ptr @bttv_check_chipset._entry_ptr.226, ptr @bttv_check_chipset._entry_ptr.229, ptr @bttv_check_chipset._entry_ptr.232, ptr @bttv_check_chipset._entry_ptr.235, ptr @bttv_check_chipset._entry_ptr.238, ptr @bttv_check_chipset._entry_ptr.241, ptr @bttv_handle_chipset._entry, ptr @bttv_handle_chipset._entry.244, ptr @bttv_handle_chipset._entry.247, ptr @bttv_handle_chipset._entry_ptr, ptr @bttv_handle_chipset._entry_ptr.246, ptr @bttv_handle_chipset._entry_ptr.249, ptr @bttv_idcard._entry, ptr @bttv_idcard._entry.169, ptr @bttv_idcard._entry.175, ptr @bttv_idcard._entry.180, ptr @bttv_idcard._entry.183, ptr @bttv_idcard._entry.188, ptr @bttv_idcard._entry_ptr, ptr @bttv_idcard._entry_ptr.171, ptr @bttv_idcard._entry_ptr.177, ptr @bttv_idcard._entry_ptr.182, ptr @bttv_idcard._entry_ptr.185, ptr @bttv_idcard._entry_ptr.190, ptr @bttv_init_card2._entry, ptr @bttv_init_card2._entry.193, ptr @bttv_init_card2._entry.196, ptr @bttv_init_card2._entry.199, ptr @bttv_init_card2._entry.202, ptr @bttv_init_card2._entry.205, ptr @bttv_init_card2._entry.214, ptr @bttv_init_card2._entry.218, ptr @bttv_init_card2._entry_ptr, ptr @bttv_init_card2._entry_ptr.195, ptr @bttv_init_card2._entry_ptr.198, ptr @bttv_init_card2._entry_ptr.201, ptr @bttv_init_card2._entry_ptr.204, ptr @bttv_init_card2._entry_ptr.207, ptr @bttv_init_card2._entry_ptr.216, ptr @bttv_init_card2._entry_ptr.220, ptr @flyvideo_gpio._entry, ptr @flyvideo_gpio._entry.373, ptr @flyvideo_gpio._entry.376, ptr @flyvideo_gpio._entry_ptr, ptr @flyvideo_gpio._entry_ptr.375, ptr @flyvideo_gpio._entry_ptr.378, ptr @hauppauge_eeprom._entry, ptr @hauppauge_eeprom._entry.396, ptr @hauppauge_eeprom._entry_ptr, ptr @hauppauge_eeprom._entry_ptr.398, ptr @identify_by_eeprom._entry, ptr @identify_by_eeprom._entry_ptr, ptr @init_PCI8604PW._entry, ptr @init_PCI8604PW._entry.465, ptr @init_PCI8604PW._entry.468, ptr @init_PCI8604PW._entry.471, ptr @init_PCI8604PW._entry.474, ptr @init_PCI8604PW._entry_ptr, ptr @init_PCI8604PW._entry_ptr.467, ptr @init_PCI8604PW._entry_ptr.470, ptr @init_PCI8604PW._entry_ptr.473, ptr @init_PCI8604PW._entry_ptr.476, ptr @init_PXC200._entry, ptr @init_PXC200._entry.441, ptr @init_PXC200._entry.444, ptr @init_PXC200._entry.447, ptr @init_PXC200._entry_ptr, ptr @init_PXC200._entry_ptr.443, ptr @init_PXC200._entry_ptr.446, ptr @init_PXC200._entry_ptr.449, ptr @init_RTV24._entry, ptr @init_RTV24._entry.452, ptr @init_RTV24._entry.455, ptr @init_RTV24._entry.458, ptr @init_RTV24._entry_ptr, ptr @init_RTV24._entry_ptr.454, ptr @init_RTV24._entry_ptr.457, ptr @init_RTV24._entry_ptr.460, ptr @miro_pinnacle_gpio._entry, ptr @miro_pinnacle_gpio._entry.368, ptr @miro_pinnacle_gpio._entry_ptr, ptr @miro_pinnacle_gpio._entry_ptr.370, ptr @modtec_eeprom._entry, ptr @modtec_eeprom._entry.386, ptr @modtec_eeprom._entry.389, ptr @modtec_eeprom._entry.391, ptr @modtec_eeprom._entry_ptr, ptr @modtec_eeprom._entry_ptr.387, ptr @modtec_eeprom._entry_ptr.390, ptr @modtec_eeprom._entry_ptr.393, ptr @osprey_eeprom._entry, ptr @osprey_eeprom._entry.414, ptr @osprey_eeprom._entry.418, ptr @osprey_eeprom._entry.421, ptr @osprey_eeprom._entry_ptr, ptr @osprey_eeprom._entry_ptr.416, ptr @osprey_eeprom._entry_ptr.420, ptr @osprey_eeprom._entry_ptr.423, ptr @pvr_boot._entry, ptr @pvr_boot._entry.406, ptr @pvr_boot._entry_ptr, ptr @pvr_boot._entry_ptr.408, ptr @tea575x_init._entry, ptr @tea575x_init._entry_ptr, ptr @terratec_active_radio_upgrade._entry, ptr @terratec_active_radio_upgrade._entry_ptr, ptr @no_overlay, ptr @triton1, ptr @vsfx, ptr @latency, ptr @gpiomask, ptr @audioall, ptr @autoload, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @bttv_tvcards, ptr @cards, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @card, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @audiomux, ptr @.str.181, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @eeprom_data, ptr @.str.191, ptr @.str.192, ptr @pll, ptr @tuner, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @svhs, ptr @remote, ptr @bttv_init_card2.addrs, ptr @.str.208, ptr @audiodev, ptr @bttv_init_card2.addrs.209, ptr @.str.210, ptr @bttv_init_card2.addrs.211, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @bttv_init_card2.addrs.217, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.248, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @gvc1100_muxsel.masks, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @miro_tunermap, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.369, ptr @.str.371, ptr @.str.372, ptr @.str.374, ptr @.str.377, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @tvaudio_addrs.addrs, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.388, ptr @.str.392, ptr @.str.394, ptr @.str.395, ptr @.str.397, ptr @bttv_tea_ops, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.407, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.415, ptr @.str.417, ptr @.str.419, ptr @.str.422, ptr @tuner_0_table, ptr @tuner_1_table, ptr @.str.424, ptr @.str.425, ptr @.str.427, ptr @.str.430, ptr @.str.433, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @init_PXC200.vals, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.442, ptr @.str.445, ptr @.str.448, ptr @.str.450, ptr @.str.451, ptr @.str.453, ptr @.str.456, ptr @.str.459, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.466, ptr @.str.469, ptr @.str.472, ptr @.str.475, ptr @rv605_muxsel.muxgpio, ptr @kodicom4400r_muxsel.map, ptr @master, ptr @xguard_muxsel.masks, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @gv800s_muxsel.map, ptr @switch.table.bttv_init_card2], section "llvm.metadata"
@0 = internal global [494 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_overlay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @triton1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsfx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiomask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioall to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoload to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_tvcards to i32), i32 9352, i32 11712, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards to i32), i32 1920, i32 2400, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_idcard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_idcard._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_idcard._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audiomux to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_idcard._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_idcard._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_idcard._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_data to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svhs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2.addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audiodev to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2.addrs.209 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2.addrs.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2.addrs.217 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_init_card2._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_check_chipset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_check_chipset._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_check_chipset._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_check_chipset._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_check_chipset._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_check_chipset._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_check_chipset._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_handle_chipset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_handle_chipset._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_handle_chipset._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gvc1100_muxsel.masks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_by_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miro_tunermap to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miro_pinnacle_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miro_pinnacle_gpio._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flyvideo_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flyvideo_gpio._entry.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flyvideo_gpio._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_addrs.addrs to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modtec_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modtec_eeprom._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modtec_eeprom._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modtec_eeprom._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_tea_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea575x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_active_radio_upgrade._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr_boot._entry.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osprey_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osprey_eeprom._entry.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osprey_eeprom._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osprey_eeprom._entry.421 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_0_table to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_1_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_eeprom._entry.426 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_eeprom._entry.429 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_eeprom._entry.432 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_msp34xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PXC200.vals to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PXC200._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PXC200._entry.441 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PXC200._entry.444 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PXC200._entry.447 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_RTV24._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_RTV24._entry.452 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_RTV24._entry.455 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_RTV24._entry.458 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.459 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PCI8604PW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PCI8604PW._entry.465 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PCI8604PW._entry.468 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PCI8604PW._entry.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_PCI8604PW._entry.474 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv605_muxsel.muxgpio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kodicom4400r_muxsel.map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xguard_muxsel.masks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv800s_muxsel.map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bttv_init_card2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @avermedia_tvphone_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @avermedia_tv_stereo_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @winview_volume(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @terratv_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @PXC200_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext 30, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @PXC200_muxsel.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@PXC200_muxsel, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !1050

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @PXC200_muxsel.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.485, i32 noundef %1, i32 noundef %call) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call i32 @bttv_I2CRead(ptr noundef %btv, i8 noundef zeroext 30, ptr noundef null) #7
  %and = and i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body13, label %if.end31

do.body13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @PXC200_muxsel.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@PXC200_muxsel, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !1050

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %nr27 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %2 = ptrtoint ptr %nr27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr27, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @PXC200_muxsel.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.487, i32 noundef %3, i32 noundef %call10) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end9
  %cardid = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 4
  %4 = ptrtoint ptr %cardid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cardid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 537531029, i32 %5)
  %cmp = icmp eq i32 %5, 537531029
  %spec.select = select i1 %cmp, i32 754, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1051
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %7 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !1052
  %9 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr38 = getelementptr i8, ptr %10, i32 512
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #7, !srcloc !1053
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1054
  %13 = ptrtoint ptr %cardid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cardid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 537531029, i32 %14)
  %cmp43 = icmp eq i32 %14, 537531029
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %and45 = and i32 %12, -641
  %and46 = shl i32 %input, 8
  %shl = and i32 %and46, 512
  %and48 = shl i32 %input, 7
  %shl49 = and i32 %and48, 128
  %or47 = or i32 %shl49, %shl
  %or50 = or i32 %or47, %and45
  br label %do.body56

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %and51 = and i32 %12, -769
  %and52 = shl i32 %input, 8
  %shl53 = and i32 %and52, 768
  %or54 = or i32 %and51, %shl53
  br label %do.body56

do.body56:                                        ; preds = %if.else, %if.then44
  %bitmask.1 = phi i32 [ %or50, %if.then44 ], [ %or54, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1055
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %bitmask.1)
  %16 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr60 = getelementptr i8, ptr %17, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %15) #7, !srcloc !1052
  %18 = ptrtoint ptr %cardid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cardid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 537531029, i32 %19)
  %cmp62 = icmp eq i32 %19, 537531029
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr70 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %23 = and i32 %22, -1610612737
  br i1 %cmp62, label %do.body64, label %do.body79

do.body64:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %24 = or i32 %23, 1073741824
  %25 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr77 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %24) #7, !srcloc !1052
  br label %do.body93

do.body79:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr91 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %23) #7, !srcloc !1052
  br label %do.body93

do.body93:                                        ; preds = %do.body79, %do.body64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @PXC200_muxsel.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@PXC200_muxsel, %if.then105)) #7
          to label %cleanup [label %if.then105], !srcloc !1050

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %nr107 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %29 = ptrtoint ptr %nr107 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr107, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @PXC200_muxsel.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.489, i32 noundef %30, i32 noundef %input) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %do.body93, %if.then25, %do.body13, %if.then8, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @winfast2000_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gvbctv3pci_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fv2000s_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvbt878p9b_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rv605_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [16 x i8], ptr @rv605_muxsel.muxgpio, i32 0, i32 %input
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 127, i32 noundef %conv) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 512, i32 noundef 512) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 512, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1152, i32 noundef 1152) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1152, i32 noundef 128) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @windvr_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gvbctv5pci_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eagle_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %input, 3
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 3, i32 noundef %and) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1056
  tail call void @arm_heavy_mb() #7
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %0 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !1053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1057
  %3 = or i32 %2, 33554432
  %4 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #7, !srcloc !1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1058
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !1053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1059
  %9 = and i32 %8, -1073741825
  %10 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %9) #7, !srcloc !1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1060
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 172
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !1053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1061
  %15 = and i32 %14, -1073741825
  %16 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr27 = getelementptr i8, ptr %17, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %15) #7, !srcloc !1052
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 2097152, i32 noundef 2097152) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adtvk503_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xguard_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %input, 15
  %arrayidx = getelementptr [16 x i32], ptr @xguard_muxsel.masks, i32 0, i32 %rem
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phytec_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %input, 3
  %svhs = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 7
  %0 = ptrtoint ptr %svhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svhs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %input)
  %cmp = icmp eq i32 %1, %input
  %spec.store.select = select i1 %cmp, i32 0, i32 %rem
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 3, i32 noundef %spec.store.select) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ivc120_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %input, 3
  %div86 = lshr i32 %input, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %0 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ivc120_muxsel.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ivc120_muxsel, %if.then4)) #7
          to label %do.end7 [label %if.then4], !srcloc !1050

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ivc120_muxsel.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.482, i32 noundef %2, i32 noundef %input, i32 noundef %div86, i32 noundef %rem) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div86)
  %cmp8 = icmp eq i32 %div86, 3
  %3 = trunc i32 %rem to i8
  %phi.cast = mul nuw nsw i8 %3, 5
  %cond = select i1 %cmp8, i8 %phi.cast, i8 0
  %call9 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -106, i8 noundef zeroext 0, i8 noundef zeroext %cond, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %input)
  %cmp10 = icmp ult i32 %input, 4
  %cond17 = select i1 %cmp10, i8 %phi.cast, i8 0
  %call19 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -104, i8 noundef zeroext 0, i8 noundef zeroext %cond17, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div86)
  %cmp20 = icmp eq i32 %div86, 1
  %cond27 = select i1 %cmp20, i8 %phi.cast, i8 0
  %call29 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -102, i8 noundef zeroext 0, i8 noundef zeroext %cond27, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div86)
  %cmp30 = icmp eq i32 %div86, 2
  %cond57 = select i1 %cmp30, i8 3, i8 0
  %cond37 = select i1 %cmp30, i8 %phi.cast, i8 0
  %call39 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -100, i8 noundef zeroext 0, i8 noundef zeroext %cond37, i32 noundef 1) #7
  %conv43 = select i1 %cmp8, i8 3, i8 0
  %call44 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -106, i8 noundef zeroext 2, i8 noundef zeroext %conv43, i32 noundef 1) #7
  %conv48 = select i1 %cmp10, i8 3, i8 0
  %call49 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -104, i8 noundef zeroext 2, i8 noundef zeroext %conv48, i32 noundef 1) #7
  %conv53 = select i1 %cmp20, i8 3, i8 0
  %call54 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -102, i8 noundef zeroext 2, i8 noundef zeroext %conv53, i32 noundef 1) #7
  %call59 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext -100, i8 noundef zeroext 2, i8 noundef zeroext %cond57, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gvc1100_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %input, 3
  %arrayidx = getelementptr [4 x i32], ptr @gvc1100_muxsel.masks, i32 0, i32 %rem
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolo_tetra_muxsel(ptr nocapture noundef readonly %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %0 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.body7_crit_edge, label %do.body1

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @picolo_tetra_muxsel.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@picolo_tetra_muxsel, %if.then4)) #7
          to label %do.body7 [label %if.then4], !srcloc !1050

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @picolo_tetra_muxsel.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.479, i32 noundef %2, i32 noundef %input) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then4, %do.body1, %entry.do.body7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1062
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %input, 20
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %4 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !1052
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sigmaSQ_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %input, 7
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 15, i32 noundef 15) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 15, i32 noundef %rem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sigmaSLC_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 1536, i32 noundef 1536) #7
  %rem = shl i32 %input, 9
  %shl = and i32 %rem, 1536
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1536, i32 noundef %shl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tibetCS16_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %input, 16
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 983040, i32 noundef %shl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kodicom4400r_muxsel(ptr nocapture noundef readonly %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 8
  %arrayidx = getelementptr [32 x ptr], ptr @master, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr4 = getelementptr inbounds %struct.bttv_core, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %nr4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr4, align 8
  %sub = add i32 %1, 1
  %add = sub i32 %sub, %5
  %and = and i32 %add, 3
  %arrayidx5 = getelementptr [4 x i8], ptr @kodicom4400r_muxsel.map, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %7 to i32
  %and6 = and i32 %input, 15
  %arrayidx7 = getelementptr %struct.bttv, ptr %3, i32 0, i32 65, i32 %conv
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %conv8)
  %cmp9.not = icmp eq i32 %and6, %conv8
  br i1 %cmp9.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = shl i8 %7, 4
  %11 = and i8 %10, 48
  %12 = and i8 %9, 15
  %or5.i41 = or i8 %11, %12
  %or5.i = zext i8 %or5.i41 to i32
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 511, i32 noundef %or5.i) #7
  %or7.i = or i32 %or5.i, 256
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 511, i32 noundef %or7.i) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 511, i32 noundef %or5.i) #7
  %conv15 = trunc i32 %and6 to i8
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv15, ptr %arrayidx7, align 1
  %14 = or i8 %11, -128
  %or.i = zext i8 %14 to i32
  %or5.i39 = or i32 %and6, %or.i
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 511, i32 noundef %or5.i39) #7
  %or7.i40 = or i32 %or5.i39, 256
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 511, i32 noundef %or7.i40) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 511, i32 noundef %or5.i39) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geovision_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %input, 15
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 15, i32 noundef 15) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 15, i32 noundef %rem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv800s_muxsel(ptr nocapture noundef readonly %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 8
  %arrayidx = getelementptr [32 x ptr], ptr @master, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %input, 3
  %nr4 = getelementptr inbounds %struct.bttv_core, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %nr4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr4, align 8
  %sub = sub i32 %1, %5
  %and = and i32 %sub, 3
  %arrayidx6 = getelementptr [4 x [4 x i32]], ptr @gv800s_muxsel.map, i32 0, i32 %and, i32 %rem
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %7, 15
  %arrayidx8 = getelementptr %struct.bttv, ptr %3, i32 0, i32 65, i32 %and
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %conv)
  %cmp9.not = icmp eq i32 %and7, %conv
  br i1 %cmp9.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = trunc i32 %and to i8
  %10 = and i8 %9, 15
  %11 = shl nuw nsw i8 %conv14, 4
  %or12.i = or i8 %11, %10
  %or.i = zext i8 %or12.i to i32
  %or5.i = or i32 %or.i, 65536
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 65663, i32 noundef %or5.i) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 131072, i32 noundef 131072) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 262144, i32 noundef 0) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 131072, i32 noundef -131073) #7
  %conv15 = trunc i32 %and7 to i8
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv15, ptr %arrayidx8, align 1
  %or12.i38 = or i8 %11, %conv15
  %or.i39 = zext i8 %or12.i38 to i32
  %or5.i40 = or i32 %or.i39, 65536
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 65663, i32 noundef %or5.i40) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 131072, i32 noundef 131072) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 262144, i32 noundef 262144) #7
  tail call void @bttv_gpio_bits(ptr noundef nonnull %3, i32 noundef 131072, i32 noundef -131073) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @td3116_muxsel(ptr noundef %btv, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %input, 3
  %shr = and i32 %and, 1
  %and1 = shl i32 %input, 1
  %shl = and i32 %and1, 14
  %mul = shl nuw nsw i32 %shr, 2
  %shl2 = shl nuw nsw i32 %shl, %mul
  %or = or i32 %shl2, 17
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262399, i32 noundef %or) #7
  %or.i = or i32 %shl2, 262161
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262399, i32 noundef %or.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262399, i32 noundef %or) #7
  %1 = mul nuw nsw i32 %shr, 17
  %2 = add nuw nsw i32 %1, %shl2
  %or6 = xor i32 %2, 16
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262399, i32 noundef %or6) #7
  %or.i15 = or i32 %or6, 262144
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262399, i32 noundef %or.i15) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262399, i32 noundef %or6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_idcard(ptr nocapture noundef %btv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_device, align 2
  %conv = zext i16 %3 to i32
  %shl = shl nuw i32 %conv, 16
  %cardid = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 4
  %4 = ptrtoint ptr %cardid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %cardid, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %subsystem_vendor, align 4
  %conv3 = zext i16 %6 to i32
  %or = or i32 %shl, %conv3
  store i32 %or, ptr %cardid, align 8
  %7 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or, label %entry.for.body_crit_edge [
    i32 0, label %entry.if.end53_crit_edge
    i32 -1, label %entry.if.end53_crit_edge222
  ]

entry.if.end53_crit_edge222:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %8 = phi i32 [ %10, %for.body.for.body_crit_edge ], [ 334168176, %entry.for.body_crit_edge ]
  %i.0215 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type.0214 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %or)
  %cmp15 = icmp eq i32 %8, %or
  %spec.select = select i1 %cmp15, i32 %i.0215, i32 %type.0214
  %inc = add i32 %i.0215, 1
  %arrayidx = getelementptr [160 x %struct.CARD], ptr @cards, i32 0, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %cmp10.not = icmp eq i32 %10, 0
  br i1 %cmp10.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp18.not = icmp eq i32 %spec.select, -1
  %nr36 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %11 = ptrtoint ptr %nr36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr36, align 8
  br i1 %cmp18.not, label %do.end33, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr [160 x %struct.CARD], ptr @cards, i32 0, i32 %spec.select, i32 2
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %cardnr = getelementptr [160 x %struct.CARD], ptr @cards, i32 0, i32 %spec.select, i32 1
  %15 = ptrtoint ptr %cardnr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cardnr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef %conv3, i32 noundef %conv) #10
  %type30 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %17 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %type30, align 4
  br label %if.end53

do.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i32 noundef %12, i32 noundef %conv3, i32 noundef %conv) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bttv_idcard.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bttv_idcard, %if.then48)) #7
          to label %if.end53 [label %if.then48], !srcloc !1050

if.then48:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bttv_idcard.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.174) #7
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %do.end33, %do.end, %entry.if.end53_crit_edge, %entry.if.end53_crit_edge222
  %nr55 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %18 = ptrtoint ptr %nr55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr55, align 8
  %arrayidx56 = getelementptr [32 x i32], ptr @card, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %21)
  %cmp57 = icmp ult i32 %21, 167
  br i1 %cmp57, label %if.then59, label %if.end53.do.end68_crit_edge

if.end53.do.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %type64 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %22 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %type64, align 4
  br label %do.end68

do.end68:                                         ; preds = %if.then59, %if.end53.do.end68_crit_edge
  %type73 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %23 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type73, align 4
  %arrayidx74 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx74, align 4
  %27 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %28)
  %cmp81 = icmp ult i32 %28, 167
  %cond = select i1 %cmp81, ptr @.str.178, ptr @.str.179
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, i32 noundef %19, ptr noundef %26, i32 noundef %24, ptr noundef nonnull %cond) #10
  %29 = load i32, ptr @audioall, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp84 = icmp eq i32 %29, -1
  %30 = load i32, ptr @audiomux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp87 = icmp eq i32 %30, -1
  br i1 %cmp84, label %land.lhs.true86, label %if.end90

land.lhs.true86:                                  ; preds = %do.end68
  br i1 %cmp87, label %land.lhs.true86.cleanup_crit_edge, label %land.lhs.true86.for.body97.preheader_crit_edge

land.lhs.true86.for.body97.preheader_crit_edge:   ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body97.preheader

land.lhs.true86.cleanup_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end90:                                         ; preds = %do.end68
  br i1 %cmp87, label %for.body112.preheader, label %if.end90.for.body97.preheader_crit_edge

if.end90.for.body97.preheader_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body97.preheader

for.body97.preheader:                             ; preds = %if.end90.for.body97.preheader_crit_edge, %land.lhs.true86.for.body97.preheader_crit_edge
  %31 = load i32, ptr @audiomux, align 4
  %32 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type73, align 4
  %arrayidx102 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %33, i32 6, i32 0
  %34 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %arrayidx102, align 4
  %35 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @audiomux, i32 0, i32 1), align 4
  %36 = load i32, ptr %type73, align 4
  %arrayidx102.1 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %36, i32 6, i32 1
  %37 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %arrayidx102.1, align 4
  %or104.1 = or i32 %35, %31
  %38 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @audiomux, i32 0, i32 2), align 4
  %39 = load i32, ptr %type73, align 4
  %arrayidx102.2 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %39, i32 6, i32 2
  %40 = ptrtoint ptr %arrayidx102.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %arrayidx102.2, align 4
  %or104.2 = or i32 %38, %or104.1
  %41 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @audiomux, i32 0, i32 3), align 4
  %42 = load i32, ptr %type73, align 4
  %arrayidx102.3 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %42, i32 6, i32 3
  %43 = ptrtoint ptr %arrayidx102.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %arrayidx102.3, align 4
  %or104.3 = or i32 %41, %or104.2
  br label %if.end121

for.body112.preheader:                            ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type73, align 4
  %arrayidx117 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %45, i32 6, i32 0
  %46 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %29, ptr %arrayidx117, align 4
  %47 = load i32, ptr %type73, align 4
  %arrayidx117.1 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %47, i32 6, i32 1
  %48 = ptrtoint ptr %arrayidx117.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %29, ptr %arrayidx117.1, align 4
  %49 = load i32, ptr %type73, align 4
  %arrayidx117.2 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %49, i32 6, i32 2
  %50 = ptrtoint ptr %arrayidx117.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %29, ptr %arrayidx117.2, align 4
  %51 = load i32, ptr %type73, align 4
  %arrayidx117.3 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %51, i32 6, i32 3
  %52 = ptrtoint ptr %arrayidx117.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %29, ptr %arrayidx117.3, align 4
  br label %if.end121

if.end121:                                        ; preds = %for.body112.preheader, %for.body97.preheader
  %gpiobits.1 = phi i32 [ %29, %for.body112.preheader ], [ %or104.3, %for.body97.preheader ]
  %53 = load i32, ptr @gpiomask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp122.not = icmp eq i32 %53, -1
  %gpiobits.1. = select i1 %cmp122.not, i32 %gpiobits.1, i32 %53
  %54 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type73, align 4
  %gpiomask = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %55, i32 5
  %56 = ptrtoint ptr %gpiomask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %gpiobits.1., ptr %gpiomask, align 4
  %57 = ptrtoint ptr %nr55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr55, align 8
  %59 = load i32, ptr %type73, align 4
  %gpiomask137 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %59, i32 5
  %60 = ptrtoint ptr %gpiomask137 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gpiomask137, align 4
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %58, i32 noundef %61) #10
  %62 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type73, align 4
  %arrayidx153 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %63, i32 6, i32 0
  %64 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx153, align 4
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.187, i32 noundef %65) #10
  %66 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type73, align 4
  %arrayidx153.1 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %67, i32 6, i32 1
  %68 = ptrtoint ptr %arrayidx153.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx153.1, align 4
  %call154.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.186, i32 noundef %69) #10
  %70 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type73, align 4
  %arrayidx153.2 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %71, i32 6, i32 2
  %72 = ptrtoint ptr %arrayidx153.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx153.2, align 4
  %call154.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.186, i32 noundef %73) #10
  %74 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type73, align 4
  %arrayidx153.3 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %75, i32 6, i32 3
  %76 = ptrtoint ptr %arrayidx153.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx153.3, align 4
  %call154.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.186, i32 noundef %77) #10
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %land.lhs.true86.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_init_card1(ptr noundef %btv) local_unnamed_addr #1 align 64 {
entry:
  %fw_entry.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.490)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 10, label %entry.sw.bb_crit_edge26
    i32 147, label %entry.sw.bb1_crit_edge
    i32 68, label %entry.sw.bb1_crit_edge27
    i32 13, label %sw.bb2
    i32 80, label %sw.bb3
    i32 113, label %entry.sw.bb4_crit_edge
    i32 123, label %entry.sw.bb4_crit_edge28
    i32 94, label %entry.sw.bb4_crit_edge29
    i32 134, label %sw.bb5
    i32 166, label %sw.bb6
  ]

entry.sw.bb4_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26
  tail call fastcc void @boot_msp34xx(ptr noundef %btv, i32 noundef 5)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge27
  tail call fastcc void @boot_msp34xx(ptr noundef %btv, i32 noundef 20)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @boot_msp34xx(ptr noundef %btv, i32 noundef 11)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i) #7
  %3 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i, align 4, !annotation !1063
  %pci.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef nonnull @.str.403, ptr noundef %dev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 8
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.404, i32 noundef %7) #10
  br label %pvr_boot.exit

if.end.i:                                         ; preds = %sw.bb3
  %8 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_entry.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 9437185) #7
  call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 2147480) #7
  call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 8388608) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 2147480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp3.not.i.i, label %if.end.i.for.end14.i.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.for.end14.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %n.04.i.i = phi i32 [ %inc13.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %n.04.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %18 = and i8 %17, 1
  %19 = zext i8 %18 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %19) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %20 = lshr i8 %17, 1
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %22) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %23 = lshr i8 %17, 2
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %24 = and i8 %23, 1
  %25 = zext i8 %24 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %25) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %26 = lshr i8 %17, 3
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %28) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %29 = lshr i8 %17, 4
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %31) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %32 = lshr i8 %17, 5
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %34) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %35 = lshr i8 %17, 6
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %36 = and i8 %35, 1
  %37 = zext i8 %36 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %37) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %38 = lshr i8 %17, 7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %39 = zext i8 %38 to i32
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1, i32 noundef %39) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %inc13.i.i = add nuw i32 %n.04.i.i, 1
  %exitcond6.not.i.i = icmp eq i32 %inc13.i.i, %13
  br i1 %exitcond6.not.i.i, label %for.body.i.i.for.end14.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end14.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14.i.i

for.end14.i.i:                                    ; preds = %for.body.i.i.for.end14.i.i_crit_edge, %if.end.i.for.end14.i.i_crit_edge
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 2147480) #7
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %for.body19.i.i.for.body19.i.i_crit_edge, %for.end14.i.i
  %i.15.i.i = phi i32 [ 0, %for.end14.i.i ], [ %inc23.i.i, %for.body19.i.i.for.body19.i.i_crit_edge ]
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 1048576) #7
  %inc23.i.i = add nuw nsw i32 %i.15.i.i, 1
  %exitcond7.not.i.i = icmp eq i32 %inc23.i.i, 30
  br i1 %exitcond7.not.i.i, label %pvr_altera_load.exit.i, label %for.body19.i.i.for.body19.i.i_crit_edge

for.body19.i.i.for.body19.i.i_crit_edge:          ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19.i.i

pvr_altera_load.exit.i:                           ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1048576, i32 noundef 0) #7
  %nr9.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %41 = ptrtoint ptr %nr9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr9.i, align 8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.407, i32 noundef %42, ptr noundef nonnull @.str.410) #10
  %43 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_entry.i, align 4
  call void @release_firmware(ptr noundef %44) #7
  br label %pvr_boot.exit

pvr_boot.exit:                                    ; preds = %pvr_altera_load.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge28, %entry.sw.bb4_crit_edge29
  %use_i2c_hw = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 13
  %45 = ptrtoint ptr %use_i2c_hw to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %use_i2c_hw, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %nr.i18 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %46 = ptrtoint ptr %nr.i18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr.i18, align 8
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.450, i32 noundef %47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1064
  tail call void @arm_heavy_mb() #7
  %bt848_mmio.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %48 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -81152) #7, !srcloc !1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1065
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %51, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 234881024) #7, !srcloc !1052
  tail call void @msleep(i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1066
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %53, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 503316480) #7, !srcloc !1052
  tail call void @msleep(i32 noundef 10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1067
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %55, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 234881024) #7, !srcloc !1052
  %56 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %57, i32 512
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !1053
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1068
  %60 = and i32 %59, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %60)
  %.not.i = icmp eq i32 %60, 524288
  br i1 %.not.i, label %sw.bb5.do.body36.i_crit_edge, label %do.end31.i

sw.bb5.do.body36.i_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body36.i

do.end31.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %nr.i18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr.i18, align 8
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.453, i32 noundef %62, i32 noundef %59) #10
  br label %do.body36.i

do.body36.i:                                      ; preds = %do.end31.i, %sw.bb5.do.body36.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1069
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %64, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 239337472) #7, !srcloc !1052
  tail call void @msleep(i32 noundef 10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1070
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %66, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 507772928) #7, !srcloc !1052
  tail call void @msleep(i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1071
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %68, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 234881024) #7, !srcloc !1052
  tail call void @msleep(i32 noundef 1) #7
  %69 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %70, i32 512
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #7, !srcloc !1053
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1072
  %73 = and i32 %72, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %74 = icmp eq i32 %73, 0
  %75 = ptrtoint ptr %nr.i18 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr.i18, align 8
  br i1 %74, label %do.end78.i, label %do.end70.i

do.end70.i:                                       ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #9
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.456, i32 noundef %76, i32 noundef %72) #10
  br label %sw.epilog

do.end78.i:                                       ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #9
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.459, i32 noundef %76) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @init_PCI8604PW(ptr noundef %btv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %do.end78.i, %do.end70.i, %sw.bb4, %pvr_boot.exit, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type, align 4
  %has_dvb = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %78, i32 12
  %79 = ptrtoint ptr %has_dvb to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load = load i16, ptr %has_dvb, align 2
  %80 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool.not = icmp eq i16 %80, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %id.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 1
  %81 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 878, i16 %82)
  %cmp.not.i20 = icmp eq i16 %82, 878
  br i1 %cmp.not.i20, label %if.end.i21, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i21:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %83 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i, label %if.end.i21.do.body9.i_crit_edge, label %do.body.i

if.end.i21.do.body9.i_crit_edge:                  ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.body.i:                                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bttv_reset_audio.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bttv_init_card1, %if.then6.i)) #7
          to label %do.body9.i [label %if.then6.i], !srcloc !1050

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i22 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %84 = ptrtoint ptr %nr.i22 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr.i22, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bttv_reset_audio.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.349, i32 noundef %85) #7
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.then6.i, %do.body.i, %if.end.i21.do.body9.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1073
  call void @arm_heavy_mb() #7
  %bt848_mmio.i23 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %86 = ptrtoint ptr %bt848_mmio.i23 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bt848_mmio.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %87, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 -2147483648) #7, !srcloc !1052
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 2147480) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1074
  call void @arm_heavy_mb() #7
  %89 = ptrtoint ptr %bt848_mmio.i23 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bt848_mmio.i23, align 4
  %add.ptr14.i25 = getelementptr i8, ptr %90, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i25, i32 0) #7, !srcloc !1052
  br label %if.end

if.end:                                           ; preds = %do.body9.i, %if.then.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @boot_msp34xx(ptr noundef %btv, i32 noundef %pin) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %pin
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef %shl, i32 noundef %shl) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef %shl, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 107374000) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef %shl, i32 noundef %shl) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %2 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.435) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_verbose to i32))
  %3 = load i32, ptr @bttv_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.436, i32 noundef %5, i32 noundef %pin) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_PCI8604PW(ptr nocapture noundef readonly %btv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %4 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %4)
  %cmp.not = icmp eq i32 %4, 96
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.461) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = and i32 %3, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %5)
  %cmp7.not = icmp eq i32 %5, 104
  br i1 %cmp7.not, label %do.body10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body10:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1075
  tail call void @arm_heavy_mb() #7
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %6 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33556480) #7, !srcloc !1052
  %8 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !1053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1076
  %11 = lshr i32 %10, 13
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.body10
  %state.0.in = phi i32 [ %11, %do.body10 ], [ %or, %for.cond.backedge ]
  %state.0 = and i32 %state.0.in, 7
  %12 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.491)
  switch i32 %state.0, label %do.end53 [
    i32 1, label %for.cond.do.body20_crit_edge
    i32 5, label %for.cond.do.body20_crit_edge108
    i32 6, label %for.cond.do.body20_crit_edge109
    i32 4, label %for.cond.do.body20_crit_edge110
    i32 7, label %do.end42
    i32 0, label %do.end48
  ]

for.cond.do.body20_crit_edge110:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

for.cond.do.body20_crit_edge109:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

for.cond.do.body20_crit_edge108:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

for.cond.do.body20_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.body20:                                        ; preds = %for.cond.do.body20_crit_edge, %for.cond.do.body20_crit_edge108, %for.cond.do.body20_crit_edge109, %for.cond.do.body20_crit_edge110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_PCI8604PW.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_PCI8604PW, %if.then25)) #7
          to label %do.body29 [label %if.then25], !srcloc !1050

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_PCI8604PW.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.464, i32 noundef %state.0) #7
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %do.body20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1077
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %14, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 2048) #7, !srcloc !1052
  tail call void @msleep(i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1078
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr38 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #7, !srcloc !1052
  tail call void @msleep(i32 noundef 1) #7
  %shl = shl nuw nsw i32 %state.0, 4
  %17 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr59 = getelementptr i8, ptr %18, i32 512
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #7, !srcloc !1053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1079
  %20 = lshr i32 %19, 13
  %and64 = and i32 %20, 7
  %or = or i32 %and64, %shl
  %21 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.492)
  switch i32 %or, label %do.end69 [
    i32 21, label %do.body29.for.cond.backedge_crit_edge
    i32 86, label %do.body29.for.cond.backedge_crit_edge111
    i32 100, label %do.body29.for.cond.backedge_crit_edge112
    i32 71, label %do.body29.for.cond.backedge_crit_edge113
  ]

do.body29.for.cond.backedge_crit_edge113:         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

do.body29.for.cond.backedge_crit_edge112:         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

do.body29.for.cond.backedge_crit_edge111:         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

do.body29.for.cond.backedge_crit_edge:            ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.body29.for.cond.backedge_crit_edge, %do.body29.for.cond.backedge_crit_edge111, %do.body29.for.cond.backedge_crit_edge112, %do.body29.for.cond.backedge_crit_edge113
  br label %for.cond

do.end42:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.466) #10
  br label %cleanup

do.end48:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.469) #10
  br label %cleanup

do.end53:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.472, i32 noundef %state.0) #10
  br label %cleanup

do.end69:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.475, i32 noundef %state.0, i32 noundef %and64) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %do.end53, %do.end48, %do.end42, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_init_card2(ptr noundef %btv) local_unnamed_addr #1 align 64 {
entry:
  %tv.i = alloca %struct.tveeprom, align 4
  %.compoundliteral = alloca [2 x i16], align 2
  %.compoundliteral396 = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_type = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 5
  %0 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tuner_type, align 4
  %type = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @bttv_readee(ptr noundef %btv, ptr noundef nonnull @eeprom_data, i32 noundef 160) #7
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(13) @eeprom_data, ptr noundef nonnull dereferenceable(13) @.str.350, i32 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then.if.then16.i_crit_edge, label %if.else.i

if.then.if.then16.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.else.i:                                        ; preds = %if.then
  %bcmp1.i = tail call i32 @bcmp(ptr noundef dereferenceable(7) getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 20), ptr noundef nonnull dereferenceable(7) @.str.351, i32 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %cmp2.i = icmp eq i32 %bcmp1.i, 0
  br i1 %cmp2.i, label %if.else.i.if.then16.i_crit_edge, label %if.else4.i

if.else.i.if.then16.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.else4.i:                                       ; preds = %if.else.i
  %3 = load i8, ptr @eeprom_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %3)
  %cmp5.i = icmp eq i8 %3, -124
  br i1 %cmp5.i, label %if.end13.i, label %if.else4.i.if.endthread-pre-split_crit_edge

if.else4.i.if.endthread-pre-split_crit_edge:      ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.endthread-pre-split

if.end13.i:                                       ; preds = %if.else4.i
  %4 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9.i = icmp eq i8 %4, 0
  br i1 %cmp9.i, label %if.end13.i.if.then16.i_crit_edge, label %if.end13.i.if.endthread-pre-split_crit_edge

if.end13.i.if.endthread-pre-split_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.endthread-pre-split

if.end13.i.if.then16.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i.if.then16.i_crit_edge, %if.else.i.if.then16.i_crit_edge, %if.then.if.then16.i_crit_edge
  %type.05.i = phi i32 [ 2, %if.end13.i.if.then16.i_crit_edge ], [ 97, %if.else.i.if.then16.i_crit_edge ], [ 23, %if.then.if.then16.i_crit_edge ]
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type.05.i, ptr %type, align 4
  %nr.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 8
  %arrayidx21.i = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %type.05.i
  %8 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx21.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.352, i32 noundef %7, ptr noundef %9, i32 noundef %type.05.i) #10
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.then16.i, %if.end13.i.if.endthread-pre-split_crit_edge, %if.else4.i.if.endthread-pre-split_crit_edge
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %11 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %2, %entry.if.end_crit_edge ]
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.493)
  switch i32 %11, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 11, label %if.end.sw.bb_crit_edge694
    i32 39, label %if.end.sw.bb_crit_edge695
    i32 52, label %if.end.sw.bb_crit_edge696
    i32 30, label %if.end.sw.bb3_crit_edge
    i32 27, label %if.end.sw.bb3_crit_edge697
    i32 19, label %if.end.sw.bb3_crit_edge698
    i32 8, label %if.end.sw.bb3_crit_edge699
    i32 36, label %if.end.sw.bb3_crit_edge700
    i32 35, label %if.end.sw.bb3_crit_edge701
    i32 56, label %if.end.sw.bb3_crit_edge702
    i32 65, label %if.end.sw.bb3_crit_edge703
    i32 71, label %if.end.sw.bb3_crit_edge704
    i32 21, label %if.end.sw.bb3_crit_edge705
    i32 54, label %if.end.sw.bb3_crit_edge706
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 10, label %if.end.sw.bb4_crit_edge707
    i32 80, label %if.end.sw.bb4_crit_edge708
    i32 13, label %if.end.sw.bb5_crit_edge
    i32 41, label %if.end.sw.bb5_crit_edge709
    i32 29, label %sw.bb6
    i32 121, label %sw.bb7
    i32 14, label %sw.bb8
    i32 25, label %if.end.sw.bb12_crit_edge
    i32 28, label %if.end.sw.bb12_crit_edge710
    i32 24, label %sw.bb14
    i32 40, label %sw.bb21
    i32 82, label %if.end.sw.bb28_crit_edge
    i32 83, label %if.end.sw.bb28_crit_edge711
    i32 84, label %if.end.sw.bb28_crit_edge712
    i32 85, label %if.end.sw.bb28_crit_edge713
    i32 86, label %if.end.sw.bb28_crit_edge714
    i32 87, label %if.end.sw.bb28_crit_edge715
    i32 88, label %if.end.sw.bb28_crit_edge716
    i32 89, label %if.end.sw.bb28_crit_edge717
    i32 140, label %if.end.sw.bb28_crit_edge718
    i32 90, label %if.end.sw.bb28_crit_edge719
    i32 91, label %if.end.sw.bb28_crit_edge720
    i32 92, label %if.end.sw.bb28_crit_edge721
    i32 93, label %sw.bb29
    i32 23, label %sw.bb30
    i32 118, label %sw.bb31
    i32 131, label %sw.bb32
    i32 132, label %sw.bb33
    i32 157, label %sw.bb34
  ]

if.end.sw.bb28_crit_edge721:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge720:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge719:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge718:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge717:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge716:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge715:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge714:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge713:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge712:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge711:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb12_crit_edge710:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end.sw.bb5_crit_edge709:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb4_crit_edge708:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end.sw.bb4_crit_edge707:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end.sw.bb3_crit_edge706:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge705:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge704:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge703:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge702:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge701:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge700:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge699:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge698:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge697:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb_crit_edge696:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge695:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge694:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge694, %if.end.sw.bb_crit_edge695, %if.end.sw.bb_crit_edge696
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 0) #7
  %call.i = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  %13 = lshr i32 %call.i, 10
  %and.i = and i32 %13, 63
  %sub.i = add nsw i32 %and.i, -1
  %call2.i = tail call i32 @bttv_I2CRead(ptr noundef %btv, i8 noundef zeroext -128, ptr noundef nonnull @.str.354) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %and.i)
  %cmp.i601 = icmp ult i32 %and.i, 33
  br i1 %cmp.i601, label %if.then.i, label %if.else40.i

if.then.i:                                        ; preds = %sw.bb
  %arrayidx.i = getelementptr [32 x i32], ptr @miro_tunermap, i32 0, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tuner_type, align 4
  %and3.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  %has_radio.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i602

if.then5.i:                                       ; preds = %if.then.i
  %17 = ptrtoint ptr %has_radio.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %has_radio.i, align 8
  %18 = and i32 %sub.i, 1073741823
  %19 = lshr i32 -545226753, %18
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.not.i, label %if.then5.i.if.end13.i603_crit_edge, label %if.then7.i

if.then5.i.if.end13.i603_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i603

if.then7.i:                                       ; preds = %if.then5.i
  %has_tea575x.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 59
  %21 = ptrtoint ptr %has_tea575x.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %has_tea575x.i, align 4
  %tea_gpio.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60
  %wren.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 2
  %22 = ptrtoint ptr %wren.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %wren.i, align 2
  %most.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 3
  %23 = ptrtoint ptr %most.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %most.i, align 1
  %clk.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 1
  %24 = ptrtoint ptr %clk.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %clk.i, align 1
  %25 = ptrtoint ptr %tea_gpio.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %tea_gpio.i, align 8
  %tea.i.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61
  %private_data.i.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 16
  %26 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %btv, ptr %private_data.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 15
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bttv_tea_ops, ptr %ops.i.i, align 4
  %call.i.i = tail call i32 @snd_tea575x_hw_init(ptr noundef %tea.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %28 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr.i.i, align 8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, i32 noundef %29) #10
  %mute.i.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 8
  %30 = ptrtoint ptr %mute.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %mute.i.i, align 8
  br label %if.end13.i603

if.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %has_tea575x.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %has_tea575x.i, align 4
  %32 = ptrtoint ptr %has_radio.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %has_radio.i, align 8
  br label %if.end13.i603

if.else.i602:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %has_radio.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %has_radio.i, align 8
  br label %if.end13.i603

if.end13.i603:                                    ; preds = %if.else.i602, %if.end.i.i, %do.end.i.i, %if.then5.i.if.end13.i603_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp14.not.i = icmp eq i32 %call2.i, -1
  br i1 %cmp14.not.i, label %if.end13.i603.do.end.i_crit_edge, label %if.then15.i

if.end13.i603.do.end.i_crit_edge:                 ; preds = %if.end13.i603
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then15.i:                                      ; preds = %if.end13.i603
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.494)
  switch i32 %35, label %if.then15.i.do.end.i_crit_edge [
    i32 1, label %if.then15.i.do.end.sink.split.i_crit_edge
    i32 39, label %if.then25.i
  ]

if.then15.i.do.end.sink.split.i_crit_edge:        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split.i

if.then15.i.do.end.i_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then25.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split.i

do.end.sink.split.i:                              ; preds = %if.then25.i, %if.then15.i.do.end.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 52, %if.then25.i ], [ 11, %if.then15.i.do.end.sink.split.i_crit_edge ]
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i, ptr %type, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.sink.split.i, %if.then15.i.do.end.i_crit_edge, %if.end13.i603.do.end.i_crit_edge
  %nr.i604 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %38 = ptrtoint ptr %nr.i604 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr.i604, align 8
  %40 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tuner_type, align 4
  %42 = ptrtoint ptr %has_radio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %has_radio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool33.not.i = icmp eq i32 %43, 0
  br i1 %tobool33.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.false.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %has_tea575x34.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 59
  %44 = ptrtoint ptr %has_tea575x34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %has_tea575x34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool35.not.i = icmp eq i32 %45, 0
  %cond.i = select i1 %tobool35.not.i, ptr @.str.359, ptr @.str.358
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %do.end.i.cond.end.i_crit_edge
  %cond36.i = phi ptr [ %cond.i, %cond.false.i ], [ @.str.357, %do.end.i.cond.end.i_crit_edge ]
  %cond38.i = select i1 %cmp14.not.i, ptr @.str.357, ptr @.str.360
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.355, i32 noundef %39, i32 noundef %and.i, i32 noundef %41, ptr noundef nonnull %cond36.i, ptr noundef nonnull %cond38.i) #10
  br label %sw.epilog

if.else40.i:                                      ; preds = %sw.bb
  %sub41.i = sub nuw nsw i32 64, %and.i
  %has_radio42.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %46 = ptrtoint ptr %has_radio42.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %has_radio42.i, align 8
  %47 = zext i32 %sub41.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.495)
  switch i32 %sub41.i, label %if.else40.i.sw.epilog.i_crit_edge [
    i32 1, label %if.else40.i.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb43.i
    i32 3, label %sw.bb46.i
    i32 4, label %sw.bb49.i
    i32 5, label %sw.bb51.i
    i32 6, label %sw.bb53.i
    i32 7, label %sw.bb55.i
  ]

if.else40.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

if.else40.i.sw.epilog.i_crit_edge:                ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb43.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %has_radio42.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %has_radio42.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb46.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %has_radio42.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %has_radio42.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb49.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb51.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb53.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb55.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb55.i, %sw.bb53.i, %sw.bb51.i, %sw.bb49.i, %sw.bb46.i, %sw.bb43.i, %if.else40.i.sw.epilog.sink.split.i_crit_edge
  %.sink117.i = phi i32 [ 16, %sw.bb55.i ], [ 16, %sw.bb53.i ], [ 16, %sw.bb51.i ], [ 8, %sw.bb49.i ], [ 8, %sw.bb46.i ], [ 8, %sw.bb43.i ], [ 16, %if.else40.i.sw.epilog.sink.split.i_crit_edge ]
  %info.0.ph.i = phi ptr [ @.str.366, %sw.bb55.i ], [ @.str.363, %sw.bb53.i ], [ @.str.365, %sw.bb51.i ], [ @.str.364, %sw.bb49.i ], [ @.str.363, %sw.bb46.i ], [ @.str.362, %sw.bb43.i ], [ @.str.361, %if.else40.i.sw.epilog.sink.split.i_crit_edge ]
  %tda9887_conf56.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 6
  %50 = ptrtoint ptr %tda9887_conf56.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink117.i, ptr %tda9887_conf56.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.else40.i.sw.epilog.i_crit_edge
  %info.0.i = phi ptr [ @.str.367, %if.else40.i.sw.epilog.i_crit_edge ], [ %info.0.ph.i, %sw.epilog.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp57.not.i = icmp eq i32 %call2.i, -1
  br i1 %cmp57.not.i, label %sw.epilog.i.do.end64.i_crit_edge, label %if.then58.i

sw.epilog.i.do.end64.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64.i

if.then58.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 52, ptr %type, align 4
  br label %do.end64.i

do.end64.i:                                       ; preds = %if.then58.i, %sw.epilog.i.do.end64.i_crit_edge
  %nr67.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %52 = ptrtoint ptr %nr67.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr67.i, align 8
  %54 = ptrtoint ptr %has_radio42.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %has_radio42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool69.not.i = icmp eq i32 %55, 0
  %cond70.i = select i1 %tobool69.not.i, ptr @.str.357, ptr @.str.360
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.369, i32 noundef %53, i32 noundef %sub41.i, ptr noundef nonnull %info.0.i, ptr noundef nonnull %cond70.i) #10
  %56 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 33, ptr %tuner_type, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge697, %if.end.sw.bb3_crit_edge698, %if.end.sw.bb3_crit_edge699, %if.end.sw.bb3_crit_edge700, %if.end.sw.bb3_crit_edge701, %if.end.sw.bb3_crit_edge702, %if.end.sw.bb3_crit_edge703, %if.end.sw.bb3_crit_edge704, %if.end.sw.bb3_crit_edge705, %if.end.sw.bb3_crit_edge706
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 1717984) #7
  %call.i605 = tail call i32 @bttv_gpio_read(ptr noundef %btv) #7
  %58 = lshr i32 %call.i605, 17
  %59 = and i32 %58, 7
  %60 = shl i32 %call.i605, 15
  %61 = and i32 %60, -2147483648
  %62 = or i32 %59, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %62)
  %63 = icmp ult i32 %62, 7
  br i1 %63, label %switch.hole_check, label %sw.bb3.do.end.i607_crit_edge

sw.bb3.do.end.i607_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i607

do.end.i607:                                      ; preds = %switch.hole_check.do.end.i607_crit_edge, %sw.bb3.do.end.i607_crit_edge
  %nr.i606 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %64 = ptrtoint ptr %nr.i606 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr.i606, align 8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.371, i32 noundef %65) #10
  br label %sw.epilog.i609

switch.hole_check:                                ; preds = %sw.bb3
  %switch.maskindex = trunc i32 %59 to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %66 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %switch.lobit.not = icmp eq i8 %66, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i607_crit_edge, label %switch.lookup

switch.hole_check.do.end.i607_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i607

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.bttv_init_card2, i32 0, i32 %62
  %67 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i609

sw.epilog.i609:                                   ; preds = %switch.lookup, %do.end.i607
  %tuner_type.0.i = phi i32 [ -1, %do.end.i607 ], [ %switch.load, %switch.lookup ]
  %and8.i = and i32 %call.i605, 8388608
  %and9.i = and i32 %call.i605, 4194304
  %and10.i = and i32 %call.i605, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  %and11.i = and i32 %call.i605, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %and15.i = and i32 %call.i605, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.360, ptr @.str.357
  %spec.select68.i = select i1 %tobool.not.i, i32 4, i32 %tuner_type.0.i
  %nr25.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %68 = ptrtoint ptr %nr25.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool26.not.i = icmp eq i32 %and9.i, 0
  %cond.i608 = select i1 %tobool26.not.i, ptr @.str.357, ptr @.str.360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool27.not.i = icmp eq i32 %and8.i, 0
  %cond28.i = select i1 %tobool27.not.i, ptr @.str.357, ptr @.str.360
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.374, i32 noundef %69, ptr noundef nonnull %cond.i608, ptr noundef nonnull %cond28.i, i32 noundef %spec.select68.i, i32 noundef %call.i605) #10
  %70 = ptrtoint ptr %nr25.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr25.i, align 8
  %cond37.i = select i1 %tobool16.not.i, ptr @.str.360, ptr @.str.357
  %cond39.i = select i1 %tobool12.not.i, ptr @.str.360, ptr @.str.357
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377, i32 noundef %71, ptr noundef nonnull %cond37.i, ptr noundef nonnull %cond39.i, ptr noundef nonnull %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select68.i)
  %cmp.not.i = icmp eq i32 %spec.select68.i, -1
  br i1 %cmp.not.i, label %sw.epilog.i609.if.end45.i_crit_edge, label %if.then43.i

sw.epilog.i609.if.end45.i_crit_edge:              ; preds = %sw.epilog.i609
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then43.i:                                      ; preds = %sw.epilog.i609
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select68.i, ptr %tuner_type, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %sw.epilog.i609.if.end45.i_crit_edge
  %has_radio46.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %73 = ptrtoint ptr %has_radio46.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and9.i, ptr %has_radio46.i, align 8
  br i1 %tobool12.not.i, label %if.then48.i, label %if.end45.i.sw.epilog_crit_edge

if.end45.i.sw.epilog_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %audio_mode_gpio.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 16
  %74 = ptrtoint ptr %audio_mode_gpio.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @lt9415_audio, ptr %audio_mode_gpio.i, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge707, %if.end.sw.bb4_crit_edge708
  tail call void @bttv_readee(ptr noundef %btv, ptr noundef nonnull @eeprom_data, i32 noundef 160) #7
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv.i) #7
  %75 = call ptr @memset(ptr %tv.i, i32 255, i32 68)
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tv.i, ptr noundef nonnull @eeprom_data) #7
  %tuner_type.i610 = getelementptr inbounds %struct.tveeprom, ptr %tv.i, i32 0, i32 3
  %76 = ptrtoint ptr %tuner_type.i610 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tuner_type.i610, align 4
  %78 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %tuner_type, align 4
  %79 = ptrtoint ptr %tv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tv.i, align 4
  %has_radio2.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %81 = ptrtoint ptr %has_radio2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %has_radio2.i, align 8
  %nr.i611 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %82 = ptrtoint ptr %nr.i611 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr.i611, align 8
  %model.i = getelementptr inbounds %struct.tveeprom, ptr %tv.i, i32 0, i32 11
  %84 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %model.i, align 4
  %call.i612 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.394, i32 noundef %83, i32 noundef %85) #10
  %86 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64900, i32 %87)
  %cmp.i613 = icmp eq i32 %87, 64900
  br i1 %cmp.i613, label %do.end6.i, label %sw.bb4.if.end.i_crit_edge

sw.bb4.if.end.i_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end6.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %nr.i611 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr.i611, align 8
  %90 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type, align 4
  %arrayidx.i615 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx.i615 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i615, align 4
  %94 = load ptr, ptr getelementptr inbounds ([167 x { ptr, ptr, ptr, ptr, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 }], ptr @bttv_tvcards, i32 0, i32 143, i32 0), align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, i32 noundef %89, ptr noundef %93, ptr noundef %94) #10
  %95 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 143, ptr %type, align 4
  %96 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr.i = load i32, ptr %model.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end6.i, %sw.bb4.if.end.i_crit_edge
  %97 = phi i32 [ %.pr.i, %do.end6.i ], [ %87, %sw.bb4.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 61334, i32 %97)
  %cmp15.i = icmp eq i32 %97, 61334
  br i1 %cmp15.i, label %if.then16.i616, label %if.end.i.hauppauge_eeprom.exit_crit_edge

if.end.i.hauppauge_eeprom.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hauppauge_eeprom.exit

if.then16.i616:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %radio_uses_msp_demodulator.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 57
  %98 = ptrtoint ptr %radio_uses_msp_demodulator.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %radio_uses_msp_demodulator.i, align 4
  br label %hauppauge_eeprom.exit

hauppauge_eeprom.exit:                            ; preds = %if.then16.i616, %if.end.i.hauppauge_eeprom.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv.i) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge709
  tail call void @bttv_readee(ptr noundef %btv, ptr noundef nonnull @eeprom_data, i32 noundef 160) #7
  %99 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 65), align 1
  %conv.i = zext i8 %99 to i32
  %and.i617 = and i32 %conv.i, 7
  %100 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 66), align 1
  %conv3.i = zext i8 %100 to i32
  %101 = lshr i32 %conv3.i, 4
  %and7.i = and i32 %conv3.i, 1
  %has_remote.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 32
  %102 = ptrtoint ptr %has_remote.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and7.i, ptr %has_remote.i, align 8
  %103 = zext i32 %and.i617 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.496)
  switch i32 %and.i617, label %sw.bb5.if.end14.i_crit_edge [
    i32 0, label %sw.bb5.if.then.i618_crit_edge
    i32 2, label %sw.bb5.if.then.i618_crit_edge722
  ]

sw.bb5.if.then.i618_crit_edge722:                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i618

sw.bb5.if.then.i618_crit_edge:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i618

sw.bb5.if.end14.i_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then.i618:                                     ; preds = %sw.bb5.if.then.i618_crit_edge, %sw.bb5.if.then.i618_crit_edge722
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %100)
  %cmp11.i = icmp ult i8 %100, -80
  br i1 %cmp11.i, label %if.then13.i, label %if.then.i618.if.end23.i_crit_edge

if.then.i618.if.end23.i_crit_edge:                ; preds = %if.then.i618
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.then.i618
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i619 = getelementptr [11 x i32], ptr @tuner_0_table, i32 0, i32 %101
  %104 = ptrtoint ptr %arrayidx.i619 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i619, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %sw.bb5.if.end14.i_crit_edge
  %tuner_type.0.i620 = phi i32 [ %105, %if.then13.i ], [ 0, %sw.bb5.if.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i617)
  %cmp15.i621 = icmp eq i32 %and.i617, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %100)
  %cmp18.i = icmp ult i8 %100, -96
  %or.cond.i = select i1 %cmp15.i621, i1 %cmp18.i, i1 false
  br i1 %or.cond.i, label %if.then20.i, label %if.end14.i.if.end23.i_crit_edge

if.end14.i.if.end23.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx21.i622 = getelementptr [10 x i32], ptr @tuner_1_table, i32 0, i32 %101
  %106 = ptrtoint ptr %arrayidx21.i622 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx21.i622, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end14.i.if.end23.i_crit_edge, %if.then.i618.if.end23.i_crit_edge
  %tuner_type.1.i = phi i32 [ %107, %if.then20.i ], [ %tuner_type.0.i620, %if.end14.i.if.end23.i_crit_edge ], [ 0, %if.then.i618.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i617)
  %cmp24.i = icmp eq i32 %and.i617, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %101)
  %cmp27.i = icmp eq i32 %101, 9
  %or.cond68.i = select i1 %cmp24.i, i1 %cmp27.i, i1 false
  %tuner_type.2.i = select i1 %or.cond68.i, i32 39, i32 %tuner_type.1.i
  %nr.i623 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %108 = ptrtoint ptr %nr.i623 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nr.i623, align 8
  %call.i624 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424, i32 noundef %109, i32 noundef %conv.i, i32 noundef %conv3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tuner_type.2.i)
  %tobool.not.i625 = icmp eq i32 %tuner_type.2.i, 0
  br i1 %tobool.not.i625, label %do.end43.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %tuner_type.2.i, ptr %tuner_type, align 4
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.427, i32 noundef %tuner_type.2.i) #10
  br label %avermedia_eeprom.exit

do.end43.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.430) #10
  br label %avermedia_eeprom.exit

avermedia_eeprom.exit:                            ; preds = %do.end43.i, %if.then34.i
  %111 = and i32 %conv.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool51.not.i = icmp eq i32 %111, 0
  %cond.i626 = select i1 %tobool51.not.i, ptr @.str.357, ptr @.str.360
  %112 = ptrtoint ptr %has_remote.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %has_remote.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool53.not.i = icmp eq i32 %113, 0
  %cond54.i = select i1 %tobool53.not.i, ptr @.str.357, ptr @.str.360
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, ptr noundef nonnull %cond.i626, ptr noundef nonnull %cond54.i) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 8192) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 644244) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 8192) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 16777215, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %115 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i627 = icmp eq i32 %115, 0
  br i1 %tobool.not.i627, label %sw.bb6.do.body.i_crit_edge, label %if.then.i628

sw.bb6.do.body.i_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i628:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.438) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i628, %sw.bb6.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1080
  tail call void @arm_heavy_mb() #7
  %bt848_mmio.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %116 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %117, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1879048192) #7, !srcloc !1052
  %call.i629 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.439) #10
  %call8.i = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext 94, i8 noundef zeroext 0, i8 noundef zeroext -128, i32 noundef 1) #7
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.442) #10
  %118 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %119, i32 268
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #7, !srcloc !1053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1081
  %121 = or i32 %120, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1082
  tail call void @arm_heavy_mb() #7
  %122 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %123, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %121) #7, !srcloc !1052
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 4) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 2147480) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 4) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.i
  %i.062.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i630 = getelementptr [13 x i32], ptr @init_PXC200.vals, i32 0, i32 %i.062.i
  %125 = ptrtoint ptr %arrayidx.i630 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i630, align 4
  %conv.i631 = trunc i32 %126 to i8
  %call27.i = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext 30, i8 noundef zeroext 0, i8 noundef zeroext %conv.i631, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27.i)
  %cmp28.not.i = icmp eq i32 %call27.i, -1
  br i1 %cmp28.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end33.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end33.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call36.i = tail call i32 @bttv_I2CRead(ptr noundef %btv, i8 noundef zeroext 31, ptr noundef null) #7
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.445, i32 noundef %126, i32 noundef %call27.i, i32 noundef %call36.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end33.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %init_PXC200.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

init_PXC200.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.448) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1083
  tail call void @arm_heavy_mb() #7
  %bt848_mmio.i632 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %127 = ptrtoint ptr %bt848_mmio.i632 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bt848_mmio.i632, align 4
  %add.ptr.i633 = getelementptr i8, ptr %128, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i633, i32 2048) #7, !srcloc !1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1084
  tail call void @arm_heavy_mb() #7
  %129 = ptrtoint ptr %bt848_mmio.i632 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bt848_mmio.i632, align 4
  %add.ptr4.i = getelementptr i8, ptr %130, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1024) #7, !srcloc !1052
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %has_radio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %131 = ptrtoint ptr %has_radio to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %has_radio, align 8
  %has_tea575x = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 59
  %132 = ptrtoint ptr %has_tea575x to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %has_tea575x, align 4
  %tea_gpio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60
  %wren = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 2
  %133 = ptrtoint ptr %wren to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 5, ptr %wren, align 2
  %most = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 3
  %134 = ptrtoint ptr %most to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 6, ptr %most, align 1
  %clk = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 1
  %135 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 3, ptr %clk, align 1
  %136 = ptrtoint ptr %tea_gpio to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 4, ptr %tea_gpio, align 8
  %tea.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61
  %private_data.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 16
  %137 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %btv, ptr %private_data.i, align 8
  %ops.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 15
  %138 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @bttv_tea_ops, ptr %ops.i, align 4
  %call.i634 = tail call i32 @snd_tea575x_hw_init(ptr noundef %tea.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i634)
  %tobool.not.i635 = icmp eq i32 %call.i634, 0
  br i1 %tobool.not.i635, label %do.end.i637, label %if.end.i640

do.end.i637:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i636 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %139 = ptrtoint ptr %nr.i636 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nr.i636, align 8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, i32 noundef %140) #10
  %mute.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 8
  %141 = ptrtoint ptr %mute.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %mute.i, align 8
  br label %sw.epilog

if.end.i640:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %has_tea575x to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %has_tea575x, align 4
  %143 = ptrtoint ptr %has_radio to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %has_radio, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge710
  %has_radio.i641 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %144 = ptrtoint ptr %has_radio.i641 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %has_radio.i641, align 8
  %has_tea575x.i642 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 59
  %145 = ptrtoint ptr %has_tea575x.i642 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %has_tea575x.i642, align 4
  %tea_gpio.i643 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60
  %wren.i644 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 2
  %146 = ptrtoint ptr %wren.i644 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 4, ptr %wren.i644, align 2
  %most.i645 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 3
  %147 = ptrtoint ptr %most.i645 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 5, ptr %most.i645, align 1
  %clk.i646 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 60, i32 1
  %148 = ptrtoint ptr %clk.i646 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 3, ptr %clk.i646, align 1
  %149 = ptrtoint ptr %tea_gpio.i643 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 2, ptr %tea_gpio.i643, align 8
  %mbox_iow.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 63
  %150 = ptrtoint ptr %mbox_iow.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 256, ptr %mbox_iow.i, align 4
  %mbox_ior.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 62
  %151 = ptrtoint ptr %mbox_ior.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 512, ptr %mbox_ior.i, align 8
  %mbox_csel.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 64
  %152 = ptrtoint ptr %mbox_csel.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1024, ptr %mbox_csel.i, align 8
  %tea.i.i647 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61
  %private_data.i.i648 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 16
  %153 = ptrtoint ptr %private_data.i.i648 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %btv, ptr %private_data.i.i648, align 8
  %ops.i.i649 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 15
  %154 = ptrtoint ptr %ops.i.i649 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @bttv_tea_ops, ptr %ops.i.i649, align 4
  %call.i.i650 = tail call i32 @snd_tea575x_hw_init(ptr noundef %tea.i.i647) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i650)
  %tobool.not.i.i651 = icmp eq i32 %call.i.i650, 0
  br i1 %tobool.not.i.i651, label %do.end.i655, label %tea575x_init.exit.i

tea575x_init.exit.i:                              ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %has_tea575x.i642 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %has_tea575x.i642, align 4
  %156 = ptrtoint ptr %has_radio.i641 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %has_radio.i641, align 8
  br label %sw.epilog

do.end.i655:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i652 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %157 = ptrtoint ptr %nr.i.i652 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nr.i.i652, align 8
  %call3.i.i653 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, i32 noundef %158) #10
  %mute.i.i654 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 61, i32 8
  %159 = ptrtoint ptr %mute.i.i654 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %mute.i.i654, align 8
  %160 = ptrtoint ptr %nr.i.i652 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %nr.i.i652, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.401, i32 noundef %161) #10
  %has_saa6588.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 9
  %162 = ptrtoint ptr %has_saa6588.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load.i = load i8, ptr %has_saa6588.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %has_saa6588.i, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %cardid = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 4
  %163 = ptrtoint ptr %cardid to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cardid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 805442639, i32 %164)
  %cmp15 = icmp eq i32 %164, 805442639
  br i1 %cmp15, label %if.then16, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then16:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %has_radio17 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %165 = ptrtoint ptr %has_radio17 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %has_radio17, align 8
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %166 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nr, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %167) #10
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %cardid22 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 4
  %168 = ptrtoint ptr %cardid22 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cardid22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 811602458, i32 %169)
  %cmp23 = icmp eq i32 %169, 811602458
  br i1 %cmp23, label %if.then24, label %sw.bb21.sw.epilog_crit_edge

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %has_radio25 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %170 = ptrtoint ptr %has_radio25 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %has_radio25, align 8
  %171 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 6, ptr %tuner_type, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge711, %if.end.sw.bb28_crit_edge712, %if.end.sw.bb28_crit_edge713, %if.end.sw.bb28_crit_edge714, %if.end.sw.bb28_crit_edge715, %if.end.sw.bb28_crit_edge716, %if.end.sw.bb28_crit_edge717, %if.end.sw.bb28_crit_edge718, %if.end.sw.bb28_crit_edge719, %if.end.sw.bb28_crit_edge720, %if.end.sw.bb28_crit_edge721
  tail call void @bttv_readee(ptr noundef %btv, ptr noundef nonnull @eeprom_data, i32 noundef 160) #7
  %172 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.i658 = icmp eq i32 %173, 0
  br i1 %cmp.i658, label %if.then.i663, label %for.body26.preheader.i

for.body26.preheader.i:                           ; preds = %sw.bb28
  %call.i.i659 = tail call i32 @csum_partial(ptr noundef getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 64), i32 noundef 16, i32 noundef 0) #7
  %174 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i659) #12, !srcloc !1085
  %neg.i.i.i = xor i32 %174, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %and.i660 = and i32 %shr.i.i.i, 255
  %175 = lshr i32 %neg.i.i.i, 24
  %add31.i = add nuw nsw i32 %and.i660, %175
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add31.i)
  %cmp32.i = icmp eq i32 %add31.i, 255
  br i1 %cmp32.i, label %for.body26.preheader.i.if.end45.i664_crit_edge, label %for.inc39.i

for.body26.preheader.i.if.end45.i664_crit_edge:   ; preds = %for.body26.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i664

if.then.i663:                                     ; preds = %sw.bb28
  %bcmp.i661 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @eeprom_data, ptr noundef nonnull dereferenceable(4) @.str.411, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i661)
  %tobool.not.i662 = icmp eq i32 %bcmp.i661, 0
  br i1 %tobool.not.i662, label %for.body.preheader.i, label %if.then.i663.cond.end.thread.i_crit_edge

if.then.i663.cond.end.thread.i_crit_edge:         ; preds = %if.then.i663
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.thread.i

for.body.preheader.i:                             ; preds = %if.then.i663
  %176 = load i8, ptr @eeprom_data, align 1
  %177 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 1), align 1
  %add.1.i = add i8 %177, %176
  %178 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 2), align 1
  %add.2.i = add i8 %add.1.i, %178
  %179 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 3), align 1
  %add.3.i = add i8 %add.2.i, %179
  %180 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 4), align 1
  %add.4.i = add i8 %add.3.i, %180
  %181 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 5), align 1
  %add.5.i = add i8 %add.4.i, %181
  %182 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 6), align 1
  %add.6.i = add i8 %add.5.i, %182
  %183 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 7), align 1
  %add.7.i = add i8 %add.6.i, %183
  %184 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 8), align 1
  %add.8.i = add i8 %add.7.i, %184
  %185 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 9), align 1
  %add.9.i = add i8 %add.8.i, %185
  %186 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 10), align 1
  %add.10.i = add i8 %add.9.i, %186
  %187 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 11), align 1
  %add.11.i = add i8 %add.10.i, %187
  %188 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 12), align 1
  %add.12.i = add i8 %add.11.i, %188
  %189 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 13), align 1
  %add.13.i = add i8 %add.12.i, %189
  %190 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 14), align 1
  %add.14.i = add i8 %add.13.i, %190
  %191 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 15), align 1
  %add.15.i = add i8 %add.14.i, %191
  %192 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 16), align 1
  %add.16.i = add i8 %add.15.i, %192
  %193 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 17), align 1
  %add.17.i = add i8 %add.16.i, %193
  %194 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 18), align 1
  %add.18.i = add i8 %add.17.i, %194
  %195 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 19), align 1
  %add.19.i = add i8 %add.18.i, %195
  %196 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 20), align 1
  %add.20.i = add i8 %add.19.i, %196
  %197 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 21), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %197, i8 %add.20.i)
  %cmp8.not.i = icmp eq i8 %197, %add.20.i
  br i1 %cmp8.not.i, label %for.body14.preheader.i, label %for.body.preheader.i.sw.epilog_crit_edge

for.body.preheader.i.sw.epilog_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body14.preheader.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = zext i8 %188 to i32
  %198 = mul nuw nsw i32 %conv16.i, 10
  %conv16.1.i = zext i8 %189 to i32
  %sub.1.i = add nsw i32 %198, -528
  %add17.1.i = add nsw i32 %sub.1.i, %conv16.1.i
  %mul.2.i = mul nsw i32 %add17.1.i, 10
  %conv16.2.i = zext i8 %190 to i32
  %sub.2.i = add nsw i32 %conv16.2.i, -48
  %add17.2.i = add nsw i32 %sub.2.i, %mul.2.i
  %mul.3.i = mul nsw i32 %add17.2.i, 10
  %conv16.3.i = zext i8 %191 to i32
  %sub.3.i = add nsw i32 %conv16.3.i, -48
  %add17.3.i = add nsw i32 %sub.3.i, %mul.3.i
  %mul.4.i = mul nsw i32 %add17.3.i, 10
  %conv16.4.i = zext i8 %192 to i32
  %sub.4.i = add nsw i32 %conv16.4.i, -48
  %add17.4.i = add nsw i32 %sub.4.i, %mul.4.i
  %mul.5.i = mul nsw i32 %add17.4.i, 10
  %conv16.5.i = zext i8 %193 to i32
  %sub.5.i = add nsw i32 %conv16.5.i, -48
  %add17.5.i = add nsw i32 %sub.5.i, %mul.5.i
  %mul.6.i = mul nsw i32 %add17.5.i, 10
  %conv16.6.i = zext i8 %194 to i32
  %sub.6.i = add nsw i32 %conv16.6.i, -48
  %add17.6.i = add nsw i32 %sub.6.i, %mul.6.i
  %mul.7.i = mul i32 %add17.6.i, 10
  %conv16.7.i = zext i8 %195 to i32
  %sub.7.i = add nsw i32 %conv16.7.i, -48
  %add17.7.i = add i32 %sub.7.i, %mul.7.i
  %mul.8.i = mul i32 %add17.7.i, 10
  %conv16.8.i = zext i8 %196 to i32
  %sub.8.i = add nsw i32 %conv16.8.i, -48
  %add17.8.i = add i32 %sub.8.i, %mul.8.i
  br label %lor.lhs.false.i

for.inc39.i:                                      ; preds = %for.body26.preheader.i
  %call.i.1.i = tail call i32 @csum_partial(ptr noundef getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 80), i32 noundef 16, i32 noundef 0) #7
  %199 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.1.i) #12, !srcloc !1085
  %neg.i.i.1.i = xor i32 %199, -1
  %shr.i.i.1.i = lshr i32 %neg.i.i.1.i, 16
  %and.1.i = and i32 %shr.i.i.1.i, 255
  %200 = lshr i32 %neg.i.i.1.i, 24
  %add31.1.i = add nuw nsw i32 %and.1.i, %200
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add31.1.i)
  %cmp32.1.i = icmp eq i32 %add31.1.i, 255
  br i1 %cmp32.1.i, label %for.inc39.i.if.end45.i664_crit_edge, label %for.inc39.1.i

for.inc39.i.if.end45.i664_crit_edge:              ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i664

for.inc39.1.i:                                    ; preds = %for.inc39.i
  %call.i.2.i = tail call i32 @csum_partial(ptr noundef getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 96), i32 noundef 16, i32 noundef 0) #7
  %201 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.2.i) #12, !srcloc !1085
  %neg.i.i.2.i = xor i32 %201, -1
  %shr.i.i.2.i = lshr i32 %neg.i.i.2.i, 16
  %and.2.i = and i32 %shr.i.i.2.i, 255
  %202 = lshr i32 %neg.i.i.2.i, 24
  %add31.2.i = add nuw nsw i32 %and.2.i, %202
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add31.2.i)
  %cmp32.2.i = icmp eq i32 %add31.2.i, 255
  br i1 %cmp32.2.i, label %for.inc39.1.i.if.end45.i664_crit_edge, label %for.inc39.2.i

for.inc39.1.i.if.end45.i664_crit_edge:            ; preds = %for.inc39.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i664

for.inc39.2.i:                                    ; preds = %for.inc39.1.i
  %call.i.3.i = tail call i32 @csum_partial(ptr noundef getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 112), i32 noundef 16, i32 noundef 0) #7
  %203 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.3.i) #12, !srcloc !1085
  %neg.i.i.3.i = xor i32 %203, -1
  %shr.i.i.3.i = lshr i32 %neg.i.i.3.i, 16
  %and.3.i = and i32 %shr.i.i.3.i, 255
  %204 = lshr i32 %neg.i.i.3.i, 24
  %add31.3.i = add nuw nsw i32 %and.3.i, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add31.3.i)
  %cmp32.3.i = icmp eq i32 %add31.3.i, 255
  br i1 %cmp32.3.i, label %for.inc39.2.i.if.end45.i664_crit_edge, label %for.inc39.2.i.sw.epilog_crit_edge

for.inc39.2.i.sw.epilog_crit_edge:                ; preds = %for.inc39.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc39.2.i.if.end45.i664_crit_edge:            ; preds = %for.inc39.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i664

if.end45.i664:                                    ; preds = %for.inc39.2.i.if.end45.i664_crit_edge, %for.inc39.1.i.if.end45.i664_crit_edge, %for.inc39.i.if.end45.i664_crit_edge, %for.body26.preheader.i.if.end45.i664_crit_edge
  %i.235.lcssa.i = phi i32 [ 64, %for.body26.preheader.i.if.end45.i664_crit_edge ], [ 80, %for.inc39.i.if.end45.i664_crit_edge ], [ 96, %for.inc39.1.i.if.end45.i664_crit_edge ], [ 112, %for.inc39.2.i.if.end45.i664_crit_edge ]
  %add.ptr46.i = getelementptr i8, ptr @eeprom_data, i32 %i.235.lcssa.i
  %add.ptr47.i = getelementptr i8, ptr %add.ptr46.i, i32 4
  %205 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %206 = load i16, ptr %add.ptr47.i, align 1
  %207 = zext i16 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.497)
  switch i16 %206, label %do.end72.i [
    i16 4, label %if.end45.i664.do.end72.thread23.i_crit_edge
    i16 5, label %sw.bb50.i
    i16 18, label %if.end45.i664.sw.bb51.i665_crit_edge
    i16 19, label %if.end45.i664.sw.bb51.i665_crit_edge723
    i16 20, label %if.end45.i664.sw.bb52.i_crit_edge
    i16 21, label %if.end45.i664.sw.bb52.i_crit_edge724
    i16 22, label %if.end45.i664.sw.bb53.i666_crit_edge
    i16 23, label %if.end45.i664.sw.bb53.i666_crit_edge725
    i16 32, label %if.end45.i664.sw.bb53.i666_crit_edge726
    i16 24, label %if.end45.i664.sw.bb54.i_crit_edge
    i16 25, label %if.end45.i664.sw.bb54.i_crit_edge727
    i16 30, label %if.end45.i664.sw.bb54.i_crit_edge728
    i16 31, label %if.end45.i664.sw.bb54.i_crit_edge729
    i16 26, label %if.end45.i664.sw.bb55.i667_crit_edge
    i16 27, label %if.end45.i664.sw.bb55.i667_crit_edge730
    i16 64, label %sw.bb56.i
    i16 80, label %if.end45.i664.sw.bb57.i_crit_edge
    i16 86, label %if.end45.i664.sw.bb57.i_crit_edge731
    i16 96, label %if.end45.i664.sw.bb58.i_crit_edge
    i16 112, label %if.end45.i664.sw.bb58.i_crit_edge732
    i16 160, label %if.end45.i664.sw.bb58.i_crit_edge733
    i16 216, label %sw.bb60.i
  ]

if.end45.i664.sw.bb58.i_crit_edge733:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i

if.end45.i664.sw.bb58.i_crit_edge732:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i

if.end45.i664.sw.bb58.i_crit_edge:                ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i

if.end45.i664.sw.bb57.i_crit_edge731:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57.i

if.end45.i664.sw.bb57.i_crit_edge:                ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57.i

if.end45.i664.sw.bb55.i667_crit_edge730:          ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55.i667

if.end45.i664.sw.bb55.i667_crit_edge:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55.i667

if.end45.i664.sw.bb54.i_crit_edge729:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54.i

if.end45.i664.sw.bb54.i_crit_edge728:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54.i

if.end45.i664.sw.bb54.i_crit_edge727:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54.i

if.end45.i664.sw.bb54.i_crit_edge:                ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54.i

if.end45.i664.sw.bb53.i666_crit_edge726:          ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53.i666

if.end45.i664.sw.bb53.i666_crit_edge725:          ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53.i666

if.end45.i664.sw.bb53.i666_crit_edge:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53.i666

if.end45.i664.sw.bb52.i_crit_edge724:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52.i

if.end45.i664.sw.bb52.i_crit_edge:                ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52.i

if.end45.i664.sw.bb51.i665_crit_edge723:          ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51.i665

if.end45.i664.sw.bb51.i665_crit_edge:             ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51.i665

if.end45.i664.do.end72.thread23.i_crit_edge:      ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72.thread23.i

sw.bb50.i:                                        ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72.thread23.i

sw.bb51.i665:                                     ; preds = %if.end45.i664.sw.bb51.i665_crit_edge, %if.end45.i664.sw.bb51.i665_crit_edge723
  br label %do.end72.thread23.i

sw.bb52.i:                                        ; preds = %if.end45.i664.sw.bb52.i_crit_edge, %if.end45.i664.sw.bb52.i_crit_edge724
  br label %do.end72.thread23.i

sw.bb53.i666:                                     ; preds = %if.end45.i664.sw.bb53.i666_crit_edge, %if.end45.i664.sw.bb53.i666_crit_edge725, %if.end45.i664.sw.bb53.i666_crit_edge726
  br label %do.end72.thread23.i

sw.bb54.i:                                        ; preds = %if.end45.i664.sw.bb54.i_crit_edge, %if.end45.i664.sw.bb54.i_crit_edge727, %if.end45.i664.sw.bb54.i_crit_edge728, %if.end45.i664.sw.bb54.i_crit_edge729
  br label %do.end72.thread23.i

sw.bb55.i667:                                     ; preds = %if.end45.i664.sw.bb55.i667_crit_edge, %if.end45.i664.sw.bb55.i667_crit_edge730
  br label %do.end72.thread23.i

sw.bb56.i:                                        ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72.thread23.i

sw.bb57.i:                                        ; preds = %if.end45.i664.sw.bb57.i_crit_edge, %if.end45.i664.sw.bb57.i_crit_edge731
  br label %do.end72.thread23.i

sw.bb58.i:                                        ; preds = %if.end45.i664.sw.bb58.i_crit_edge, %if.end45.i664.sw.bb58.i_crit_edge732, %if.end45.i664.sw.bb58.i_crit_edge733
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 771) #7
  br label %do.end72.thread23.i

sw.bb60.i:                                        ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72.thread23.i

do.end72.thread23.i:                              ; preds = %sw.bb60.i, %sw.bb58.i, %sw.bb57.i, %sw.bb56.i, %sw.bb55.i667, %sw.bb54.i, %sw.bb53.i666, %sw.bb52.i, %sw.bb51.i665, %sw.bb50.i, %if.end45.i664.do.end72.thread23.i_crit_edge
  %cardid.1.ph.i = phi i32 [ 83, %if.end45.i664.do.end72.thread23.i_crit_edge ], [ 84, %sw.bb50.i ], [ 82, %sw.bb51.i665 ], [ 85, %sw.bb52.i ], [ 86, %sw.bb53.i666 ], [ 87, %sw.bb54.i ], [ 88, %sw.bb55.i667 ], [ 90, %sw.bb56.i ], [ 91, %sw.bb57.i ], [ 89, %sw.bb58.i ], [ 140, %sw.bb60.i ]
  %add.ptr6425.i = getelementptr i8, ptr %add.ptr46.i, i32 6
  %208 = ptrtoint ptr %add.ptr6425.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %add.ptr6425.i, align 1
  br label %lor.lhs.false.i

do.end72.i:                                       ; preds = %if.end45.i664
  call void @__sanitizer_cov_trace_pc() #9
  %conv49.i = zext i16 %206 to i32
  %nr.i668 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %210 = ptrtoint ptr %nr.i668 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %nr.i668, align 8
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.412, i32 noundef %211, i32 noundef %conv49.i) #10
  %add.ptr64.i = getelementptr i8, ptr %add.ptr46.i, i32 6
  %212 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %add.ptr64.i, align 1
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %do.end72.i, %if.then.i663.cond.end.thread.i_crit_edge
  %serial.314.ph.i = phi i32 [ %213, %do.end72.i ], [ 0, %if.then.i663.cond.end.thread.i_crit_edge ]
  %.ph.in.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %214 = ptrtoint ptr %.ph.in.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %.ph.i = load i32, ptr %.ph.in.i, align 8
  %call7932.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.415, i32 noundef %.ph.i, i32 noundef -1, ptr noundef nonnull @.str.417, i32 noundef %serial.314.ph.i) #10
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %do.end72.thread23.i, %for.body14.preheader.i
  %serial.315.i = phi i32 [ %209, %do.end72.thread23.i ], [ %add17.8.i, %for.body14.preheader.i ]
  %cardid.313.i = phi i32 [ %cardid.1.ph.i, %do.end72.thread23.i ], [ 83, %for.body14.preheader.i ]
  %nr7517.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %215 = ptrtoint ptr %nr7517.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %nr7517.i, align 8
  %arrayidx78.i = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %cardid.313.i
  %217 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx78.i, align 4
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.415, i32 noundef %216, i32 noundef %cardid.313.i, ptr noundef %218, i32 noundef %serial.315.i) #10
  %219 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %cardid.313.i)
  %cmp84.i = icmp eq i32 %220, %cardid.313.i
  br i1 %cmp84.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %if.end87.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end87.i:                                       ; preds = %lor.lhs.false.i
  %221 = ptrtoint ptr %nr7517.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %nr7517.i, align 8
  %arrayidx90.i = getelementptr [32 x i32], ptr @card, i32 0, i32 %222
  %223 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %224)
  %cmp91.i = icmp ult i32 %224, 167
  br i1 %cmp91.i, label %do.end96.i, label %do.end104.i

do.end96.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.419, i32 noundef %222) #10
  br label %sw.epilog

do.end104.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, i32 noundef %222, i32 noundef %220, i32 noundef %cardid.313.i) #10
  %225 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %cardid.313.i, ptr %type, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 16777015) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 2097184) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 2097188) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 2097152, i32 noundef 2097152) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1086
  tail call void @arm_heavy_mb() #7
  %bt848_mmio.i669 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %226 = ptrtoint ptr %bt848_mmio.i669 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %bt848_mmio.i669, align 4
  %add.ptr.i670 = getelementptr i8, ptr %227, i32 4
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i670) #7, !srcloc !1053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1087
  %229 = or i32 %228, 1073741824
  %230 = ptrtoint ptr %bt848_mmio.i669 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bt848_mmio.i669, align 4
  %add.ptr6.i = getelementptr i8, ptr %231, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %229) #7, !srcloc !1052
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  tail call void @bttv_readee(ptr noundef %btv, ptr noundef nonnull @eeprom_data, i32 noundef 160) #7
  %bcmp.i671 = tail call i32 @bcmp(ptr noundef dereferenceable(14) getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 30), ptr noundef nonnull dereferenceable(14) @.str.382, i32 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i671)
  %cmp.i672 = icmp eq i32 %bcmp.i671, 0
  br i1 %cmp.i672, label %sw.bb30.if.end31.sink.split.i_crit_edge, label %if.else.i673

sw.bb30.if.end31.sink.split.i_crit_edge:          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split.i

if.else.i673:                                     ; preds = %sw.bb30
  %bcmp38.i = tail call i32 @bcmp(ptr noundef dereferenceable(10) getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 30), ptr noundef nonnull dereferenceable(10) @.str.385, i32 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38.i)
  %cmp3.i = icmp eq i32 %bcmp38.i, 0
  br i1 %cmp3.i, label %if.else.i673.if.end31.sink.split.i_crit_edge, label %if.else12.i

if.else.i673.if.end31.sink.split.i_crit_edge:     ; preds = %if.else.i673
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split.i

if.else12.i:                                      ; preds = %if.else.i673
  %bcmp39.i = tail call i32 @bcmp(ptr noundef dereferenceable(14) getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 30), ptr noundef nonnull dereferenceable(14) @.str.388, i32 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39.i)
  %cmp14.i = icmp eq i32 %bcmp39.i, 0
  br i1 %cmp14.i, label %if.else12.i.if.end31.sink.split.i_crit_edge, label %if.else12.i.modtec_eeprom.exit_crit_edge

if.else12.i.modtec_eeprom.exit_crit_edge:         ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %modtec_eeprom.exit

if.else12.i.if.end31.sink.split.i_crit_edge:      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.else12.i.if.end31.sink.split.i_crit_edge, %if.else.i673.if.end31.sink.split.i_crit_edge, %sw.bb30.if.end31.sink.split.i_crit_edge
  %.sink.i674 = phi i32 [ 18, %sw.bb30.if.end31.sink.split.i_crit_edge ], [ 11, %if.else.i673.if.end31.sink.split.i_crit_edge ], [ 2, %if.else12.i.if.end31.sink.split.i_crit_edge ]
  %232 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %.sink.i674, ptr %tuner_type, align 4
  br label %modtec_eeprom.exit

modtec_eeprom.exit:                               ; preds = %if.end31.sink.split.i, %if.else12.i.modtec_eeprom.exit_crit_edge
  %.str.383.sink.i = phi ptr [ @.str.392, %if.else12.i.modtec_eeprom.exit_crit_edge ], [ @.str.383, %if.end31.sink.split.i ]
  %nr10.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %233 = ptrtoint ptr %nr10.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %nr10.i, align 8
  %call11.i675 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.383.sink.i, i32 noundef %234, ptr noundef getelementptr inbounds ([256 x i8], ptr @eeprom_data, i32 0, i32 30)) #10
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_lmlbt4x.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bttv_init_card2, %if.then.i676)) #7
          to label %init_lmlbt4x.exit [label %if.then.i676], !srcloc !1050

if.then.i676:                                     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_lmlbt4x.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.381) #7
  br label %init_lmlbt4x.exit

init_lmlbt4x.exit:                                ; preds = %if.then.i676, %sw.bb31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !1088
  tail call void @arm_heavy_mb() #7
  %bt848_mmio.i677 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %235 = ptrtoint ptr %bt848_mmio.i677 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bt848_mmio.i677, align 4
  %add.ptr.i678 = getelementptr i8, ptr %236, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i678, i32 0) #7, !srcloc !1052
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 1728) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 0) #7
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 16777215, i32 noundef 1015807) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 1015807) #7
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 1023, i32 noundef 1023) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 512) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 0) #7
  %arrayidx.i679 = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 0
  %237 = ptrtoint ptr %arrayidx.i679 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %arrayidx.i679, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 128) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 384) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 128) #7
  %arrayidx.1.i = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 1
  %238 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %arrayidx.1.i, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 145) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 401) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 145) #7
  %arrayidx.2.i = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 2
  %239 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 2, ptr %arrayidx.2.i, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 162) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 418) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 162) #7
  %arrayidx.3.i = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 3
  %240 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 3, ptr %arrayidx.3.i, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 179) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 435) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 511, i32 noundef 179) #7
  %nr.i680 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %241 = ptrtoint ptr %nr.i680 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %nr.i680, align 8
  %243 = add i32 %242, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -29, i32 %243)
  %244 = icmp ult i32 %243, -29
  br i1 %244, label %sw.bb33.sw.epilog_crit_edge, label %if.end.i682

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i682:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i681 = add nsw i32 %242, -1
  %arrayidx14.i = getelementptr [32 x ptr], ptr @master, i32 0, i32 %sub.i681
  %245 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %btv, ptr %arrayidx14.i, align 4
  %arrayidx17.i = getelementptr [32 x ptr], ptr @master, i32 0, i32 %242
  %246 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %btv, ptr %arrayidx17.i, align 4
  %add.i = add nuw nsw i32 %242, 1
  %arrayidx20.i = getelementptr [32 x ptr], ptr @master, i32 0, i32 %add.i
  %247 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %btv, ptr %arrayidx20.i, align 4
  %add23.i = add nuw nsw i32 %242, 2
  %arrayidx24.i = getelementptr [32 x ptr], ptr @master, i32 0, i32 %add23.i
  %248 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %btv, ptr %arrayidx24.i, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 987263, i32 noundef 987263) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 524288) #7
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef 0) #7
  %arrayidx.i683 = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 0
  %249 = ptrtoint ptr %arrayidx.i683 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %arrayidx.i683, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 65663, i32 noundef 65536) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef 131072) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262144, i32 noundef 262144) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef -131073) #7
  %arrayidx.1.i684 = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 1
  %250 = ptrtoint ptr %arrayidx.1.i684 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %arrayidx.1.i684, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 65663, i32 noundef 65553) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef 131072) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262144, i32 noundef 262144) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef -131073) #7
  %arrayidx.2.i685 = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 2
  %251 = ptrtoint ptr %arrayidx.2.i685 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 2, ptr %arrayidx.2.i685, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 65663, i32 noundef 65570) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef 131072) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262144, i32 noundef 262144) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef -131073) #7
  %arrayidx.3.i686 = getelementptr %struct.bttv, ptr %btv, i32 0, i32 65, i32 3
  %252 = ptrtoint ptr %arrayidx.3.i686 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 3, ptr %arrayidx.3.i686, align 1
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 65663, i32 noundef 65587) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef 131072) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 262144, i32 noundef 262144) #7
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 131072, i32 noundef -131073) #7
  %call.i687 = tail call i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext 24, i8 noundef zeroext 5, i8 noundef zeroext -112, i32 noundef 1) #7
  %nr.i688 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %253 = ptrtoint ptr %nr.i688 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %nr.i688, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %254)
  %cmp6.i = icmp ugt i32 %254, 28
  br i1 %cmp6.i, label %sw.bb34.sw.epilog_crit_edge, label %if.end.i692

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i692:                                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i = getelementptr [32 x ptr], ptr @master, i32 0, i32 %254
  %255 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %btv, ptr %arrayidx10.i, align 4
  %add.i689 = add nuw nsw i32 %254, 1
  %arrayidx13.i = getelementptr [32 x ptr], ptr @master, i32 0, i32 %add.i689
  %256 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %btv, ptr %arrayidx13.i, align 4
  %add16.i = add nuw nsw i32 %254, 2
  %arrayidx17.i690 = getelementptr [32 x ptr], ptr @master, i32 0, i32 %add16.i
  %257 = ptrtoint ptr %arrayidx17.i690 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %btv, ptr %arrayidx17.i690, align 4
  %add20.i = add nuw nsw i32 %254, 3
  %arrayidx21.i691 = getelementptr [32 x ptr], ptr @master, i32 0, i32 %add20.i
  %258 = ptrtoint ptr %arrayidx21.i691 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %btv, ptr %arrayidx21.i691, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i692, %sw.bb34.sw.epilog_crit_edge, %if.end.i682, %sw.bb33.sw.epilog_crit_edge, %sw.bb32, %init_lmlbt4x.exit, %modtec_eeprom.exit, %sw.bb29, %do.end104.i, %do.end96.i, %lor.lhs.false.i.sw.epilog_crit_edge, %cond.end.thread.i, %for.inc39.2.i.sw.epilog_crit_edge, %for.body.preheader.i.sw.epilog_crit_edge, %if.then24, %sw.bb21.sw.epilog_crit_edge, %if.then16, %sw.bb14.sw.epilog_crit_edge, %do.end.i655, %tea575x_init.exit.i, %if.end.i640, %do.end.i637, %sw.bb7, %init_PXC200.exit, %avermedia_eeprom.exit, %hauppauge_eeprom.exit, %if.then48.i, %if.end45.i.sw.epilog_crit_edge, %do.end64.i, %cond.end.i, %if.end.sw.epilog_crit_edge
  %id = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 1
  %259 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 848, i16 %260)
  %cmp35 = icmp eq i16 %260, 848
  br i1 %cmp35, label %land.lhs.true, label %sw.epilog.if.then40_crit_edge

sw.epilog.if.then40_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

land.lhs.true:                                    ; preds = %sw.epilog
  %revision = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 2
  %261 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %262)
  %cmp38 = icmp eq i8 %262, 17
  br i1 %cmp38, label %land.lhs.true.if.end112_crit_edge, label %land.lhs.true.if.then40_crit_edge

land.lhs.true.if.then40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then40:                                        ; preds = %land.lhs.true.if.then40_crit_edge, %sw.epilog.if.then40_crit_edge
  %263 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %type, align 4
  %pll = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %264, i32 12
  %265 = ptrtoint ptr %pll to i32
  call void @__asan_load2_noabort(i32 %265)
  %bf.load = load i16, ptr %pll, align 2
  %266 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %266)
  %cmp43 = icmp eq i16 %266, 1024
  br i1 %cmp43, label %if.then45, label %if.then40.if.end48_crit_edge

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %pll46 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10
  %267 = ptrtoint ptr %pll46 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 28636363, ptr %pll46, align 8
  %pll_crystal = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 2
  %268 = ptrtoint ptr %pll_crystal to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 8, ptr %pll_crystal, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then40.if.end48_crit_edge
  %269 = ptrtoint ptr %pll to i32
  call void @__asan_load2_noabort(i32 %269)
  %bf.load53 = load i16, ptr %pll, align 2
  %270 = and i16 %bf.load53, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %270)
  %cmp57 = icmp eq i16 %270, 2048
  br i1 %cmp57, label %if.then59, label %if.end48.if.end64_crit_edge

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then59:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %pll60 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10
  %271 = ptrtoint ptr %pll60 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 35468950, ptr %pll60, align 8
  %pll_crystal63 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 2
  %272 = ptrtoint ptr %pll_crystal63 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 16, ptr %pll_crystal63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end48.if.end64_crit_edge
  %273 = ptrtoint ptr %pll to i32
  call void @__asan_load2_noabort(i32 %273)
  %bf.load69 = load i16, ptr %pll, align 2
  %274 = and i16 %bf.load69, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %274)
  %cmp73 = icmp eq i16 %274, 3072
  br i1 %cmp73, label %if.then75, label %if.end64.if.end80_crit_edge

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then75:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %pll76 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10
  %275 = ptrtoint ptr %pll76 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 14318181, ptr %pll76, align 8
  %pll_crystal79 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 2
  %276 = ptrtoint ptr %pll_crystal79 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 8, ptr %pll_crystal79, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end64.if.end80_crit_edge
  %nr82 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %277 = ptrtoint ptr %nr82 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %nr82, align 8
  %arrayidx83 = getelementptr [32 x i32], ptr @pll, i32 0, i32 %278
  %279 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx83, align 4
  %281 = zext i32 %280 to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.498)
  switch i32 %280, label %if.end80.if.end112_crit_edge [
    i32 0, label %sw.bb84
    i32 1, label %if.end80.sw.bb90_crit_edge
    i32 28, label %if.end80.sw.bb90_crit_edge734
    i32 2, label %if.end80.sw.bb97_crit_edge
    i32 35, label %if.end80.sw.bb97_crit_edge735
    i32 3, label %if.end80.sw.bb104_crit_edge
    i32 14, label %if.end80.sw.bb104_crit_edge736
  ]

if.end80.sw.bb104_crit_edge736:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end80.sw.bb104_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end80.sw.bb97_crit_edge735:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb97

if.end80.sw.bb97_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb97

if.end80.sw.bb90_crit_edge734:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb90

if.end80.sw.bb90_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb90

if.end80.if.end112_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

sw.bb84:                                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %pll85 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10
  %pll_crystal86 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 2
  %282 = ptrtoint ptr %pll_crystal86 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 0, ptr %pll_crystal86, align 8
  %283 = ptrtoint ptr %pll85 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %pll85, align 8
  %pll_ofreq = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 1
  %284 = ptrtoint ptr %pll_ofreq to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %pll_ofreq, align 4
  br label %if.end112

sw.bb90:                                          ; preds = %if.end80.sw.bb90_crit_edge, %if.end80.sw.bb90_crit_edge734
  %pll91 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10
  %285 = ptrtoint ptr %pll91 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 28636363, ptr %pll91, align 8
  %pll_ofreq94 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 1
  %286 = ptrtoint ptr %pll_ofreq94 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %pll_ofreq94, align 4
  %pll_crystal96 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 2
  %287 = ptrtoint ptr %pll_crystal96 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 8, ptr %pll_crystal96, align 8
  br label %if.end112

sw.bb97:                                          ; preds = %if.end80.sw.bb97_crit_edge, %if.end80.sw.bb97_crit_edge735
  %pll98 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10
  %288 = ptrtoint ptr %pll98 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 35468950, ptr %pll98, align 8
  %pll_ofreq101 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 1
  %289 = ptrtoint ptr %pll_ofreq101 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %pll_ofreq101, align 4
  %pll_crystal103 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 2
  %290 = ptrtoint ptr %pll_crystal103 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 16, ptr %pll_crystal103, align 8
  br label %if.end112

sw.bb104:                                         ; preds = %if.end80.sw.bb104_crit_edge, %if.end80.sw.bb104_crit_edge736
  %pll105 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10
  %291 = ptrtoint ptr %pll105 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 14318181, ptr %pll105, align 8
  %pll_ofreq108 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 1
  %292 = ptrtoint ptr %pll_ofreq108 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %pll_ofreq108, align 4
  %pll_crystal110 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 2
  %293 = ptrtoint ptr %pll_crystal110 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 8, ptr %pll_crystal110, align 8
  br label %if.end112

if.end112:                                        ; preds = %sw.bb104, %sw.bb97, %sw.bb90, %sw.bb84, %if.end80.if.end112_crit_edge, %land.lhs.true.if.end112_crit_edge
  %pll_current = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 10, i32 3
  %294 = ptrtoint ptr %pll_current to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 -1, ptr %pll_current, align 4
  %295 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %type, align 4
  %tuner_type117 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %296, i32 9
  %297 = ptrtoint ptr %tuner_type117 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %tuner_type117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %298)
  %cmp118.not = icmp eq i32 %298, -1
  br i1 %cmp118.not, label %if.end112.if.end131_crit_edge, label %if.then120

if.end112.if.end131_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then120:                                       ; preds = %if.end112
  %299 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %300)
  %cmp122 = icmp eq i32 %300, -1
  br i1 %cmp122, label %if.then124, label %if.then120.if.end131_crit_edge

if.then120.if.end131_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then124:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  %301 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %298, ptr %tuner_type, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then124, %if.then120.if.end131_crit_edge, %if.end112.if.end131_crit_edge
  %nr133 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %302 = ptrtoint ptr %nr133 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %nr133, align 8
  %arrayidx134 = getelementptr [32 x i32], ptr @tuner, i32 0, i32 %303
  %304 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %305)
  %cmp135.not = icmp eq i32 %305, -1
  br i1 %cmp135.not, label %if.end142thread-pre-split, label %if.then137

if.then137:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %306 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %tuner_type, align 4
  br label %if.end142

if.end142thread-pre-split:                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %307 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %307)
  %.pr693 = load i32, ptr %tuner_type, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.end142thread-pre-split, %if.then137
  %308 = phi i32 [ %.pr693, %if.end142thread-pre-split ], [ %305, %if.then137 ]
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.499)
  switch i32 %308, label %do.end165 [
    i32 4, label %do.end148
    i32 -1, label %do.end158
  ]

do.end148:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %303) #10
  br label %if.end172

do.end158:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %303) #10
  br label %if.end172

do.end165:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, i32 noundef %303, i32 noundef %308) #10
  br label %if.end172

if.end172:                                        ; preds = %do.end165, %do.end158, %do.end148
  %310 = load i32, ptr @autoload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %310)
  %cmp173.not = icmp eq i32 %310, -1
  br i1 %cmp173.not, label %if.end172.if.end188_crit_edge, label %do.end177

if.end172.if.end188_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188

do.end177:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %311 = ptrtoint ptr %nr133 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %nr133, align 8
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %312) #10
  %313 = ptrtoint ptr %nr133 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %nr133, align 8
  %call187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %314) #10
  br label %if.end188

if.end188:                                        ; preds = %do.end177, %if.end172.if.end188_crit_edge
  %315 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %316)
  %cmp190 = icmp eq i32 %316, -1
  br i1 %cmp190, label %if.then192, label %if.end188.if.end194_crit_edge

if.end188.if.end194_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.then192:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 4, ptr %tuner_type, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end188.if.end194_crit_edge
  %318 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %type, align 4
  %has_dig_in = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %319, i32 12
  %320 = ptrtoint ptr %has_dig_in to i32
  call void @__asan_load2_noabort(i32 %320)
  %bf.load198 = load i16, ptr %has_dig_in, align 2
  %321 = and i16 %bf.load198, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %321)
  %tobool.not = icmp eq i16 %321, 0
  br i1 %tobool.not, label %if.end194.cond.end_crit_edge, label %cond.true

if.end194.cond.end_crit_edge:                     ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  %video_inputs = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %319, i32 11
  %322 = ptrtoint ptr %video_inputs to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %video_inputs, align 1
  %conv205 = zext i8 %323 to i32
  %sub = add nsw i32 %conv205, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end194.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %if.end194.cond.end_crit_edge ]
  %dig = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 8
  %324 = ptrtoint ptr %dig to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %cond, ptr %dig, align 8
  %325 = ptrtoint ptr %has_dig_in to i32
  call void @__asan_load2_noabort(i32 %325)
  %bf.load209 = load i16, ptr %has_dig_in, align 2
  %bf.lshr210 = lshr i16 %bf.load209, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %bf.lshr210)
  %cmp212 = icmp eq i16 %bf.lshr210, 15
  %bf.cast211 = zext i16 %bf.lshr210 to i32
  %spec.select = select i1 %cmp212, i32 -1, i32 %bf.cast211
  %svhs225 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 7
  %326 = ptrtoint ptr %svhs225 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %spec.select, ptr %svhs225, align 4
  %327 = ptrtoint ptr %nr133 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %nr133, align 8
  %arrayidx228 = getelementptr [32 x i32], ptr @svhs, i32 0, i32 %328
  %329 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %330)
  %cmp229.not = icmp eq i32 %330, -1
  %spec.store.select = select i1 %cmp229.not, i32 %spec.select, i32 %330
  %331 = ptrtoint ptr %svhs225 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %spec.store.select, ptr %svhs225, align 4
  %arrayidx239 = getelementptr [32 x i32], ptr @remote, i32 0, i32 %328
  %332 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %333)
  %cmp240.not = icmp eq i32 %333, -1
  br i1 %cmp240.not, label %cond.end.if.end246_crit_edge, label %if.then242

cond.end.if.end246_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then242:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %has_remote = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 32
  %334 = ptrtoint ptr %has_remote to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %has_remote, align 8
  br label %if.end246

if.end246:                                        ; preds = %if.then242, %cond.end.if.end246_crit_edge
  %335 = ptrtoint ptr %has_dig_in to i32
  call void @__asan_load2_noabort(i32 %335)
  %bf.load251 = load i16, ptr %has_dig_in, align 2
  %336 = and i16 %bf.load251, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %336)
  %tobool255.not = icmp eq i16 %336, 0
  br i1 %tobool255.not, label %if.end246.if.end258_crit_edge, label %if.then256

if.end246.if.end258_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

if.then256:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  %has_radio257 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %337 = ptrtoint ptr %has_radio257 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 1, ptr %has_radio257, align 8
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %if.end246.if.end258_crit_edge
  %338 = ptrtoint ptr %has_dig_in to i32
  call void @__asan_load2_noabort(i32 %338)
  %bf.load263 = load i16, ptr %has_dig_in, align 2
  %339 = and i16 %bf.load263, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %339)
  %tobool267.not = icmp eq i16 %339, 0
  br i1 %tobool267.not, label %if.end258.if.end270_crit_edge, label %if.then268

if.end258.if.end270_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270

if.then268:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  %has_remote269 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 32
  %340 = ptrtoint ptr %has_remote269 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 1, ptr %has_remote269, align 8
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %if.end258.if.end270_crit_edge
  %341 = ptrtoint ptr %has_dig_in to i32
  call void @__asan_load2_noabort(i32 %341)
  %bf.load274 = load i16, ptr %has_dig_in, align 2
  %342 = and i16 %bf.load274, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %342)
  %tobool278.not = icmp eq i16 %342, 0
  br i1 %tobool278.not, label %if.then279, label %if.end270.if.end280_crit_edge

if.end270.if.end280_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end280

if.then279:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #9
  %gpioirq = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 12
  %343 = ptrtoint ptr %gpioirq to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 1, ptr %gpioirq, align 4
  br label %if.end280

if.end280:                                        ; preds = %if.then279, %if.end270.if.end280_crit_edge
  %volume_gpio = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %319, i32 1
  %344 = ptrtoint ptr %volume_gpio to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %volume_gpio, align 4
  %tobool284.not = icmp eq ptr %345, null
  br i1 %tobool284.not, label %if.end280.if.end291_crit_edge, label %if.then285

if.end280.if.end291_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

if.then285:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  %volume_gpio290 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 15
  %346 = ptrtoint ptr %volume_gpio290 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %345, ptr %volume_gpio290, align 8
  br label %if.end291

if.end291:                                        ; preds = %if.then285, %if.end280.if.end291_crit_edge
  %audio_mode_gpio = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %319, i32 2
  %347 = ptrtoint ptr %audio_mode_gpio to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %audio_mode_gpio, align 4
  %tobool295.not = icmp eq ptr %348, null
  br i1 %tobool295.not, label %if.end291.if.end302_crit_edge, label %if.then296

if.end291.if.end302_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end302

if.then296:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  %audio_mode_gpio301 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 16
  %349 = ptrtoint ptr %audio_mode_gpio301 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %348, ptr %audio_mode_gpio301, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then296, %if.end291.if.end302_crit_edge
  %350 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %351)
  %cmp304 = icmp eq i32 %351, 4
  br i1 %cmp304, label %if.end302.return_crit_edge, label %if.end307

if.end302.return_crit_edge:                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end307:                                        ; preds = %if.end302
  %has_saa6588 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 9
  %352 = ptrtoint ptr %has_saa6588 to i32
  call void @__asan_load1_noabort(i32 %352)
  %bf.load308 = load i8, ptr %has_saa6588, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load308)
  %tobool311.not = icmp sgt i8 %bf.load308, -1
  br i1 %tobool311.not, label %if.end307.if.end325_crit_edge, label %if.then316

if.end307.if.end325_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end325

if.then316:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call319 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap, ptr noundef nonnull @.str.208, i8 noundef zeroext 0, ptr noundef nonnull @bttv_init_card2.addrs) #7
  %cmp320.not = icmp eq ptr %call319, null
  %353 = ptrtoint ptr %has_saa6588 to i32
  call void @__asan_load1_noabort(i32 %353)
  %bf.load323 = load i8, ptr %has_saa6588, align 4
  %bf.shl = select i1 %cmp320.not, i8 0, i8 -128
  %bf.clear324 = and i8 %bf.load323, 127
  %bf.set = or i8 %bf.clear324, %bf.shl
  store i8 %bf.set, ptr %has_saa6588, align 4
  br label %if.end325

if.end325:                                        ; preds = %if.then316, %if.end307.if.end325_crit_edge
  %354 = ptrtoint ptr %nr133 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %nr133, align 8
  %arrayidx328 = getelementptr [32 x i32], ptr @audiodev, i32 0, i32 %355
  %356 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx328, align 4
  %358 = zext i32 %357 to i64
  call void @__sanitizer_cov_trace_switch(i64 %358, ptr @__sancov_gen_cov_switch_values.500)
  switch i32 %357, label %do.end361 [
    i32 -1, label %if.end325.return_crit_edge
    i32 0, label %sw.epilog366
    i32 1, label %sw.bb330
    i32 2, label %sw.bb340
    i32 3, label %sw.bb349
  ]

if.end325.return_crit_edge:                       ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb330:                                         ; preds = %if.end325
  %i2c_adap334 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call335 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap334, ptr noundef nonnull @.str.210, i8 noundef zeroext 0, ptr noundef nonnull @bttv_init_card2.addrs.209) #7
  %sd_msp34xx = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 24
  %359 = ptrtoint ptr %sd_msp34xx to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call335, ptr %sd_msp34xx, align 8
  %tobool337.not = icmp eq ptr %call335, null
  br i1 %tobool337.not, label %sw.bb330.do.end449_crit_edge, label %sw.bb330.return_crit_edge

sw.bb330.return_crit_edge:                        ; preds = %sw.bb330
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb330.do.end449_crit_edge:                     ; preds = %sw.bb330
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end449

sw.bb340:                                         ; preds = %if.end325
  %i2c_adap344 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call345 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap344, ptr noundef nonnull @.str.212, i8 noundef zeroext 0, ptr noundef nonnull @bttv_init_card2.addrs.211) #7
  %tobool346.not = icmp eq ptr %call345, null
  br i1 %tobool346.not, label %sw.bb340.do.end449_crit_edge, label %sw.bb340.return_crit_edge

sw.bb340.return_crit_edge:                        ; preds = %sw.bb340
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb340.do.end449_crit_edge:                     ; preds = %sw.bb340
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end449

sw.bb349:                                         ; preds = %if.end325
  %i2c_adap353 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call355 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap353, ptr noundef nonnull @.str.213, i8 noundef zeroext 0, ptr noundef nonnull @tvaudio_addrs.addrs) #7
  %sd_tvaudio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 25
  %360 = ptrtoint ptr %sd_tvaudio to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %call355, ptr %sd_tvaudio, align 4
  %tobool357.not = icmp eq ptr %call355, null
  br i1 %tobool357.not, label %sw.bb349.do.end449_crit_edge, label %sw.bb349.return_crit_edge

sw.bb349.return_crit_edge:                        ; preds = %sw.bb349
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb349.do.end449_crit_edge:                     ; preds = %sw.bb349
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end449

do.end361:                                        ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #9
  %call365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %355) #10
  br label %return

sw.epilog366:                                     ; preds = %if.end325
  %361 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %type, align 4
  %no_msp34xx = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %362, i32 12
  %363 = ptrtoint ptr %no_msp34xx to i32
  call void @__asan_load2_noabort(i32 %363)
  %bf.load370 = load i16, ptr %no_msp34xx, align 2
  %364 = and i16 %bf.load370, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %364)
  %tobool374.not = icmp eq i16 %364, 0
  br i1 %tobool374.not, label %if.then375, label %if.else382

if.then375:                                       ; preds = %sw.epilog366
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap379 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %365 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 64, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %366 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 -2, ptr %arrayinit.element, align 2
  %call380 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap379, ptr noundef nonnull @.str.210, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral) #7
  br label %if.end403.sink.split

if.else382:                                       ; preds = %sw.epilog366
  %367 = and i16 %bf.load370, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %367)
  %tobool390.not = icmp eq i16 %367, 0
  br i1 %tobool390.not, label %if.else382.if.end403_crit_edge, label %if.then391

if.else382.if.end403_crit_edge:                   ; preds = %if.else382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end403

if.then391:                                       ; preds = %if.else382
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap395 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %368 = ptrtoint ptr %.compoundliteral396 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 68, ptr %.compoundliteral396, align 2
  %arrayinit.element398 = getelementptr inbounds i16, ptr %.compoundliteral396, i32 1
  %369 = ptrtoint ptr %arrayinit.element398 to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 -2, ptr %arrayinit.element398, align 2
  %call400 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap395, ptr noundef nonnull @.str.210, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral396) #7
  br label %if.end403.sink.split

if.end403.sink.split:                             ; preds = %if.then391, %if.then375
  %call400.sink = phi ptr [ %call400, %if.then391 ], [ %call380, %if.then375 ]
  %sd_msp34xx401 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 24
  %370 = ptrtoint ptr %sd_msp34xx401 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %call400.sink, ptr %sd_msp34xx401, align 8
  br label %if.end403

if.end403:                                        ; preds = %if.end403.sink.split, %if.else382.if.end403_crit_edge
  %sd_msp34xx404 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 24
  %371 = ptrtoint ptr %sd_msp34xx404 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %sd_msp34xx404, align 8
  %tobool405.not = icmp eq ptr %372, null
  br i1 %tobool405.not, label %if.end407, label %if.end403.return_crit_edge

if.end403.return_crit_edge:                       ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end407:                                        ; preds = %if.end403
  %i2c_adap411 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call413 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap411, ptr noundef nonnull @.str.213, i8 noundef zeroext 0, ptr noundef nonnull @tvaudio_addrs.addrs) #7
  %sd_tvaudio414 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 25
  %373 = ptrtoint ptr %sd_tvaudio414 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call413, ptr %sd_tvaudio414, align 4
  %tobool416.not = icmp eq ptr %call413, null
  br i1 %tobool416.not, label %if.end407.if.end424_crit_edge, label %if.then417

if.end407.if.end424_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end424

if.then417:                                       ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #9
  %call423 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap411, ptr noundef nonnull @.str.213, i8 noundef zeroext 0, ptr noundef nonnull @tvaudio_addrs.addrs) #7
  br label %if.end424

if.end424:                                        ; preds = %if.then417, %if.end407.if.end424_crit_edge
  %374 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %type, align 4
  %no_tda7432 = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %375, i32 12
  %376 = ptrtoint ptr %no_tda7432 to i32
  call void @__asan_load2_noabort(i32 %376)
  %bf.load428 = load i16, ptr %no_tda7432, align 2
  %377 = and i16 %bf.load428, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %377)
  %tobool432.not = icmp eq i16 %377, 0
  br i1 %tobool432.not, label %if.then433, label %if.end424.if.end443_crit_edge

if.end424.if.end443_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end443

if.then433:                                       ; preds = %if.end424
  %call438 = call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap411, ptr noundef nonnull @.str.212, i8 noundef zeroext 0, ptr noundef nonnull @bttv_init_card2.addrs.217) #7
  %sd_tda7432 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 26
  %378 = ptrtoint ptr %sd_tda7432 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %call438, ptr %sd_tda7432, align 8
  %tobool440.not = icmp eq ptr %call438, null
  br i1 %tobool440.not, label %if.then433.if.end443_crit_edge, label %if.then433.return_crit_edge

if.then433.return_crit_edge:                      ; preds = %if.then433
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then433.if.end443_crit_edge:                   ; preds = %if.then433
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end443

if.end443:                                        ; preds = %if.then433.if.end443_crit_edge, %if.end424.if.end443_crit_edge
  %379 = ptrtoint ptr %sd_tvaudio414 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %sd_tvaudio414, align 4
  %tobool445.not = icmp eq ptr %380, null
  br i1 %tobool445.not, label %if.end443.do.end449_crit_edge, label %if.end443.return_crit_edge

if.end443.return_crit_edge:                       ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end443.do.end449_crit_edge:                    ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end449

do.end449:                                        ; preds = %if.end443.do.end449_crit_edge, %sw.bb349.do.end449_crit_edge, %sw.bb340.do.end449_crit_edge, %sw.bb330.do.end449_crit_edge
  %381 = ptrtoint ptr %nr133 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %nr133, align 8
  %call453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %382) #10
  br label %return

return:                                           ; preds = %do.end449, %if.end443.return_crit_edge, %if.then433.return_crit_edge, %if.end403.return_crit_edge, %do.end361, %sw.bb349.return_crit_edge, %sw.bb340.return_crit_edge, %sw.bb330.return_crit_edge, %if.end325.return_crit_edge, %if.end302.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_readee(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_init_tuner(ptr noundef %btv) local_unnamed_addr #1 align 64 {
entry:
  %tun_setup = alloca %struct.tuner_setup, align 4
  %tda9887_cfg = alloca %struct.v4l2_priv_tun_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %tuner_addr = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %1, i32 10
  %2 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tuner_addr, align 4
  %phi.cast = zext i8 %3 to i16
  %tuner_type = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 5
  %4 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp7.not = icmp eq i32 %5, 4
  br i1 %cmp7.not, label %entry.if.end61_crit_edge, label %if.then9

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup) #7
  %6 = call ptr @memset(ptr %tun_setup, i32 255, i32 20)
  %has_radio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 54
  %7 = ptrtoint ptr %has_radio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %has_radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then9.if.end14_crit_edge, label %if.then10

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef 0) #7
  %call13 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap, ptr noundef nonnull @.str.221, i8 noundef zeroext 0, ptr noundef %call) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then9.if.end14_crit_edge
  %i2c_adap18 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %call19 = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef 1) #7
  %call20 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap18, ptr noundef nonnull @.str.221, i8 noundef zeroext 0, ptr noundef %call19) #7
  %call25 = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef 3) #7
  %call26 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %btv, ptr noundef %i2c_adap18, ptr noundef nonnull @.str.221, i8 noundef zeroext 0, ptr noundef %call25) #7
  %mode_mask = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %9 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %mode_mask, align 4
  %10 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuner_type, align 4
  %type28 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %12 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type28, align 4
  %13 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %phi.cast, ptr %tun_setup, align 4
  %14 = ptrtoint ptr %has_radio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %has_radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool32.not, label %if.end14.do.body_crit_edge, label %if.then33

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %mode_mask, align 4
  br label %do.body

do.body:                                          ; preds = %if.then33, %if.end14.do.body_crit_edge
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %btv, i32 0, i32 2
  %17 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn140141 = load ptr, ptr %subdevs, align 4
  %cmp42.not143 = icmp eq ptr %.pn140141, %subdevs
  br i1 %cmp42.not143, label %do.body.do.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn140144 = phi ptr [ %.pn140, %for.inc.for.body_crit_edge ], [ %.pn140141, %do.body.for.body_crit_edge ]
  %__sd.0145 = getelementptr i8, ptr %.pn140144, i32 -80
  %ops = getelementptr i8, ptr %.pn140144, i32 24
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner, align 4
  %tobool44.not = icmp eq ptr %21, null
  br i1 %tobool44.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_type_addr = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %s_type_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_type_addr, align 4
  %tobool47.not = icmp eq ptr %23, null
  br i1 %tobool47.not, label %land.lhs.true.for.inc_crit_edge, label %if.then48

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = call i32 %23(ptr noundef %__sd.0145, ptr noundef nonnull %tun_setup) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn140144 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn140 = load ptr, ptr %.pn140144, align 4
  %cmp42.not = icmp eq ptr %.pn140, %subdevs
  br i1 %cmp42.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup) #7
  br label %if.end61

if.end61:                                         ; preds = %do.end, %entry.if.end61_crit_edge
  %tda9887_conf = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 6
  %25 = ptrtoint ptr %tda9887_conf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tda9887_conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool62.not = icmp eq i32 %26, 0
  br i1 %tobool62.not, label %if.end61.if.end109_crit_edge, label %if.then63

if.end61.if.end109_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then63:                                        ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tda9887_cfg) #7
  %27 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tda9887_cfg, i32 0, i32 1
  %28 = ptrtoint ptr %tda9887_cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 74, ptr %tda9887_cfg, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tda9887_conf, ptr %27, align 4
  %subdevs72 = getelementptr inbounds %struct.v4l2_device, ptr %btv, i32 0, i32 2
  %30 = ptrtoint ptr %subdevs72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn146 = load ptr, ptr %subdevs72, align 4
  %cmp81.not148 = icmp eq ptr %.pn146, %subdevs72
  br i1 %cmp81.not148, label %if.then63.do.end106_crit_edge, label %if.then63.for.body84_crit_edge

if.then63.for.body84_crit_edge:                   ; preds = %if.then63
  br label %for.body84

if.then63.do.end106_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

for.body84:                                       ; preds = %for.inc98.for.body84_crit_edge, %if.then63.for.body84_crit_edge
  %.pn149 = phi ptr [ %.pn, %for.inc98.for.body84_crit_edge ], [ %.pn146, %if.then63.for.body84_crit_edge ]
  %__sd67.0150 = getelementptr i8, ptr %.pn149, i32 -80
  %ops85 = getelementptr i8, ptr %.pn149, i32 24
  %31 = ptrtoint ptr %ops85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops85, align 4
  %tuner86 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %tuner86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tuner86, align 4
  %tobool87.not = icmp eq ptr %34, null
  br i1 %tobool87.not, label %for.body84.for.inc98_crit_edge, label %land.lhs.true88

for.body84.for.inc98_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98

land.lhs.true88:                                  ; preds = %for.body84
  %s_config = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_config to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_config, align 4
  %tobool91.not = icmp eq ptr %36, null
  br i1 %tobool91.not, label %land.lhs.true88.for.inc98_crit_edge, label %if.then92

land.lhs.true88.for.inc98_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98

if.then92:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = call i32 %36(ptr noundef %__sd67.0150, ptr noundef nonnull %tda9887_cfg) #7
  br label %for.inc98

for.inc98:                                        ; preds = %if.then92, %land.lhs.true88.for.inc98_crit_edge, %for.body84.for.inc98_crit_edge
  %37 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn149, align 4
  %cmp81.not = icmp eq ptr %.pn, %subdevs72
  br i1 %cmp81.not, label %for.inc98.do.end106_crit_edge, label %for.inc98.for.body84_crit_edge

for.inc98.for.body84_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body84

for.inc98.do.end106_crit_edge:                    ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

do.end106:                                        ; preds = %for.inc98.do.end106_crit_edge, %if.then63.do.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tda9887_cfg) #7
  br label %if.end109

if.end109:                                        ; preds = %do.end106, %if.end61.if.end109_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_tuner_addrs(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_tda9880_setnorm(ptr noundef %btv, i32 noundef %gpiobits) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_input = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 39
  %0 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %tvnorm = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 42
  %2 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tvnorm, align 4
  %arrayidx = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = and i32 %5, 46848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %gpiobits, 65536
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and2 = and i32 %gpiobits, -65537
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1, %entry.if.end3_crit_edge
  %gpiobits.addr.0 = phi i32 [ %or, %if.then1 ], [ %and2, %if.else ], [ %gpiobits, %entry.if.end3_crit_edge ]
  %type = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 5
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %gpiomask = getelementptr [167 x %struct.tvcard], ptr @bttv_tvcards, i32 0, i32 %8, i32 5
  %9 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpiomask, align 4
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef %10, i32 noundef %gpiobits.addr.0) #7
  ret i32 %gpiobits.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_check_chipset() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %0 = load i32, ptr @pci_pci_problems, align 4
  %and = and i32 %0, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %0, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %entry.if.end4_crit_edge, label %if.then3

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr @triton1, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %and5 = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr @vsfx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %and9 = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  store i32 10, ptr @latency, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %1 = load i32, ptr @triton1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not = icmp eq i32 %1, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %do.end

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end12.if.end15_crit_edge
  %2 = load i32, ptr @vsfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool16.not = icmp eq i32 %2, 0
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %do.end20

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.end15.if.end23_crit_edge
  br i1 %tobool.not, label %if.end23.if.end44_crit_edge, label %do.end28

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end28:                                         ; preds = %if.end23
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228) #10
  %3 = load i32, ptr @no_overlay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool31.not = icmp eq i32 %3, 0
  br i1 %tobool31.not, label %do.end35, label %do.end40

do.end35:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231) #10
  store i32 1, ptr @no_overlay, align 4
  br label %if.end44

do.end40:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %do.end35, %if.end23.if.end44_crit_edge
  %4 = load i32, ptr @latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not = icmp eq i32 %4, -1
  br i1 %cmp.not, label %if.end44.if.end51_crit_edge, label %do.end48

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, i32 noundef %4) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end44.if.end51_crit_edge
  %call5264 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 4663, ptr noundef null) #7
  %tobool53.not65 = icmp eq ptr %call5264, null
  br i1 %tobool53.not65, label %if.end51.while.end_crit_edge, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  br label %while.body

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %if.end51.while.body_crit_edge
  %call5266 = phi ptr [ %call52, %if.end62.while.body_crit_edge ], [ %call5264, %if.end51.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #7
  %5 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %b, align 1, !annotation !1063
  %call54 = call i32 @pci_read_config_byte(ptr noundef nonnull %call5266, i32 noundef 83, ptr noundef nonnull %b) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %6 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool55.not = icmp eq i32 %6, 0
  br i1 %tobool55.not, label %while.body.if.end62_crit_edge, label %do.end59

while.body.if.end62_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end59:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b, align 1
  %conv = zext i8 %8 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef %conv) #10
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %while.body.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #7
  %call52 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 4663, ptr noundef nonnull %call5266) #7
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end62.while.end_crit_edge, label %if.end62.while.body_crit_edge

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end62.while.end_crit_edge, %if.end51.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_handle_chipset(ptr nocapture noundef %btv) local_unnamed_addr #1 align 64 {
entry:
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #7
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %command, align 1, !annotation !1063
  %1 = load i32, ptr @triton1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr @vsfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr @latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_verbose to i32))
  %4 = load i32, ptr @bttv_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end.if.end32_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end.thread:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_verbose to i32))
  %5 = load i32, ptr @bttv_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not75 = icmp eq i32 %5, 0
  br i1 %tobool3.not75, label %if.end.thread.if.end32_crit_edge, label %do.end

if.end.thread.if.end32_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end:                                           ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, i32 noundef %7) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %8 = load i32, ptr @vsfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end7.if.end20_crit_edge, label %land.lhs.true9

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true9:                                   ; preds = %if.end7
  %id = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 877, i16 %10)
  %cmp10 = icmp ugt i16 %10, 877
  br i1 %cmp10, label %do.end15, label %land.lhs.true9.if.end20_crit_edge

land.lhs.true9.if.end20_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end15:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  %nr18 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %11 = ptrtoint ptr %nr18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr18, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, i32 noundef %12) #10
  br label %if.end20

if.end20:                                         ; preds = %do.end15, %land.lhs.true9.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %13 = load i32, ptr @latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp21.not = icmp eq i32 %13, -1
  br i1 %cmp21.not, label %if.end20.if.end32_crit_edge, label %do.end26

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %nr29 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %14 = ptrtoint ptr %nr29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr29, align 8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %15, i32 noundef %13) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end20.if.end32_crit_edge, %if.end.thread.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %id33 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 1
  %16 = ptrtoint ptr %id33 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id33, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 878, i16 %17)
  %cmp35 = icmp ult i16 %17, 878
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end32
  %18 = load i32, ptr @triton1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool38.not = icmp eq i32 %18, 0
  br i1 %tobool38.not, label %if.then37.if.end57_crit_edge, label %if.then39

if.then37.if.end57_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %triton1 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 11
  %19 = ptrtoint ptr %triton1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8388608, ptr %triton1, align 8
  br label %if.end57

if.else:                                          ; preds = %if.end32
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 8
  %call42 = call i32 @pci_read_config_byte(ptr noundef %21, i32 noundef 64, ptr noundef nonnull %command) #7
  %22 = load i32, ptr @triton1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not = icmp eq i32 %22, 0
  br i1 %tobool43.not, label %if.else.if.end47_crit_edge, label %if.then44

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %command, align 1
  %25 = or i8 %24, 2
  store i8 %25, ptr %command, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else.if.end47_crit_edge
  %26 = load i32, ptr @vsfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool48.not = icmp eq i32 %26, 0
  br i1 %tobool48.not, label %if.end47.if.end53_crit_edge, label %if.then49

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %command, align 1
  %29 = or i8 %28, 4
  store i8 %29, ptr %command, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end47.if.end53_crit_edge
  %30 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci, align 8
  %32 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %command, align 1
  %call56 = call i32 @pci_write_config_byte(ptr noundef %31, i32 noundef 64, i8 noundef zeroext %33) #7
  br label %if.end57

if.end57:                                         ; preds = %if.end53, %if.then39, %if.then37.if.end57_crit_edge
  %34 = load i32, ptr @latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp58.not = icmp eq i32 %34, -1
  br i1 %cmp58.not, label %if.end57.cleanup_crit_edge, label %if.then60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %pci62 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %35 = ptrtoint ptr %pci62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci62, align 8
  %conv63 = trunc i32 %34 to i8
  %call64 = call i32 @pci_write_config_byte(ptr noundef %36, i32 noundef 13, i8 noundef zeroext %conv63) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end57.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_inout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_gpio_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_I2CRead(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lt9415_audio(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tea575x_hw_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bttv_tea575x_set_pins(ptr nocapture noundef readonly %tea, i8 noundef zeroext %pins) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tea_gpio = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %tea_gpio to i32
  call void @__asan_load1_noabort(i32 %2)
  %gpio.sroa.0.0.copyload = load i8, ptr %tea_gpio, align 8
  %gpio.sroa.6.0.tea_gpio.sroa_idx = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60, i32 1
  %3 = ptrtoint ptr %gpio.sroa.6.0.tea_gpio.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %gpio.sroa.6.0.copyload = load i8, ptr %gpio.sroa.6.0.tea_gpio.sroa_idx, align 1
  %gpio.sroa.9.0.tea_gpio.sroa_idx = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60, i32 2
  %4 = ptrtoint ptr %gpio.sroa.9.0.tea_gpio.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %gpio.sroa.9.0.copyload = load i8, ptr %gpio.sroa.9.0.tea_gpio.sroa_idx, align 2
  %conv = zext i8 %pins to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv1 = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl nuw i32 1, %conv1
  %phi.cast74 = and i32 %shl, 65535
  %cond = select i1 %tobool.not, i32 0, i32 %phi.cast74
  %and5 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %conv8 = zext i8 %gpio.sroa.6.0.copyload to i32
  %shl9 = shl nuw i32 1, %conv8
  %phi.bo = and i32 %shl9, 65535
  %cond12 = select i1 %tobool6.not, i32 0, i32 %phi.bo
  %and17 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %conv20 = zext i8 %gpio.sroa.9.0.copyload to i32
  %shl21 = shl nuw i32 1, %conv20
  %phi.bo75 = and i32 %shl21, 65535
  %cond24 = select i1 %tobool18.not, i32 0, i32 %phi.bo75
  %conv25 = or i32 %cond12, %cond
  %or34 = or i32 %shl9, %shl
  %or38 = or i32 %or34, %shl21
  %conv39 = or i32 %conv25, %cond24
  tail call void @bttv_gpio_bits(ptr noundef %1, i32 noundef %or38, i32 noundef %conv39) #7
  %mbox_ior = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 62
  %5 = ptrtoint ptr %mbox_ior to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox_ior, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool40.not = icmp eq i32 %6, 0
  br i1 %tobool40.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mbox_iow = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 63
  %7 = ptrtoint ptr %mbox_iow to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbox_iow, align 4
  %mbox_csel = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 64
  %9 = ptrtoint ptr %mbox_csel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox_csel, align 8
  %or42 = or i32 %10, %8
  tail call void @bttv_gpio_bits(ptr noundef %1, i32 noundef %or42, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #7
  %12 = ptrtoint ptr %mbox_ior to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_ior, align 8
  %14 = ptrtoint ptr %mbox_iow to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mbox_iow, align 4
  %or46 = or i32 %15, %13
  %16 = ptrtoint ptr %mbox_csel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbox_csel, align 8
  %or48 = or i32 %or46, %17
  tail call void @bttv_gpio_bits(ptr noundef %1, i32 noundef %or48, i32 noundef %or48) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bttv_tea575x_get_pins(ptr nocapture noundef readonly %tea) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tea_gpio = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %tea_gpio to i32
  call void @__asan_load1_noabort(i32 %2)
  %gpio.sroa.0.0.copyload = load i8, ptr %tea_gpio, align 8
  %gpio.sroa.7.0.tea_gpio.sroa_idx = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60, i32 3
  %3 = ptrtoint ptr %gpio.sroa.7.0.tea_gpio.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %gpio.sroa.7.0.copyload = load i8, ptr %gpio.sroa.7.0.tea_gpio.sroa_idx, align 1
  %mbox_ior = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 62
  %4 = ptrtoint ptr %mbox_ior to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbox_ior, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mbox_csel = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 64
  %6 = ptrtoint ptr %mbox_csel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox_csel, align 8
  %or = or i32 %7, %5
  tail call void @bttv_gpio_bits(ptr noundef %1, i32 noundef %or, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @bttv_gpio_read(ptr noundef %1) #7
  %9 = ptrtoint ptr %mbox_ior to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox_ior, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mbox_iow = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 63
  %11 = ptrtoint ptr %mbox_iow to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox_iow, align 4
  %or8 = or i32 %12, %10
  %mbox_csel9 = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 64
  %13 = ptrtoint ptr %mbox_csel9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox_csel9, align 8
  %or10 = or i32 %or8, %14
  tail call void @bttv_gpio_bits(ptr noundef %1, i32 noundef %or10, i32 noundef %or10) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then5, %if.end.if.end16_crit_edge
  %conv17 = and i32 %call, 65535
  %conv18 = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl nuw i32 1, %conv18
  %and = and i32 %conv17, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %tobool19.not to i8
  %conv26 = zext i8 %gpio.sroa.7.0.copyload to i32
  %shl27 = shl nuw i32 1, %conv26
  %and28 = and i32 %conv17, %shl27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %15 = or i8 %spec.select, 8
  %ret.1 = select i1 %tobool29.not, i8 %spec.select, i8 %15
  ret i8 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bttv_tea575x_set_direction(ptr nocapture noundef readonly %tea, i1 noundef zeroext %output) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tea_gpio = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %tea_gpio to i32
  call void @__asan_load1_noabort(i32 %2)
  %gpio.sroa.0.0.copyload = load i8, ptr %tea_gpio, align 8
  %gpio.sroa.6.0.tea_gpio.sroa_idx = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60, i32 1
  %3 = ptrtoint ptr %gpio.sroa.6.0.tea_gpio.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %gpio.sroa.6.0.copyload = load i8, ptr %gpio.sroa.6.0.tea_gpio.sroa_idx, align 1
  %gpio.sroa.10.0.tea_gpio.sroa_idx = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60, i32 2
  %4 = ptrtoint ptr %gpio.sroa.10.0.tea_gpio.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %gpio.sroa.10.0.copyload = load i8, ptr %gpio.sroa.10.0.tea_gpio.sroa_idx, align 2
  %gpio.sroa.14.0.tea_gpio.sroa_idx = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 60, i32 3
  %5 = ptrtoint ptr %gpio.sroa.14.0.tea_gpio.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %gpio.sroa.14.0.copyload = load i8, ptr %gpio.sroa.14.0.tea_gpio.sroa_idx, align 1
  %conv = zext i8 %gpio.sroa.6.0.copyload to i32
  %shl = shl nuw i32 1, %conv
  %conv1 = zext i8 %gpio.sroa.10.0.copyload to i32
  %shl2 = shl nuw i32 1, %conv1
  %or = or i32 %shl2, %shl
  %conv3 = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl4 = shl nuw i32 1, %conv3
  %or5 = or i32 %or, %shl4
  %conv6 = zext i8 %gpio.sroa.14.0.copyload to i32
  %shl7 = shl nuw i32 1, %conv6
  %or8 = or i32 %or5, %shl7
  %or5.or = select i1 %output, i32 %or5, i32 %or
  tail call void @bttv_gpio_inout(ptr noundef %1, i32 noundef %or8, i32 noundef %or5.or) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_tracking(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_I2CWrite(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 494)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 494)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !401, !402, !403, !404, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !418, !419, !421, !422, !423, !425, !426, !427, !428, !429, !431, !432, !433, !435, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !462, !464, !466, !468, !470, !472, !474, !475, !476, !478, !480, !481, !482, !484, !486, !487, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !501, !503, !504, !505, !507, !508, !509, !511, !512, !513, !515, !516, !517, !518, !520, !521, !522, !524, !525, !526, !528, !530, !532, !534, !536, !537, !538, !539, !540, !542, !543, !545, !546, !548, !549, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !770, !771, !772, !774, !776, !778, !779, !780, !781, !783, !785, !786, !787, !788, !789, !790, !791, !792, !794, !796, !798, !800, !802, !804, !806, !808, !809, !810, !812, !814, !816, !817, !818, !819, !821, !822, !823, !825, !826, !827, !829, !830, !831, !832, !834, !836, !838, !840, !842, !844, !846, !847, !848, !849, !851, !853, !854, !856, !858, !859, !861, !862, !863, !865, !866, !867, !868, !870, !871, !872, !874, !875, !876, !877, !879, !881, !882, !883, !884, !886, !888, !889, !890, !891, !893, !894, !895, !896, !897, !899, !901, !902, !903, !904, !906, !907, !908, !909, !911, !912, !913, !915, !916, !917, !919, !920, !921, !922, !924, !925, !926, !928, !929, !930, !932, !933, !934, !936, !938, !940, !942, !943, !944, !945, !947, !949, !951, !952, !953, !954, !956, !957, !958, !960, !961, !962, !964, !965, !966, !968, !969, !970, !971, !973, !974, !975, !977, !978, !979, !981, !982, !983, !985, !986, !987, !988, !990, !991, !992, !994, !995, !996, !998, !999, !1000, !1002, !1003, !1004, !1006, !1007, !1008, !1010, !1012, !1014, !1016, !1018, !1019, !1020, !1021, !1023, !1024, !1025, !1026, !1028, !1029, !1030, !1031, !1033, !1034, !1035, !1037, !1038, !1039}
!llvm.module.flags = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}
!llvm.ident = !{!1049}

!0 = !{ptr @no_overlay, !1, !"no_overlay", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 84, i32 5}
!2 = !{ptr @__param_triton1, !3, !"__param_triton1", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 100, i32 1}
!4 = !{ptr @__UNIQUE_ID_triton1type321, !3, !"__UNIQUE_ID_triton1type321", i1 false, i1 false}
!5 = !{ptr @__param_vsfx, !6, !"__param_vsfx", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 101, i32 1}
!7 = !{ptr @__UNIQUE_ID_vsfxtype322, !6, !"__UNIQUE_ID_vsfxtype322", i1 false, i1 false}
!8 = !{ptr @__param_no_overlay, !9, !"__param_no_overlay", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 102, i32 1}
!10 = !{ptr @__UNIQUE_ID_no_overlaytype323, !9, !"__UNIQUE_ID_no_overlaytype323", i1 false, i1 false}
!11 = !{ptr @__param_latency, !12, !"__param_latency", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 103, i32 1}
!13 = !{ptr @__UNIQUE_ID_latencytype324, !12, !"__UNIQUE_ID_latencytype324", i1 false, i1 false}
!14 = !{ptr @__param_gpiomask, !15, !"__param_gpiomask", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 104, i32 1}
!16 = !{ptr @__UNIQUE_ID_gpiomasktype325, !15, !"__UNIQUE_ID_gpiomasktype325", i1 false, i1 false}
!17 = !{ptr @__param_audioall, !18, !"__param_audioall", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 105, i32 1}
!19 = !{ptr @__UNIQUE_ID_audioalltype326, !18, !"__UNIQUE_ID_audioalltype326", i1 false, i1 false}
!20 = !{ptr @__param_autoload, !21, !"__param_autoload", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 106, i32 1}
!22 = !{ptr @__UNIQUE_ID_autoloadtype327, !21, !"__UNIQUE_ID_autoloadtype327", i1 false, i1 false}
!23 = !{ptr @__param_card, !24, !"__param_card", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 108, i32 1}
!25 = !{ptr @__UNIQUE_ID_cardtype328, !24, !"__UNIQUE_ID_cardtype328", i1 false, i1 false}
!26 = !{ptr @__param_pll, !27, !"__param_pll", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 109, i32 1}
!28 = !{ptr @__UNIQUE_ID_plltype329, !27, !"__UNIQUE_ID_plltype329", i1 false, i1 false}
!29 = !{ptr @__param_tuner, !30, !"__param_tuner", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 110, i32 1}
!31 = !{ptr @__UNIQUE_ID_tunertype330, !30, !"__UNIQUE_ID_tunertype330", i1 false, i1 false}
!32 = !{ptr @__param_svhs, !33, !"__param_svhs", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 111, i32 1}
!34 = !{ptr @__UNIQUE_ID_svhstype331, !33, !"__UNIQUE_ID_svhstype331", i1 false, i1 false}
!35 = !{ptr @__param_remote, !36, !"__param_remote", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 112, i32 1}
!37 = !{ptr @__UNIQUE_ID_remotetype332, !36, !"__UNIQUE_ID_remotetype332", i1 false, i1 false}
!38 = !{ptr @__param_audiodev, !39, !"__param_audiodev", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 113, i32 1}
!40 = !{ptr @__UNIQUE_ID_audiodevtype333, !39, !"__UNIQUE_ID_audiodevtype333", i1 false, i1 false}
!41 = !{ptr @__param_audiomux, !42, !"__param_audiomux", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 114, i32 1}
!43 = !{ptr @__UNIQUE_ID_audiomuxtype334, !42, !"__UNIQUE_ID_audiomuxtype334", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_triton1335, !45, !"__UNIQUE_ID_triton1335", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 116, i32 1}
!46 = !{ptr @__UNIQUE_ID_vsfx336, !47, !"__UNIQUE_ID_vsfx336", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 117, i32 1}
!48 = !{ptr @__UNIQUE_ID_latency337, !49, !"__UNIQUE_ID_latency337", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 118, i32 1}
!50 = !{ptr @__UNIQUE_ID_card338, !51, !"__UNIQUE_ID_card338", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 119, i32 1}
!52 = !{ptr @__UNIQUE_ID_pll339, !53, !"__UNIQUE_ID_pll339", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 120, i32 1}
!54 = !{ptr @__UNIQUE_ID_tuner340, !55, !"__UNIQUE_ID_tuner340", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 121, i32 1}
!56 = !{ptr @__UNIQUE_ID_autoload341, !57, !"__UNIQUE_ID_autoload341", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 122, i32 1}
!58 = !{ptr @__UNIQUE_ID_audiodev342, !59, !"__UNIQUE_ID_audiodev342", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 123, i32 1}
!60 = !{ptr @__UNIQUE_ID_saa6588343, !61, !"__UNIQUE_ID_saa6588343", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 129, i32 1}
!62 = !{ptr @__UNIQUE_ID_no_overlay344, !63, !"__UNIQUE_ID_no_overlay344", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 130, i32 1}
!64 = !{ptr @.str, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 350, i32 12}
!66 = !{ptr @.str.1, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 358, i32 12}
!68 = !{ptr @.str.2, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 370, i32 12}
!70 = !{ptr @.str.3, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 382, i32 12}
!72 = !{ptr @.str.4, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 399, i32 12}
!74 = !{ptr @.str.5, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 410, i32 12}
!76 = !{ptr @.str.6, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 422, i32 12}
!78 = !{ptr @.str.7, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 436, i32 12}
!80 = !{ptr @.str.8, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 449, i32 12}
!82 = !{ptr @.str.9, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 462, i32 12}
!84 = !{ptr @.str.10, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 474, i32 12}
!86 = !{ptr @.str.11, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 487, i32 12}
!88 = !{ptr @.str.12, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 501, i32 12}
!90 = !{ptr @.str.13, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 512, i32 12}
!92 = !{ptr @.str.14, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 527, i32 12}
!94 = !{ptr @.str.15, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 540, i32 12}
!96 = !{ptr @.str.16, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 554, i32 12}
!98 = !{ptr @.str.17, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 568, i32 12}
!100 = !{ptr @.str.18, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 582, i32 12}
!102 = !{ptr @.str.19, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 593, i32 12}
!104 = !{ptr @.str.20, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 607, i32 12}
!106 = !{ptr @.str.21, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 616, i32 12}
!108 = !{ptr @.str.22, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 629, i32 12}
!110 = !{ptr @.str.23, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 642, i32 12}
!112 = !{ptr @.str.24, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 659, i32 12}
!114 = !{ptr @.str.25, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 674, i32 21}
!116 = !{ptr @.str.26, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 687, i32 12}
!118 = !{ptr @.str.27, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 699, i32 12}
!120 = !{ptr @.str.28, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 714, i32 21}
!122 = !{ptr @.str.29, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 759, i32 12}
!124 = !{ptr @.str.30, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 772, i32 12}
!126 = !{ptr @.str.31, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 785, i32 12}
!128 = !{ptr @.str.32, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 810, i32 21}
!130 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 823, i32 12}
!132 = !{ptr @.str.34, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 852, i32 12}
!134 = !{ptr @.str.35, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 867, i32 12}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 881, i32 12}
!138 = !{ptr @.str.37, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 895, i32 12}
!140 = !{ptr @.str.38, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 909, i32 12}
!142 = !{ptr @.str.39, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 924, i32 12}
!144 = !{ptr @.str.40, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 939, i32 12}
!146 = !{ptr @.str.41, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 953, i32 12}
!148 = !{ptr @.str.42, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 966, i32 12}
!150 = !{ptr @.str.43, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 981, i32 12}
!152 = !{ptr @.str.44, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 995, i32 12}
!154 = !{ptr @.str.45, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1008, i32 12}
!156 = !{ptr @.str.46, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1022, i32 12}
!158 = !{ptr @.str.47, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1039, i32 12}
!160 = !{ptr @.str.48, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1052, i32 12}
!162 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1066, i32 12}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1092, i32 21}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1108, i32 21}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1132, i32 12}
!170 = !{ptr @.str.53, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1151, i32 12}
!172 = !{ptr @.str.54, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1170, i32 21}
!174 = !{ptr @.str.55, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1186, i32 21}
!176 = !{ptr @.str.56, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1202, i32 21}
!178 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1216, i32 21}
!180 = !{ptr @.str.58, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1230, i32 12}
!182 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1247, i32 21}
!184 = !{ptr @.str.60, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1261, i32 12}
!186 = !{ptr @.str.61, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1277, i32 21}
!188 = !{ptr @.str.62, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1291, i32 12}
!190 = !{ptr @.str.63, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1307, i32 12}
!192 = !{ptr @.str.64, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1321, i32 21}
!194 = !{ptr @.str.65, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1339, i32 12}
!196 = !{ptr @.str.66, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1354, i32 21}
!198 = !{ptr @.str.67, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1370, i32 21}
!200 = !{ptr @.str.68, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1411, i32 21}
!202 = !{ptr @.str.69, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1422, i32 21}
!204 = !{ptr @.str.70, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1443, i32 12}
!206 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1458, i32 12}
!208 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1484, i32 21}
!210 = !{ptr @.str.73, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1496, i32 21}
!212 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1509, i32 21}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1526, i32 21}
!216 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1539, i32 21}
!218 = !{ptr @.str.77, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1552, i32 21}
!220 = !{ptr @.str.78, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1586, i32 21}
!222 = !{ptr @.str.79, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1597, i32 21}
!224 = !{ptr @.str.80, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1610, i32 21}
!226 = !{ptr @.str.81, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1626, i32 21}
!228 = !{ptr @.str.82, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1638, i32 21}
!230 = !{ptr @.str.83, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1652, i32 21}
!232 = !{ptr @.str.84, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1664, i32 21}
!234 = !{ptr @.str.85, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1676, i32 21}
!236 = !{ptr @.str.86, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1688, i32 21}
!238 = !{ptr @.str.87, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1702, i32 21}
!240 = !{ptr @.str.88, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1714, i32 21}
!242 = !{ptr @.str.89, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1726, i32 21}
!244 = !{ptr @.str.90, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1738, i32 21}
!246 = !{ptr @.str.91, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1750, i32 21}
!248 = !{ptr @.str.92, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1763, i32 21}
!250 = !{ptr @.str.93, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1776, i32 21}
!252 = !{ptr @.str.94, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1790, i32 21}
!254 = !{ptr @.str.95, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1813, i32 21}
!256 = !{ptr @.str.96, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1826, i32 21}
!258 = !{ptr @.str.97, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1840, i32 21}
!260 = !{ptr @.str.98, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1855, i32 21}
!262 = !{ptr @.str.99, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1873, i32 21}
!264 = !{ptr @.str.100, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1894, i32 21}
!266 = !{ptr @.str.101, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1915, i32 21}
!268 = !{ptr @.str.102, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1937, i32 21}
!270 = !{ptr @.str.103, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1953, i32 21}
!272 = !{ptr @.str.104, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1969, i32 21}
!274 = !{ptr @.str.105, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1983, i32 21}
!276 = !{ptr @.str.106, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1995, i32 21}
!278 = !{ptr @.str.107, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2009, i32 21}
!280 = !{ptr @.str.108, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2023, i32 21}
!282 = !{ptr @.str.109, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2037, i32 21}
!284 = !{ptr @.str.110, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2049, i32 21}
!286 = !{ptr @.str.111, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2065, i32 21}
!288 = !{ptr @.str.112, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2075, i32 21}
!290 = !{ptr @.str.113, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2084, i32 21}
!292 = !{ptr @.str.114, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2097, i32 21}
!294 = !{ptr @.str.115, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2111, i32 21}
!296 = !{ptr @.str.116, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2124, i32 21}
!298 = !{ptr @.str.117, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2138, i32 21}
!300 = !{ptr @.str.118, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2150, i32 21}
!302 = !{ptr @.str.119, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2166, i32 21}
!304 = !{ptr @.str.120, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2185, i32 21}
!306 = !{ptr @.str.121, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2204, i32 21}
!308 = !{ptr @.str.122, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2217, i32 21}
!310 = !{ptr @.str.123, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2234, i32 21}
!312 = !{ptr @.str.124, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2249, i32 12}
!314 = !{ptr @.str.125, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2264, i32 12}
!316 = !{ptr @.str.126, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2281, i32 21}
!318 = !{ptr @.str.127, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2299, i32 21}
!320 = !{ptr @.str.128, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2310, i32 21}
!322 = !{ptr @.str.129, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2326, i32 21}
!324 = !{ptr @.str.130, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2339, i32 21}
!326 = !{ptr @.str.131, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2363, i32 21}
!328 = !{ptr @.str.132, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2392, i32 12}
!330 = !{ptr @.str.133, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2410, i32 21}
!332 = !{ptr @.str.134, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2422, i32 21}
!334 = !{ptr @.str.135, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2439, i32 12}
!336 = !{ptr @.str.136, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2454, i32 21}
!338 = !{ptr @.str.137, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2470, i32 12}
!340 = !{ptr @.str.138, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2489, i32 21}
!342 = !{ptr @.str.139, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2518, i32 21}
!344 = !{ptr @.str.140, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2534, i32 12}
!346 = !{ptr @.str.141, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2548, i32 12}
!348 = !{ptr @.str.142, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2564, i32 12}
!350 = !{ptr @.str.143, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2583, i32 21}
!352 = !{ptr @.str.144, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2598, i32 12}
!354 = !{ptr @.str.145, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2607, i32 12}
!356 = !{ptr @.str.146, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1390, i32 21}
!358 = !{ptr @.str.147, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2617, i32 21}
!360 = !{ptr @.str.148, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2632, i32 21}
!362 = !{ptr @.str.149, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2646, i32 12}
!364 = !{ptr @.str.150, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2663, i32 21}
!366 = !{ptr @.str.151, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2680, i32 21}
!368 = !{ptr @.str.152, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2702, i32 21}
!370 = !{ptr @.str.153, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2715, i32 21}
!372 = !{ptr @.str.154, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2728, i32 21}
!374 = !{ptr @.str.155, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 1926, i32 21}
!376 = !{ptr @.str.156, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2752, i32 21}
!378 = !{ptr @.str.157, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2776, i32 21}
!380 = !{ptr @.str.158, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2791, i32 21}
!382 = !{ptr @.str.159, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2805, i32 21}
!384 = !{ptr @.str.160, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2815, i32 21}
!386 = !{ptr @.str.161, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2823, i32 21}
!388 = !{ptr @.str.162, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2833, i32 12}
!390 = !{ptr @.str.163, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2841, i32 12}
!392 = !{ptr @.str.164, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2852, i32 21}
!394 = !{ptr @.str.165, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2869, i32 21}
!396 = !{ptr @bttv_tvcards, !397, !"bttv_tvcards", i1 false, i1 false}
!397 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 347, i32 15}
!398 = !{ptr @.str.166, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2910, i32 4}
!400 = !{ptr @.str.167, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.168, !399, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @bttv_idcard._entry, !399, !"_entry", i1 false, i1 false}
!403 = !{ptr @bttv_idcard._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.170, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2917, i32 4}
!406 = !{ptr @bttv_idcard._entry.169, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @bttv_idcard._entry_ptr.171, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.172, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2920, i32 4}
!410 = !{ptr @.str.173, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @bttv_idcard.__UNIQUE_ID_ddebug345, !409, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!412 = !{ptr @.str.174, !409, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.176, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2929, i32 2}
!415 = !{ptr @bttv_idcard._entry.175, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @bttv_idcard._entry_ptr.177, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.178, !414, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @.str.179, !414, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.181, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2951, i32 2}
!421 = !{ptr @bttv_idcard._entry.180, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @bttv_idcard._entry_ptr.182, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.184, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2954, i32 3}
!425 = !{ptr @bttv_idcard._entry.183, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @bttv_idcard._entry_ptr.185, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.186, !424, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.187, !424, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.189, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2957, i32 2}
!431 = !{ptr @bttv_idcard._entry.188, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @bttv_idcard._entry_ptr.190, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.191, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3390, i32 4}
!435 = !{ptr @.str.192, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @bttv_init_card2._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @bttv_init_card2._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.194, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3490, i32 3}
!440 = !{ptr @bttv_init_card2._entry.193, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @bttv_init_card2._entry_ptr.195, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.197, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3492, i32 3}
!444 = !{ptr @bttv_init_card2._entry.196, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @bttv_init_card2._entry_ptr.198, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.200, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3494, i32 3}
!448 = !{ptr @bttv_init_card2._entry.199, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @bttv_init_card2._entry_ptr.201, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.203, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3497, i32 3}
!452 = !{ptr @bttv_init_card2._entry.202, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @bttv_init_card2._entry_ptr.204, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.206, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3498, i32 3}
!456 = !{ptr @bttv_init_card2._entry.205, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @bttv_init_card2._entry_ptr.207, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @bttv_init_card2.addrs, !459, !"addrs", i1 false, i1 false}
!459 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3530, i32 31}
!460 = !{ptr @.str.208, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3538, i32 22}
!462 = !{ptr @bttv_init_card2.addrs.209, !463, !"addrs", i1 false, i1 false}
!463 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3556, i32 31}
!464 = !{ptr @.str.210, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3563, i32 22}
!466 = !{ptr @bttv_init_card2.addrs.211, !467, !"addrs", i1 false, i1 false}
!467 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3571, i32 31}
!468 = !{ptr @.str.212, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3577, i32 23}
!470 = !{ptr @.str.213, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3585, i32 22}
!472 = !{ptr @.str.215, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3592, i32 3}
!474 = !{ptr @bttv_init_card2._entry.214, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @bttv_init_card2._entry_ptr.216, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @bttv_init_card2.addrs.217, !477, !"addrs", i1 false, i1 false}
!477 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3628, i32 31}
!478 = !{ptr @.str.219, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3642, i32 2}
!480 = !{ptr @bttv_init_card2._entry.218, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @bttv_init_card2._entry_ptr.220, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.221, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3660, i32 23}
!484 = !{ptr @.str.222, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4889, i32 3}
!486 = !{ptr @.str.223, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @bttv_check_chipset._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @bttv_check_chipset._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.225, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4891, i32 3}
!491 = !{ptr @bttv_check_chipset._entry.224, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @bttv_check_chipset._entry_ptr.226, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.228, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4893, i32 3}
!495 = !{ptr @bttv_check_chipset._entry.227, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @bttv_check_chipset._entry_ptr.229, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.231, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4895, i32 4}
!499 = !{ptr @bttv_check_chipset._entry.230, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @bttv_check_chipset._entry_ptr.232, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.234, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4898, i32 4}
!503 = !{ptr @bttv_check_chipset._entry.233, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @bttv_check_chipset._entry_ptr.235, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.237, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4902, i32 3}
!507 = !{ptr @bttv_check_chipset._entry.236, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @bttv_check_chipset._entry_ptr.238, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.240, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4908, i32 4}
!511 = !{ptr @bttv_check_chipset._entry.239, !510, !"_entry", i1 false, i1 false}
!512 = !{ptr @bttv_check_chipset._entry_ptr.241, !510, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.242, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4922, i32 4}
!515 = !{ptr @.str.243, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @bttv_handle_chipset._entry, !514, !"_entry", i1 false, i1 false}
!517 = !{ptr @bttv_handle_chipset._entry_ptr, !514, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.245, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4925, i32 4}
!520 = !{ptr @bttv_handle_chipset._entry.244, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @bttv_handle_chipset._entry_ptr.246, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.248, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4927, i32 4}
!524 = !{ptr @bttv_handle_chipset._entry.247, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @bttv_handle_chipset._entry_ptr.249, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @triton1, !527, !"triton1", i1 false, i1 false}
!527 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 81, i32 21}
!528 = !{ptr @vsfx, !529, !"vsfx", i1 false, i1 false}
!529 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 82, i32 21}
!530 = !{ptr @audiodev, !531, !"audiodev", i1 false, i1 false}
!531 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 91, i32 21}
!532 = distinct !{null, !533, !"saa6588", i1 false, i1 false}
!533 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 92, i32 21}
!534 = !{ptr @eeprom_data, !535, !"eeprom_data", i1 false, i1 false}
!535 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2888, i32 22}
!536 = !{ptr @__param_str_triton1, !3, !"__param_str_triton1", i1 false, i1 false}
!537 = !{ptr @__param_str_vsfx, !6, !"__param_str_vsfx", i1 false, i1 false}
!538 = !{ptr @__param_str_no_overlay, !9, !"__param_str_no_overlay", i1 false, i1 false}
!539 = !{ptr @__param_str_latency, !12, !"__param_str_latency", i1 false, i1 false}
!540 = !{ptr @latency, !541, !"latency", i1 false, i1 false}
!541 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 83, i32 21}
!542 = !{ptr @__param_str_gpiomask, !15, !"__param_str_gpiomask", i1 false, i1 false}
!543 = !{ptr @gpiomask, !544, !"gpiomask", i1 false, i1 false}
!544 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 95, i32 21}
!545 = !{ptr @__param_str_audioall, !18, !"__param_str_audioall", i1 false, i1 false}
!546 = !{ptr @audioall, !547, !"audioall", i1 false, i1 false}
!547 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 96, i32 21}
!548 = !{ptr @__param_str_autoload, !21, !"__param_str_autoload", i1 false, i1 false}
!549 = !{ptr @autoload, !550, !"autoload", i1 false, i1 false}
!550 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 94, i32 21}
!551 = !{ptr @__param_str_card, !24, !"__param_str_card", i1 false, i1 false}
!552 = !{ptr @__param_arr_card, !24, !"__param_arr_card", i1 false, i1 false}
!553 = !{ptr @__param_str_pll, !27, !"__param_str_pll", i1 false, i1 false}
!554 = !{ptr @__param_arr_pll, !27, !"__param_arr_pll", i1 false, i1 false}
!555 = !{ptr @__param_str_tuner, !30, !"__param_str_tuner", i1 false, i1 false}
!556 = !{ptr @__param_arr_tuner, !30, !"__param_arr_tuner", i1 false, i1 false}
!557 = !{ptr @__param_str_svhs, !33, !"__param_str_svhs", i1 false, i1 false}
!558 = !{ptr @__param_arr_svhs, !33, !"__param_arr_svhs", i1 false, i1 false}
!559 = !{ptr @__param_str_remote, !36, !"__param_str_remote", i1 false, i1 false}
!560 = !{ptr @__param_arr_remote, !36, !"__param_arr_remote", i1 false, i1 false}
!561 = !{ptr @__param_str_audiodev, !39, !"__param_str_audiodev", i1 false, i1 false}
!562 = !{ptr @__param_arr_audiodev, !39, !"__param_arr_audiodev", i1 false, i1 false}
!563 = !{ptr @__param_str_audiomux, !42, !"__param_str_audiomux", i1 false, i1 false}
!564 = !{ptr @__param_arr_audiomux, !42, !"__param_arr_audiomux", i1 false, i1 false}
!565 = !{ptr @.str.250, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 147, i32 42}
!567 = !{ptr @.str.251, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 148, i32 42}
!569 = !{ptr @.str.252, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 149, i32 42}
!571 = !{ptr @.str.253, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 150, i32 42}
!573 = !{ptr @.str.254, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 151, i32 42}
!575 = !{ptr @.str.255, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 152, i32 42}
!577 = !{ptr @.str.256, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 153, i32 42}
!579 = !{ptr @.str.257, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 154, i32 42}
!581 = !{ptr @.str.258, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 155, i32 42}
!583 = !{ptr @.str.259, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 157, i32 42}
!585 = !{ptr @.str.260, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 158, i32 42}
!587 = !{ptr @.str.261, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 160, i32 42}
!589 = !{ptr @.str.262, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 161, i32 42}
!591 = !{ptr @.str.263, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 162, i32 42}
!593 = !{ptr @.str.264, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 163, i32 42}
!595 = !{ptr @.str.265, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 165, i32 42}
!597 = !{ptr @.str.266, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 166, i32 42}
!599 = !{ptr @.str.267, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 167, i32 42}
!601 = !{ptr @.str.268, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 170, i32 42}
!603 = !{ptr @.str.269, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 172, i32 42}
!605 = !{ptr @.str.270, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 177, i32 42}
!607 = !{ptr @.str.271, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 178, i32 42}
!609 = !{ptr @.str.272, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 179, i32 35}
!611 = !{ptr @.str.273, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 181, i32 42}
!613 = !{ptr @.str.274, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 182, i32 42}
!615 = !{ptr @.str.275, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 183, i32 42}
!617 = !{ptr @.str.276, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 184, i32 42}
!619 = !{ptr @.str.277, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 185, i32 42}
!621 = !{ptr @.str.278, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 186, i32 42}
!623 = !{ptr @.str.279, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 187, i32 42}
!625 = !{ptr @.str.280, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 189, i32 42}
!627 = !{ptr @.str.281, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 190, i32 42}
!629 = !{ptr @.str.282, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 193, i32 42}
!631 = !{ptr @.str.283, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 195, i32 42}
!633 = !{ptr @.str.284, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 196, i32 42}
!635 = !{ptr @.str.285, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 197, i32 42}
!637 = !{ptr @.str.286, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 198, i32 42}
!639 = !{ptr @.str.287, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 200, i32 42}
!641 = !{ptr @.str.288, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 201, i32 42}
!643 = !{ptr @.str.289, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 204, i32 42}
!645 = !{ptr @.str.290, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 205, i32 42}
!647 = !{ptr @.str.291, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 206, i32 42}
!649 = !{ptr @.str.292, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 209, i32 42}
!651 = !{ptr @.str.293, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 211, i32 42}
!653 = !{ptr @.str.294, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 215, i32 42}
!655 = !{ptr @.str.295, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 216, i32 42}
!657 = !{ptr @.str.296, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 217, i32 42}
!659 = !{ptr @.str.297, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 218, i32 42}
!661 = !{ptr @.str.298, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 219, i32 42}
!663 = !{ptr @.str.299, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 221, i32 42}
!665 = !{ptr @.str.300, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 222, i32 42}
!667 = !{ptr @.str.301, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 223, i32 42}
!669 = !{ptr @.str.302, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 224, i32 42}
!671 = !{ptr @.str.303, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 226, i32 42}
!673 = !{ptr @.str.304, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 227, i32 42}
!675 = !{ptr @.str.305, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 228, i32 42}
!677 = !{ptr @.str.306, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 229, i32 42}
!679 = !{ptr @.str.307, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 236, i32 42}
!681 = !{ptr @.str.308, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 265, i32 42}
!683 = !{ptr @.str.309, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 266, i32 42}
!685 = !{ptr @.str.310, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 268, i32 42}
!687 = !{ptr @.str.311, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 270, i32 42}
!689 = !{ptr @.str.312, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 271, i32 42}
!691 = !{ptr @.str.313, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 272, i32 42}
!693 = !{ptr @.str.314, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 273, i32 42}
!695 = !{ptr @.str.315, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 275, i32 42}
!697 = !{ptr @.str.316, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 276, i32 42}
!699 = !{ptr @.str.317, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 278, i32 42}
!701 = !{ptr @.str.318, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 281, i32 44}
!703 = !{ptr @.str.319, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 282, i32 44}
!705 = !{ptr @.str.320, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 283, i32 42}
!707 = !{ptr @.str.321, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 284, i32 42}
!709 = !{ptr @.str.322, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 286, i32 42}
!711 = !{ptr @.str.323, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 287, i32 42}
!713 = !{ptr @.str.324, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 289, i32 42}
!715 = !{ptr @.str.325, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 290, i32 42}
!717 = !{ptr @.str.326, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 292, i32 46}
!719 = !{ptr @.str.327, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 293, i32 46}
!721 = !{ptr @.str.328, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 294, i32 46}
!723 = !{ptr @.str.329, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 295, i32 46}
!725 = !{ptr @.str.330, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 314, i32 42}
!727 = !{ptr @.str.331, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 315, i32 42}
!729 = !{ptr @.str.332, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 316, i32 42}
!731 = !{ptr @.str.333, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 317, i32 42}
!733 = !{ptr @.str.334, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 320, i32 47}
!735 = !{ptr @.str.335, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 322, i32 40}
!737 = !{ptr @.str.336, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 324, i32 44}
!739 = !{ptr @.str.337, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 326, i32 45}
!741 = !{ptr @.str.338, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 327, i32 48}
!743 = !{ptr @.str.339, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 331, i32 42}
!745 = !{ptr @.str.340, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 332, i32 42}
!747 = !{ptr @.str.341, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 333, i32 42}
!749 = !{ptr @.str.342, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 334, i32 42}
!751 = !{ptr @.str.343, !752, !"<string literal>", i1 false, i1 false}
!752 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 335, i32 42}
!753 = !{ptr @.str.344, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 336, i32 42}
!755 = !{ptr @.str.345, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 337, i32 42}
!757 = !{ptr @.str.346, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 338, i32 42}
!759 = !{ptr @cards, !760, !"cards", i1 false, i1 false}
!760 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 146, i32 3}
!761 = !{ptr @card, !762, !"card", i1 false, i1 false}
!762 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 86, i32 21}
!763 = !{ptr @audiomux, !764, !"audiomux", i1 false, i1 false}
!764 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 97, i32 21}
!765 = !{ptr @gvc1100_muxsel.masks, !766, !"masks", i1 false, i1 false}
!766 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3185, i32 19}
!767 = !{ptr @.str.347, !768, !"<string literal>", i1 false, i1 false}
!768 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3284, i32 3}
!769 = !{ptr @.str.348, !768, !"<string literal>", i1 false, i1 false}
!770 = !{ptr @bttv_reset_audio.__UNIQUE_ID_ddebug347, !768, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!771 = !{ptr @.str.349, !768, !"<string literal>", i1 false, i1 false}
!772 = !{ptr @.str.350, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2969, i32 31}
!774 = !{ptr @.str.351, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2971, i32 39}
!776 = !{ptr @.str.352, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 2978, i32 3}
!778 = !{ptr @.str.353, !777, !"<string literal>", i1 false, i1 false}
!779 = !{ptr @identify_by_eeprom._entry, !777, !"_entry", i1 false, i1 false}
!780 = !{ptr @identify_by_eeprom._entry_ptr, !777, !"_entry_ptr", i1 false, i1 false}
!781 = !{ptr @.str.354, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3073, i32 45}
!783 = !{ptr @.str.355, !784, !"<string literal>", i1 false, i1 false}
!784 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3095, i32 3}
!785 = !{ptr @.str.356, !784, !"<string literal>", i1 false, i1 false}
!786 = !{ptr @miro_pinnacle_gpio._entry, !784, !"_entry", i1 false, i1 false}
!787 = !{ptr @miro_pinnacle_gpio._entry_ptr, !784, !"_entry_ptr", i1 false, i1 false}
!788 = !{ptr @.str.357, !784, !"<string literal>", i1 false, i1 false}
!789 = !{ptr @.str.358, !784, !"<string literal>", i1 false, i1 false}
!790 = !{ptr @.str.359, !784, !"<string literal>", i1 false, i1 false}
!791 = !{ptr @.str.360, !784, !"<string literal>", i1 false, i1 false}
!792 = !{ptr @.str.361, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3106, i32 11}
!794 = !{ptr @.str.362, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3110, i32 11}
!796 = !{ptr @.str.363, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3115, i32 11}
!798 = !{ptr @.str.364, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3120, i32 11}
!800 = !{ptr @.str.365, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3124, i32 11}
!802 = !{ptr @.str.366, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3132, i32 11}
!804 = !{ptr @.str.367, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3136, i32 11}
!806 = !{ptr @.str.369, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3141, i32 3}
!808 = !{ptr @miro_pinnacle_gpio._entry.368, !807, !"_entry", i1 false, i1 false}
!809 = !{ptr @miro_pinnacle_gpio._entry_ptr.370, !807, !"_entry_ptr", i1 false, i1 false}
!810 = !{ptr @miro_tunermap, !811, !"miro_tunermap", i1 false, i1 false}
!811 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3060, i32 12}
!812 = distinct !{null, !813, !"miro_fmtuner", i1 false, i1 false}
!813 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3062, i32 12}
!814 = !{ptr @.str.371, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3023, i32 3}
!816 = !{ptr @.str.372, !815, !"<string literal>", i1 false, i1 false}
!817 = !{ptr @flyvideo_gpio._entry, !815, !"_entry", i1 false, i1 false}
!818 = !{ptr @flyvideo_gpio._entry_ptr, !815, !"_entry_ptr", i1 false, i1 false}
!819 = !{ptr @.str.374, !820, !"<string literal>", i1 false, i1 false}
!820 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3040, i32 2}
!821 = !{ptr @flyvideo_gpio._entry.373, !820, !"_entry", i1 false, i1 false}
!822 = !{ptr @flyvideo_gpio._entry_ptr.375, !820, !"_entry_ptr", i1 false, i1 false}
!823 = !{ptr @.str.377, !824, !"<string literal>", i1 false, i1 false}
!824 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3043, i32 2}
!825 = !{ptr @flyvideo_gpio._entry.376, !824, !"_entry", i1 false, i1 false}
!826 = !{ptr @flyvideo_gpio._entry_ptr.378, !824, !"_entry_ptr", i1 false, i1 false}
!827 = !{ptr @.str.379, !828, !"<string literal>", i1 false, i1 false}
!828 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3204, i32 2}
!829 = !{ptr @.str.380, !828, !"<string literal>", i1 false, i1 false}
!830 = !{ptr @init_lmlbt4x.__UNIQUE_ID_ddebug346, !828, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!831 = !{ptr @.str.381, !828, !"<string literal>", i1 false, i1 false}
!832 = !{ptr @pll, !833, !"pll", i1 false, i1 false}
!833 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 87, i32 21}
!834 = !{ptr @tuner, !835, !"tuner", i1 false, i1 false}
!835 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 88, i32 21}
!836 = !{ptr @svhs, !837, !"svhs", i1 false, i1 false}
!837 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 89, i32 21}
!838 = !{ptr @remote, !839, !"remote", i1 false, i1 false}
!839 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 90, i32 21}
!840 = !{ptr @tvaudio_addrs.addrs, !841, !"addrs", i1 false, i1 false}
!841 = !{!"../include/media/i2c/tvaudio.h", i32 37, i32 30}
!842 = !{ptr @.str.382, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3693, i32 35}
!844 = !{ptr @.str.383, !845, !"<string literal>", i1 false, i1 false}
!845 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3695, i32 3}
!846 = !{ptr @.str.384, !845, !"<string literal>", i1 false, i1 false}
!847 = !{ptr @modtec_eeprom._entry, !845, !"_entry", i1 false, i1 false}
!848 = !{ptr @modtec_eeprom._entry_ptr, !845, !"_entry_ptr", i1 false, i1 false}
!849 = !{ptr @.str.385, !850, !"<string literal>", i1 false, i1 false}
!850 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3697, i32 42}
!851 = !{ptr @modtec_eeprom._entry.386, !852, !"_entry", i1 false, i1 false}
!852 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3699, i32 3}
!853 = !{ptr @modtec_eeprom._entry_ptr.387, !852, !"_entry_ptr", i1 false, i1 false}
!854 = !{ptr @.str.388, !855, !"<string literal>", i1 false, i1 false}
!855 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3701, i32 42}
!856 = !{ptr @modtec_eeprom._entry.389, !857, !"_entry", i1 false, i1 false}
!857 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3703, i32 3}
!858 = !{ptr @modtec_eeprom._entry_ptr.390, !857, !"_entry_ptr", i1 false, i1 false}
!859 = !{ptr @.str.392, !860, !"<string literal>", i1 false, i1 false}
!860 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3706, i32 3}
!861 = !{ptr @modtec_eeprom._entry.391, !860, !"_entry", i1 false, i1 false}
!862 = !{ptr @modtec_eeprom._entry_ptr.393, !860, !"_entry_ptr", i1 false, i1 false}
!863 = !{ptr @.str.394, !864, !"<string literal>", i1 false, i1 false}
!864 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3719, i32 2}
!865 = !{ptr @.str.395, !864, !"<string literal>", i1 false, i1 false}
!866 = !{ptr @hauppauge_eeprom._entry, !864, !"_entry", i1 false, i1 false}
!867 = !{ptr @hauppauge_eeprom._entry_ptr, !864, !"_entry_ptr", i1 false, i1 false}
!868 = !{ptr @.str.397, !869, !"<string literal>", i1 false, i1 false}
!869 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3727, i32 3}
!870 = !{ptr @hauppauge_eeprom._entry.396, !869, !"_entry", i1 false, i1 false}
!871 = !{ptr @hauppauge_eeprom._entry_ptr.398, !869, !"_entry_ptr", i1 false, i1 false}
!872 = !{ptr @.str.399, !873, !"<string literal>", i1 false, i1 false}
!873 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3814, i32 3}
!874 = !{ptr @.str.400, !873, !"<string literal>", i1 false, i1 false}
!875 = !{ptr @tea575x_init._entry, !873, !"_entry", i1 false, i1 false}
!876 = !{ptr @tea575x_init._entry_ptr, !873, !"_entry_ptr", i1 false, i1 false}
!877 = !{ptr @bttv_tea_ops, !878, !"bttv_tea_ops", i1 false, i1 false}
!878 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3803, i32 37}
!879 = !{ptr @.str.401, !880, !"<string literal>", i1 false, i1 false}
!880 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3841, i32 3}
!881 = !{ptr @.str.402, !880, !"<string literal>", i1 false, i1 false}
!882 = !{ptr @terratec_active_radio_upgrade._entry, !880, !"_entry", i1 false, i1 false}
!883 = !{ptr @terratec_active_radio_upgrade._entry_ptr, !880, !"_entry_ptr", i1 false, i1 false}
!884 = !{ptr @.str.403, !885, !"<string literal>", i1 false, i1 false}
!885 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3906, i32 35}
!886 = !{ptr @.str.404, !887, !"<string literal>", i1 false, i1 false}
!887 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3908, i32 3}
!888 = !{ptr @.str.405, !887, !"<string literal>", i1 false, i1 false}
!889 = !{ptr @pvr_boot._entry, !887, !"_entry", i1 false, i1 false}
!890 = !{ptr @pvr_boot._entry_ptr, !887, !"_entry_ptr", i1 false, i1 false}
!891 = !{ptr @.str.407, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3912, i32 2}
!893 = !{ptr @pvr_boot._entry.406, !892, !"_entry", i1 false, i1 false}
!894 = !{ptr @pvr_boot._entry_ptr.408, !892, !"_entry_ptr", i1 false, i1 false}
!895 = distinct !{null, !892, !"<string literal>", i1 false, i1 false}
!896 = !{ptr @.str.410, !892, !"<string literal>", i1 false, i1 false}
!897 = !{ptr @.str.411, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 3930, i32 20}
!899 = !{ptr @.str.412, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4011, i32 4}
!901 = !{ptr @.str.413, !900, !"<string literal>", i1 false, i1 false}
!902 = !{ptr @osprey_eeprom._entry, !900, !"_entry", i1 false, i1 false}
!903 = !{ptr @osprey_eeprom._entry_ptr, !900, !"_entry_ptr", i1 false, i1 false}
!904 = !{ptr @.str.415, !905, !"<string literal>", i1 false, i1 false}
!905 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4018, i32 2}
!906 = !{ptr @osprey_eeprom._entry.414, !905, !"_entry", i1 false, i1 false}
!907 = !{ptr @osprey_eeprom._entry_ptr.416, !905, !"_entry_ptr", i1 false, i1 false}
!908 = !{ptr @.str.417, !905, !"<string literal>", i1 false, i1 false}
!909 = !{ptr @.str.419, !910, !"<string literal>", i1 false, i1 false}
!910 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4027, i32 3}
!911 = !{ptr @osprey_eeprom._entry.418, !910, !"_entry", i1 false, i1 false}
!912 = !{ptr @osprey_eeprom._entry_ptr.420, !910, !"_entry_ptr", i1 false, i1 false}
!913 = !{ptr @.str.422, !914, !"<string literal>", i1 false, i1 false}
!914 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4030, i32 3}
!915 = !{ptr @osprey_eeprom._entry.421, !914, !"_entry", i1 false, i1 false}
!916 = !{ptr @osprey_eeprom._entry_ptr.423, !914, !"_entry_ptr", i1 false, i1 false}
!917 = !{ptr @.str.424, !918, !"<string literal>", i1 false, i1 false}
!918 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4074, i32 2}
!919 = !{ptr @.str.425, !918, !"<string literal>", i1 false, i1 false}
!920 = !{ptr @avermedia_eeprom._entry, !918, !"_entry", i1 false, i1 false}
!921 = !{ptr @avermedia_eeprom._entry_ptr, !918, !"_entry_ptr", i1 false, i1 false}
!922 = !{ptr @.str.427, !923, !"<string literal>", i1 false, i1 false}
!923 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4078, i32 3}
!924 = !{ptr @avermedia_eeprom._entry.426, !923, !"_entry", i1 false, i1 false}
!925 = !{ptr @avermedia_eeprom._entry_ptr.428, !923, !"_entry_ptr", i1 false, i1 false}
!926 = !{ptr @.str.430, !927, !"<string literal>", i1 false, i1 false}
!927 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4080, i32 3}
!928 = !{ptr @avermedia_eeprom._entry.429, !927, !"_entry", i1 false, i1 false}
!929 = !{ptr @avermedia_eeprom._entry_ptr.431, !927, !"_entry_ptr", i1 false, i1 false}
!930 = !{ptr @.str.433, !931, !"<string literal>", i1 false, i1 false}
!931 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4081, i32 2}
!932 = !{ptr @avermedia_eeprom._entry.432, !931, !"_entry", i1 false, i1 false}
!933 = !{ptr @avermedia_eeprom._entry_ptr.434, !931, !"_entry_ptr", i1 false, i1 false}
!934 = !{ptr @tuner_0_table, !935, !"tuner_0_table", i1 false, i1 false}
!935 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4039, i32 12}
!936 = !{ptr @tuner_1_table, !937, !"tuner_1_table", i1 false, i1 false}
!937 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4047, i32 12}
!938 = !{ptr @.str.435, !939, !"<string literal>", i1 false, i1 false}
!939 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4127, i32 26}
!940 = !{ptr @.str.436, !941, !"<string literal>", i1 false, i1 false}
!941 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4129, i32 3}
!942 = !{ptr @.str.437, !941, !"<string literal>", i1 false, i1 false}
!943 = !{ptr @boot_msp34xx._entry, !941, !"_entry", i1 false, i1 false}
!944 = !{ptr @boot_msp34xx._entry_ptr, !941, !"_entry_ptr", i1 false, i1 false}
!945 = !{ptr @init_PXC200.vals, !946, !"vals", i1 false, i1 false}
!946 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4141, i32 13}
!947 = !{ptr @.str.438, !948, !"<string literal>", i1 false, i1 false}
!948 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4156, i32 26}
!949 = !{ptr @.str.439, !950, !"<string literal>", i1 false, i1 false}
!950 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4169, i32 2}
!951 = !{ptr @.str.440, !950, !"<string literal>", i1 false, i1 false}
!952 = !{ptr @init_PXC200._entry, !950, !"_entry", i1 false, i1 false}
!953 = !{ptr @init_PXC200._entry_ptr, !950, !"_entry_ptr", i1 false, i1 false}
!954 = !{ptr @.str.442, !955, !"<string literal>", i1 false, i1 false}
!955 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4178, i32 2}
!956 = !{ptr @init_PXC200._entry.441, !955, !"_entry", i1 false, i1 false}
!957 = !{ptr @init_PXC200._entry_ptr.443, !955, !"_entry_ptr", i1 false, i1 false}
!958 = !{ptr @.str.445, !959, !"<string literal>", i1 false, i1 false}
!959 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4197, i32 4}
!960 = !{ptr @init_PXC200._entry.444, !959, !"_entry", i1 false, i1 false}
!961 = !{ptr @init_PXC200._entry_ptr.446, !959, !"_entry_ptr", i1 false, i1 false}
!962 = !{ptr @.str.448, !963, !"<string literal>", i1 false, i1 false}
!963 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4202, i32 2}
!964 = !{ptr @init_PXC200._entry.447, !963, !"_entry", i1 false, i1 false}
!965 = !{ptr @init_PXC200._entry_ptr.449, !963, !"_entry_ptr", i1 false, i1 false}
!966 = !{ptr @.str.450, !967, !"<string literal>", i1 false, i1 false}
!967 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4241, i32 2}
!968 = !{ptr @.str.451, !967, !"<string literal>", i1 false, i1 false}
!969 = !{ptr @init_RTV24._entry, !967, !"_entry", i1 false, i1 false}
!970 = !{ptr @init_RTV24._entry_ptr, !967, !"_entry_ptr", i1 false, i1 false}
!971 = !{ptr @.str.453, !972, !"<string literal>", i1 false, i1 false}
!972 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4255, i32 3}
!973 = !{ptr @init_RTV24._entry.452, !972, !"_entry", i1 false, i1 false}
!974 = !{ptr @init_RTV24._entry_ptr.454, !972, !"_entry_ptr", i1 false, i1 false}
!975 = !{ptr @.str.456, !976, !"<string literal>", i1 false, i1 false}
!976 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4268, i32 3}
!977 = !{ptr @init_RTV24._entry.455, !976, !"_entry", i1 false, i1 false}
!978 = !{ptr @init_RTV24._entry_ptr.457, !976, !"_entry_ptr", i1 false, i1 false}
!979 = !{ptr @.str.459, !980, !"<string literal>", i1 false, i1 false}
!980 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4274, i32 2}
!981 = !{ptr @init_RTV24._entry.458, !980, !"_entry", i1 false, i1 false}
!982 = !{ptr @init_RTV24._entry_ptr.460, !980, !"_entry_ptr", i1 false, i1 false}
!983 = !{ptr @.str.461, !984, !"<string literal>", i1 false, i1 false}
!984 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4306, i32 3}
!985 = !{ptr @.str.462, !984, !"<string literal>", i1 false, i1 false}
!986 = !{ptr @init_PCI8604PW._entry, !984, !"_entry", i1 false, i1 false}
!987 = !{ptr @init_PCI8604PW._entry_ptr, !984, !"_entry_ptr", i1 false, i1 false}
!988 = !{ptr @.str.463, !989, !"<string literal>", i1 false, i1 false}
!989 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4323, i32 4}
!990 = !{ptr @init_PCI8604PW.__UNIQUE_ID_ddebug348, !989, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!991 = !{ptr @.str.464, !989, !"<string literal>", i1 false, i1 false}
!992 = !{ptr @.str.466, !993, !"<string literal>", i1 false, i1 false}
!993 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4331, i32 4}
!994 = !{ptr @init_PCI8604PW._entry.465, !993, !"_entry", i1 false, i1 false}
!995 = !{ptr @init_PCI8604PW._entry_ptr.467, !993, !"_entry_ptr", i1 false, i1 false}
!996 = !{ptr @.str.469, !997, !"<string literal>", i1 false, i1 false}
!997 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4339, i32 4}
!998 = !{ptr @init_PCI8604PW._entry.468, !997, !"_entry", i1 false, i1 false}
!999 = !{ptr @init_PCI8604PW._entry_ptr.470, !997, !"_entry_ptr", i1 false, i1 false}
!1000 = !{ptr @.str.472, !1001, !"<string literal>", i1 false, i1 false}
!1001 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4342, i32 4}
!1002 = !{ptr @init_PCI8604PW._entry.471, !1001, !"_entry", i1 false, i1 false}
!1003 = !{ptr @init_PCI8604PW._entry_ptr.473, !1001, !"_entry_ptr", i1 false, i1 false}
!1004 = !{ptr @.str.475, !1005, !"<string literal>", i1 false, i1 false}
!1005 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4359, i32 4}
!1006 = !{ptr @init_PCI8604PW._entry.474, !1005, !"_entry", i1 false, i1 false}
!1007 = !{ptr @init_PCI8604PW._entry_ptr.476, !1005, !"_entry_ptr", i1 false, i1 false}
!1008 = !{ptr @rv605_muxsel.muxgpio, !1009, !"muxgpio", i1 false, i1 false}
!1009 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4393, i32 18}
!1010 = !{ptr @kodicom4400r_muxsel.map, !1011, !"map", i1 false, i1 false}
!1011 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4503, i32 23}
!1012 = !{ptr @master, !1013, !"master", i1 false, i1 false}
!1013 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 93, i32 22}
!1014 = !{ptr @xguard_muxsel.masks, !1015, !"masks", i1 false, i1 false}
!1015 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4573, i32 19}
!1016 = !{ptr @.str.477, !1017, !"<string literal>", i1 false, i1 false}
!1017 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4590, i32 2}
!1018 = !{ptr @.str.478, !1017, !"<string literal>", i1 false, i1 false}
!1019 = !{ptr @picolo_tetra_muxsel.__UNIQUE_ID_ddebug349, !1017, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!1020 = !{ptr @.str.479, !1017, !"<string literal>", i1 false, i1 false}
!1021 = !{ptr @.str.480, !1022, !"<string literal>", i1 false, i1 false}
!1022 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4635, i32 2}
!1023 = !{ptr @.str.481, !1022, !"<string literal>", i1 false, i1 false}
!1024 = !{ptr @ivc120_muxsel.__UNIQUE_ID_ddebug350, !1022, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!1025 = !{ptr @.str.482, !1022, !"<string literal>", i1 false, i1 false}
!1026 = !{ptr @.str.483, !1027, !"<string literal>", i1 false, i1 false}
!1027 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4692, i32 3}
!1028 = !{ptr @.str.484, !1027, !"<string literal>", i1 false, i1 false}
!1029 = !{ptr @PXC200_muxsel.__UNIQUE_ID_ddebug351, !1027, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!1030 = !{ptr @.str.485, !1027, !"<string literal>", i1 false, i1 false}
!1031 = !{ptr @.str.486, !1032, !"<string literal>", i1 false, i1 false}
!1032 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4700, i32 3}
!1033 = !{ptr @PXC200_muxsel.__UNIQUE_ID_ddebug352, !1032, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!1034 = !{ptr @.str.487, !1032, !"<string literal>", i1 false, i1 false}
!1035 = !{ptr @.str.488, !1036, !"<string literal>", i1 false, i1 false}
!1036 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4741, i32 2}
!1037 = !{ptr @PXC200_muxsel.__UNIQUE_ID_ddebug353, !1036, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!1038 = !{ptr @.str.489, !1036, !"<string literal>", i1 false, i1 false}
!1039 = !{ptr @gv800s_muxsel.map, !1040, !"map", i1 false, i1 false}
!1040 = !{!"../drivers/media/pci/bt8xx/bttv-cards.c", i32 4815, i32 22}
!1041 = !{i32 1, !"wchar_size", i32 2}
!1042 = !{i32 1, !"min_enum_size", i32 4}
!1043 = !{i32 8, !"branch-target-enforcement", i32 0}
!1044 = !{i32 8, !"sign-return-address", i32 0}
!1045 = !{i32 8, !"sign-return-address-all", i32 0}
!1046 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1047 = !{i32 7, !"uwtable", i32 1}
!1048 = !{i32 7, !"frame-pointer", i32 2}
!1049 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1050 = !{i64 2148906185, i64 2148906190, i64 2148906203, i64 2148906247, i64 2148906281, i64 2148906302}
!1051 = !{i64 2157741545}
!1052 = !{i64 5137251}
!1053 = !{i64 5137669}
!1054 = !{i64 2157742311}
!1055 = !{i64 2157742609}
!1056 = !{i64 2157604489}
!1057 = !{i64 2157605465}
!1058 = !{i64 2157606907}
!1059 = !{i64 2157607889}
!1060 = !{i64 2157609331}
!1061 = !{i64 2157610313}
!1062 = !{i64 2157733181}
!1063 = !{!"auto-init"}
!1064 = !{i64 2157699062}
!1065 = !{i64 2157699587}
!1066 = !{i64 2157700142}
!1067 = !{i64 2157700700}
!1068 = !{i64 2157701499}
!1069 = !{i64 2157703878}
!1070 = !{i64 2157704452}
!1071 = !{i64 2157705008}
!1072 = !{i64 2157705795}
!1073 = !{i64 2157616733}
!1074 = !{i64 2157617748}
!1075 = !{i64 2157711677}
!1076 = !{i64 2157712446}
!1077 = !{i64 2157715140}
!1078 = !{i64 2157715639}
!1079 = !{i64 2157721392}
!1080 = !{i64 2157687667}
!1081 = !{i64 2157691921}
!1082 = !{i64 2157692208}
!1083 = !{i64 2157729558}
!1084 = !{i64 2157730057}
!1085 = !{i64 7098249}
!1086 = !{i64 2157601978}
!1087 = !{i64 2157603003}
!1088 = !{i64 2157612902}
