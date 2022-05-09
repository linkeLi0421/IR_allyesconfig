; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-cards.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+saa7134_tuner_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_tuner_callback\09\09\09\09"
module asm "\09.long\09__crc_saa7134_tuner_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_tuner_callback\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.saa7134_board = type { ptr, i32, i32, [8 x %struct.saa7134_input], %struct.saa7134_input, %struct.saa7134_input, i32, i32, i8, i8, i8, i8, i32, %struct.tda829x_config, i32, i32, i32, i32, i8 }
%struct.saa7134_input = type { i32, i32, i32, i32 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.122 }
%struct.anon.122 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tea5767_ctrl = type { i8, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TV (mono only)\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite0\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite1\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite2\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite3\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite4\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S-Video0\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S-Video1\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Composite over S-Video\00", [41 x i8] zeroinitializer }, align 32
@saa7134_input_name = dso_local constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr null, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UNKNOWN/GENERIC\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Proteus Pro [philips reference design]\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LifeView FlyVIDEO3000\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LifeView/Typhoon FlyVIDEO2000\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EMPRESS\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SKNet Monster TV\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tevion MD 9717\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"KNC One TV-Station RDS / Typhoon TV Tuner RDS\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec Cinergy 400 TV\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Medion 5044\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Kworld/KuroutoShikou SAA7130-TVPCI\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec Cinergy 600 TV\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Medion 7134\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Typhoon TV+Radio 90031\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ELSA EX-VISION 300TV\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ELSA EX-VISION 500TV\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ASUS TV-FM 7134\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AOPEN VA1000 POWER\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BMK MPEX No Tuner\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Compro VideoMate TV\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Matrox CronosPlus\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"10MOONS PCI TV CAPTURE CARD\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AverMedia M156 / Medion 2819\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BMK MPEX Tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"KNC One TV-Station DVR\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ASUS TV-FM 7133\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Pinnacle PCTV Stereo (saa7134)\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Manli MuchTV M-TV002\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Manli MuchTV M-TV001\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Nagase Sangyo TransGear 3000TV\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Elitegroup ECS TVP3XP FM1216 Tuner Card(PAL-BG,FM) \00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Elitegroup ECS TVP3XP FM1236 Tuner Card (NTSC,FM)\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AVACS SmartTV\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AVerMedia DVD EZMaker\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Noval Prime TV 7133\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AverMedia AverTV Studio 305\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UPMOST PURPLE TV\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Items MuchTV Plus / IT-005\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec Cinergy 200 TV\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LifeView FlyTV Platinum Mini\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Compro VideoMate TV PVR/FM\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Compro VideoMate TV Gold+\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sabrent SBT-TVFM (saa7130)\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c":Zolid Xpert TV7134\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Empire PCI TV-Radio LE\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Avermedia AVerTV Studio 307\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AVerMedia Cardbus TV/Radio (E500)\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy 400 mobile\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy 600 TV MK3\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Compro VideoMate Gold+ Pal\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Pinnacle PCTV 300i DVB-T + PAL\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ProVideo PV952\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AverMedia AverTV/305\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ASUS TV-FM 7135\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LifeView FlyTV Platinum FM / Gold\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"LifeView FlyDVB-T DUO / MSI TV@nywhere Duo\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Avermedia AVerTV 307\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Avermedia AVerTV GO 007 FM\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ADS Tech Instant TV (saa7135)\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Kworld/Tevion V-Stream Xpert TV PVR7134\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LifeView/Typhoon/Genius FlyDVB-T Duo Cardbus\00", [51 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Philips TOUGH DVB-T reference design\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Compro VideoMate TV Gold+II\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Kworld Xpert TV PVR7134\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FlyTV mini Asus Digimatrix\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"V-Stream Studio TV Terminator\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Yuan TUN-900 (saa7135)\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 409 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GoTView 7135 PCI\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Philips EUROPA V3 reference design\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Compro Videomate DVB-T300\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Compro Videomate DVB-T200\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RTD Embedded Technologies VFG7350\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RTD Embedded Technologies VFG7330\00", [62 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LifeView FlyTV Platinum Mini2\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AVerMedia AVerTVHD MCE A180\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SKNet MonsterTV Mobile\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Pinnacle PCTV 40i/50i/110i (saa7133)\00", [59 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASUSTeK P7131 Dual\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Sedna/MuchTV PC TV Cardbus TV/Radio (ITO25 Rev:2B)\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASUS Digimatrix TV\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Philips Tiger reference design\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MSI TV@Anywhere plus\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy 250 PCI TV\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LifeView FlyDVB Trio\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AverTV DVB-T 777\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LifeView FlyDVB-T / Genius VideoWonder DVB-T\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ADS Instant TV Duo Cardbus PTV331\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tevion/KWorld DVB-T 220RF\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ELSA EX-VISION 700TV\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Kworld ATSC110/115\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AVerMedia A169 B\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AVerMedia A169 B1\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Medion 7134 Bridge #2\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"LifeView FlyDVB-T Hybrid Cardbus/MSI TV @nywhere A/D NB\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LifeView FlyVIDEO3000 (NTSC)\00", [35 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Medion Md8800 Quadro\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LifeView FlyDVB-S /Acorp TV134DS\00", [63 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Proteus Pro 2309\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AVerMedia TV Hybrid A16AR\00", [38 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Asus Europa2 OEM\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Pinnacle PCTV 310i\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Avermedia AVerTV Studio 507\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Compro Videomate DVB-T200A\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Hauppauge WinTV-HVR1110 DVB-T/Hybrid\00", [59 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Terratec Cinergy HT PCMCIA\00", [37 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Encore ENLTV\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Encore ENLTV-FM\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec Cinergy HT PCI\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Philips Tiger - S Reference design\00", [61 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Avermedia M102\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ASUS P7131 4871\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASUSTeK P7131 Hybrid\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Elitegroup ECS TVP3XP FM1246 Tuner Card (PAL,FM)\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"KWorld DVB-T 210\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sabrent PCMCIA TV-PCB05\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"10MOONS TM300 TV Card\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Avermedia Super 007\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beholder BeholdTV 401\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beholder BeholdTV 403\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 403 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beholder BeholdTV 405\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 405 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beholder BeholdTV 407\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 407 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beholder BeholdTV 409\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 505 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Beholder BeholdTV 507 FM / BeholdTV 509 FM\00", [53 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Beholder BeholdTV Columbus TV/FM\00", [63 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 607 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beholder BeholdTV M6\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Twinhan Hybrid DTV-DVB 3056 PCI\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Genius TVGO AM11MCE\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NXP Snake DVB-S reference design\00", [63 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Medion/Creatix CTX953 Hybrid\00", [35 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MSI TV@nywhere A/D v1.1\00", [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AVerMedia Cardbus TV/Radio (E506R)\00", [61 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AVerMedia Hybrid TV/Radio (A16D)\00", [63 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Avermedia M115\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Compro VideoMate T750\00", [42 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Avermedia DVB-S Pro A700\00", [39 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Avermedia DVB-S Hybrid+FM A700\00", [33 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beholder BeholdTV H6\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beholder BeholdTV M63\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Beholder BeholdTV M6 Extra\00", [37 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AVerMedia MiniPCI DVB-T Hybrid M103\00", [60 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASUSTeK P7131 Analog\00", [43 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Asus Tiger 3in1\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Encore ENLTV-FM v5.3\00", [43 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Avermedia PCI pure analog (M135A)\00", [62 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Zogis Real Angel 220\00", [43 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADS Tech Instant HDTV\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Asus Tiger Rev:1.00\00", [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Kworld Plus TV Analog Lite PCI\00", [33 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Avermedia AVerTV GO 007 FM Plus\00", [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Hauppauge WinTV-HVR1150 ATSC/QAM-Hybrid\00", [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Hauppauge WinTV-HVR1120 DVB-T/Hybrid\00", [59 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Avermedia AVerTV Studio 507UA\00", [34 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AVerMedia Cardbus TV/Radio (E501R)\00", [61 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Beholder BeholdTV 505 RDS\00", [38 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Beholder BeholdTV 507 RDS\00", [38 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 609 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Beholder BeholdTV 607 RDS\00", [38 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Beholder BeholdTV 609 RDS\00", [38 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Compro VideoMate S350/S300\00", [37 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AverMedia AverTV Studio 505\00", [36 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beholder BeholdTV X7\00", [43 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RoverMedia TV Link Pro FM\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Zolid Hybrid TV Tuner PCI\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Asus Europa Hybrid OEM\00", [41 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Leadtek Winfast DTV1000S\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Hawell HW-404M7\00", [16 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beholder BeholdTV H7\00", [43 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beholder BeholdTV A7\00", [43 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Avermedia PCI M733A\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TechoTrend TT-budget T-3000\00", [36 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Kworld PCI SBTVD/ISDB-T Full-Seg Hybrid\00", [56 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Compro VideoMate Vista M1F\00", [37 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Encore ENLTV-FM 3\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MagicPro ProHDTV Pro2 DMB-TH/Hybrid\00", [60 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beholder BeholdTV 501\00", [42 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Beholder BeholdTV 503 FM\00", [39 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sensoray 811/911\00", [47 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Kworld PC150-U\00", [17 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Asus My Cinema PS3-100\00", [41 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Hawell HW-9004V1\00", [47 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AverMedia AverTV Satellite Hybrid+FM A706\00", [54 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WIS Voyager or compatible\00", [38 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AverMedia AverTV/505\00", [43 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leadtek Winfast TV2100 FM\00", [38 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SnaZio* TVPVR PRO\00", [46 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leadtek Winfast HDTV200 H\00", [38 x i8] zeroinitializer }, align 32
@saa7134_boards = dso_local global { [198 x %struct.saa7134_board], [10904 x i8] } { [198 x %struct.saa7134_board] [%struct.saa7134_board { ptr @.str.14, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 5, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.15, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.16, i32 2097152, i32 57344, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 32768 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 16384 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 16384 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 16384 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 8192 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 32768 }, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.17, i32 2097152, i32 57344, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 16384 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 16384 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 16384 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 8192 }, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 32768 }, i32 37, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.18, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 32, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.19, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 17, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.20, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.21, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.22, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 4, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.23, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.24, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 17, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.25, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.26, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 63, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.27, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.28, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 4, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 40, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.29, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 7, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 8, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 40, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.30, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.31, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 2, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.32, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 4, i32 2, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 9, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 10, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 32, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.33, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 17, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.34, i32 0, i32 52992, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 0, i32 32768 }, %struct.saa7134_input { i32 8, i32 0, i32 0, i32 16384 }, %struct.saa7134_input { i32 9, i32 0, i32 0, i32 0 }, %struct.saa7134_input { i32 10, i32 0, i32 0, i32 49152 }, %struct.saa7134_input { i32 11, i32 8, i32 0, i32 32768 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.35, i32 2097152, i32 57344, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 16384 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 16384 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 16384 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 8192 }, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 32768 }, i32 37, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.36, i32 1605095, i32 3, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 2 }, %struct.saa7134_input { i32 8, i32 0, i32 2, i32 2 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 2 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 1 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.37, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 32, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.38, i32 2097152, i32 8519680, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 131072 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 131072 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 131072 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 131072 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 32, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.39, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, i32 39, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.40, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 33, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 21, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.41, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.42, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.43, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 17, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.44, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.45, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 2, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.46, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.47, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 0, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 0, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.48, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 0, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 0, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 9, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.49, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 51, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.50, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 7, i32 1, i32 0 }, %struct.saa7134_input { i32 11, i32 7, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 43, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.51, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.52, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 0 }, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.53, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.54, i32 1605095, i32 -2138308480, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 128 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 128 }, %struct.saa7134_input { i32 3, i32 1, i32 4, i32 128 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 524288 }, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 262144 }, i32 17, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.55, i32 1605095, i32 -2146697216, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 113246226 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 180486162 }, %struct.saa7134_input { i32 3, i32 1, i32 3, i32 146931730 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 17, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.56, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 17, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.57, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 2, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.58, i32 1605095, i32 16384, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 4, i32 1, i32 3, i32 32768 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 32768 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 32768 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 32768 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 32768 }, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.59, i32 1605095, i32 3, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 2, i32 2 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 2 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 1 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 51, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.60, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.61, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 12, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.62, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.63, i32 1605095, i32 1894272, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 14, i32 0, i32 2, i32 32896 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 32896 }, %struct.saa7134_input { i32 3, i32 1, i32 1, i32 32896 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 524288 }, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 819200 }, i32 5, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.64, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 33, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 21, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.65, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.66, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 24, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.67, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input { i32 1, i32 0, i32 0, i32 0 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.68, i32 2097152, i32 122880, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 65536 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 65536 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.69, i32 2097152, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 2097152 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.70, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 24, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.71, i32 1605095, i32 3145731, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 1 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 2 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 2 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 3145729 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 1 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.72, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.73, i32 1605095, i32 1792, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 512 }, %struct.saa7134_input { i32 11, i32 0, i32 2, i32 512 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 256 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 1, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.74, i32 2097152, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 2097152 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.75, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.76, i32 35159527, i32 9181312, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 0, i32 2, i32 8390656 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 8392704 }, %struct.saa7134_input { i32 3, i32 1, i32 1, i32 8388608 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 8912896 }, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 8650752 }, i32 37, i32 62, i8 99, i8 96, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.77, i32 1605095, i32 1792, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 512 }, %struct.saa7134_input { i32 11, i32 0, i32 2, i32 512 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 256 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 61, i32 62, i8 97, i8 96, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.78, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 66, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.79, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.80, i32 1605095, i32 65539, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 1 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 2 }, %struct.saa7134_input { i32 11, i32 6, i32 3, i32 2 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 65539 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 1 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.81, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.82, i32 1605095, i32 2097155, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 2097155 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 2097155 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 2097155 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 2097155 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 2097155 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 2097155 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.83, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 67, i32 -1, i8 97, i8 -1, i8 0, i8 0, i32 33, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.84, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 67, i32 -1, i8 97, i8 -1, i8 0, i8 0, i32 33, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.85, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.86, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 6, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 2, i32 2, i32 0 }, %struct.saa7134_input { i32 9, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 12, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 13, i32 9, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 33, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 15, i8 0 }, %struct.saa7134_board { ptr @.str.87, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 6, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 2, i32 2, i32 0 }, %struct.saa7134_input { i32 9, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 12, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 13, i32 9, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.88, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.89, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.90, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.91, i32 1605095, i32 -2145386496, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 4, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.92, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 2097152 }, %struct.saa7134_input { i32 8, i32 0, i32 3, i32 2097152 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 2097152 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.93, i32 1605095, i32 15237312, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.94, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 24, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.95, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.96, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.97, i32 1605095, i32 -2145386496, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.98, i32 2097152, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 2097152 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.99, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.100, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.101, i32 2097152, i32 6291456, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.102, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 8, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.103, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 4, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 6, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 7, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 40, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.104, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 68, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.105, i32 35159527, i32 10878976, [8 x %struct.saa7134_input] zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 66, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.106, i32 35159527, i32 212205568, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 4, i32 1, i32 77991936 }, %struct.saa7134_input { i32 14, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 9, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 66, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.107, i32 1605095, i32 0, [8 x %struct.saa7134_input] zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 0, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.108, i32 2097152, i32 6291456, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 2097152 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.109, i32 2097152, i32 57344, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 32768 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 16384 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 16384 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 16384 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 8192 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 32768 }, i32 2, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.110, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.111, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.112, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.113, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, i32 67, i32 62, i8 -1, i8 96, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.114, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, i32 63, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 97, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.115, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 4, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 1, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.116, i32 1605095, i32 3, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 1 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 51, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.117, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 33, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.118, i32 1605095, i32 2097408, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 256 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097408 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 1, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.119, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.120, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 4, i32 7, i32 4, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 131072 }, %struct.saa7134_input { i32 1, i32 0, i32 0, i32 0 }, i32 69, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.121, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 4, i32 7, i32 4, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 131072 }, %struct.saa7134_input { i32 1, i32 0, i32 0, i32 0 }, i32 42, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.122, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.123, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.124, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.125, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 2097152 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 2097152 }, %struct.saa7134_input { i32 8, i32 0, i32 3, i32 2097152 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 2097152 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.126, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 2097152 }, %struct.saa7134_input { i32 8, i32 0, i32 3, i32 2097152 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 2097152 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.127, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 14, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 1, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.128, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.129, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 8, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.130, i32 2097152, i32 28672, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 8192 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 8192 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 12288 }, i32 37, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.131, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.132, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 24, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.133, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 24, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.134, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 24, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.135, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.136, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.137, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 12632064 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 12632064 }, %struct.saa7134_input { i32 3, i32 3, i32 1, i32 12632064 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.138, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 11, i32 8, i32 2, i32 12632064 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 12632064 }, %struct.saa7134_input { i32 3, i32 3, i32 1, i32 12632064 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 12632064 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.139, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.140, i32 2097152, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.141, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.142, i32 1605095, i32 688132, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 688132 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 688128 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 688128 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 688128 }, %struct.saa7134_input zeroinitializer, i32 12, i32 62, i8 97, i8 96, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.143, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.144, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 32, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 15, i8 0 }, %struct.saa7134_board { ptr @.str.145, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.146, i32 2097152, i32 61440, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 8192 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 8192 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 4096 }, %struct.saa7134_input { i32 1, i32 0, i32 3, i32 24576 }, i32 69, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.147, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.148, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.149, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.150, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 71, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.151, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input { i32 5, i32 0, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 71, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.152, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 71, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.153, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 71, i32 -1, i8 97, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.154, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 5, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.155, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 4, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 71, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.156, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 78, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.157, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 32, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 15, i8 0 }, %struct.saa7134_board { ptr @.str.158, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 79, i32 -1, i8 -1, i8 -1, i8 32, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 1, i32 1, i32 0, i32 15, i8 0 }, %struct.saa7134_board { ptr @.str.159, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 71, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.160, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.161, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.162, i32 2097152, i32 28672, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 327680 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 8192 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 8192 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 0, i32 61440 }, i32 69, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.163, i32 1605095, i32 538968064, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 1 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.164, i32 1605095, i32 -2145746809, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 3, i32 6438912 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 6438912 }, %struct.saa7134_input { i32 11, i32 1, i32 2, i32 6438912 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 6438913 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 69, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.165, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 4, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 68, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.166, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.167, i32 1605095, i32 -2147481856, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 256 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 512 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 512 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 1, i32 2, i32 256 }, %struct.saa7134_input { i32 1, i32 8, i32 2, i32 0 }, i32 59, i32 62, i8 -1, i8 96, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.168, i32 1605095, i32 3145731, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 1 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 2 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 3145729 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 1 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.169, i32 1605095, i32 8388864, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 256 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 8388864 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 3, i8 0, ptr null }, i32 0, i32 2, i32 1, i32 0, i8 -128 }, %struct.saa7134_board { ptr @.str.170, i32 1605095, i32 8388864, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 256 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 8388864 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 3, i8 0, ptr null }, i32 0, i32 2, i32 1, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.171, i32 1605095, i32 3, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 1 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.172, i32 1605095, i32 134217728, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 134217728 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 134217728 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 134217728 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 12, i32 62, i8 97, i8 96, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.173, i32 2097152, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 79, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.174, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.174, i32 1605095, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 79, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.143, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 79, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.175, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.175, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 79, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.176, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.176, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 79, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.177, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.177, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, i32 79, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.178, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.179, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.180, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 2, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 9, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 76, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.181, i32 2097152, i32 57344, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 32768 }, %struct.saa7134_input { i32 4, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 16384 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 16384 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 16384 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 8192 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 32768 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.182, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.183, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 4, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 67, i32 -1, i8 97, i8 -1, i8 0, i8 0, i32 33, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.184, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 0, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 0, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.173, i32 2097152, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 38, i32 -1, i8 -1, i8 -1, i8 0, i8 16, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.185, i32 2097152, i32 3709952, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 2, i32 130048 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 -1, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.186, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 2, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 9, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 76, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.187, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 2, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 9, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 76, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.188, i32 1605095, i32 538968064, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 1 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.189, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 67, i32 -1, i8 99, i8 -1, i8 0, i8 0, i32 33, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.190, i32 1605095, i32 -1912258560, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.191, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 0 }, i32 37, i32 62, i8 -1, i8 96, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.192, i32 35159527, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 274432 }, i32 86, i32 62, i8 97, i8 96, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.193, i32 1605095, i32 33882112, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 327680 }, %struct.saa7134_input { i32 7, i32 3, i32 2, i32 327680 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 327680 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 327680 }, %struct.saa7134_input { i32 1, i32 0, i32 1, i32 327680 }, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 3, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.194, i32 2097152, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.195, i32 2097152, i32 32768, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.196, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 2, i32 0 }, %struct.saa7134_input { i32 9, i32 2, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 4, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.197, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 3, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 0 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.198, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 2, i8 0, ptr null }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.199, i32 2097152, i32 102295296, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 3, i32 2, i32 100728832 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 -1, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.200, i32 1605095, i32 2048, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 5, i32 4, i32 2, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2048 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config { i32 0, i8 64, ptr @aver_a706_std_map }, i32 0, i32 2, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.201, i32 2097152, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 3, i32 3, i32 1, i32 0 }, %struct.saa7134_input { i32 11, i32 6, i32 2, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 3, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.202, i32 1605095, i32 0, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 3, i32 0 }, %struct.saa7134_input { i32 7, i32 0, i32 3, i32 0 }, %struct.saa7134_input { i32 8, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 0 }, i32 24, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 1, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.203, i32 1605095, i32 13, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 4, i32 1, i32 2, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 8 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 8 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 2, i32 4 }, %struct.saa7134_input { i32 1, i32 0, i32 2, i32 8 }, i32 69, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.204, i32 1605095, i32 2097152, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 0 }, %struct.saa7134_input { i32 7, i32 3, i32 3, i32 0 }, %struct.saa7134_input { i32 11, i32 8, i32 3, i32 0 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input { i32 2, i32 0, i32 1, i32 2097152 }, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0 }, %struct.saa7134_board { ptr @.str.205, i32 1605095, i32 2098944, [8 x %struct.saa7134_input] [%struct.saa7134_input { i32 3, i32 1, i32 1, i32 768 }, %struct.saa7134_input { i32 5, i32 3, i32 2, i32 2097920 }, %struct.saa7134_input { i32 11, i32 8, i32 2, i32 2097920 }, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer], %struct.saa7134_input zeroinitializer, %struct.saa7134_input zeroinitializer, i32 54, i32 -1, i8 -1, i8 -1, i8 0, i8 0, i32 0, %struct.tda829x_config zeroinitializer, i32 0, i32 2, i32 0, i32 0, i8 0 }], [10904 x i8] zeroinitializer }, align 32
@saa7134_bcount = dso_local constant { i32, [28 x i8] } { i32 198, [28 x i8] zeroinitializer }, align 32
@saa7134_pci_tbl = dso_local global { [218 x %struct.pci_device_id], [1728 x i8] } { [218 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28980, i32 4401, i32 8193, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4401, i32 8193, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4401, i32 26450, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4401, i32 20101, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5435, i32 4418, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5435, i32 4419, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5435, i32 4440, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5435, i32 4450, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 20841, i32 312, i32 0, i32 0, i32 95, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 20840, i32 312, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 20034, i32 312, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 20840, i32 312, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 20034, i32 312, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 530, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5312, i32 4626, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20034, i32 530, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 532, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 21012, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5257, i32 532, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5822, i32 3, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5822, i32 20480, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4168, i32 8811, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4168, i32 8810, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4168, i32 8812, i32 0, i32 0, i32 89, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4163, i32 18498, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18501, i32 0, i32 0, i32 53, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4163, i32 18480, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18499, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4163, i32 18496, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4401, i32 65025, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6292, i32 65025, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6292, i32 40966, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4401, i32 28979, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4401, i32 8193, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6235, i32 49408, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6235, i32 49408, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4139, i32 18640, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 42763, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 42913, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 42914, i32 0, i32 0, i32 141, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 5217, i32 8469, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 5217, i32 41237, i32 0, i32 0, i32 170, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 5217, i32 8456, i32 0, i32 0, i32 52, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 5217, i32 4351, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 55022, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 47081, i32 0, i32 0, i32 158, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 5217, i32 1292, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4541, i32 43, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4541, i32 45, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4121, i32 19636, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4121, i32 19637, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4121, i32 19638, i32 0, i32 0, i32 113, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4779, i32 2048, i32 0, i32 0, i32 36, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 5435, i32 4434, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 6235, i32 49408, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 38677, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 42762, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6235, i32 49664, i32 0, i32 0, i32 49, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5440, i32 38180, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 1282, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 774, i32 0, i32 0, i32 55, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 62239, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 61725, i32 0, i32 0, i32 149, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 16725, i32 0, i32 0, i32 180, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 16981, i32 0, i32 0, i32 180, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4401, i32 8196, i32 0, i32 0, i32 61, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5153, i32 848, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5153, i32 849, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5153, i32 880, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5153, i32 4976, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20034, i32 1282, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 528, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4163, i32 528, i32 0, i32 0, i32 80, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 0, i32 16529, i32 0, i32 0, i32 67, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 21590, i32 28981, i32 0, i32 0, i32 68, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4401, i32 8196, i32 0, i32 0, i32 69, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6235, i32 51456, i32 0, i32 0, i32 70, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 6235, i32 51457, i32 0, i32 0, i32 71, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5173, i32 29520, i32 0, i32 0, i32 72, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5173, i32 29488, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 4164, i32 0, i32 0, i32 75, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4401, i32 20201, i32 0, i32 0, i32 76, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4541, i32 46, i32 0, i32 0, i32 77, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18530, i32 0, i32 0, i32 78, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4401, i32 8216, i32 0, i32 0, i32 81, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5218, i32 25137, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5218, i32 34340, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5435, i32 4448, i32 0, i32 0, i32 83, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 793, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 11269, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 20840, i32 769, i32 0, i32 0, i32 86, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 817, i32 5153, i32 0, i32 0, i32 87, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6110, i32 29185, i32 0, i32 0, i32 88, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6110, i32 29264, i32 0, i32 0, i32 114, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6110, i32 29520, i32 0, i32 0, i32 90, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6110, i32 29522, i32 0, i32 0, i32 90, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6110, i32 41268, i32 0, i32 0, i32 189, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 29536, i32 0, i32 0, i32 91, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 25440, i32 0, i32 0, i32 92, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5822, i32 5, i32 0, i32 0, i32 93, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 20840, i32 768, i32 0, i32 0, i32 97, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 20034, i32 768, i32 0, i32 0, i32 97, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5257, i32 769, i32 0, i32 0, i32 86, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 772, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 13062, i32 0, i32 0, i32 94, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 13570, i32 0, i32 0, i32 94, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20840, i32 13063, i32 0, i32 0, i32 94, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5822, i32 7, i32 0, i32 0, i32 96, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5822, i32 8, i32 0, i32 0, i32 96, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5822, i32 13, i32 0, i32 0, i32 96, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 11269, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5257, i32 1282, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 2329, i32 8195, i32 0, i32 0, i32 98, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 11264, i32 0, i32 0, i32 99, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4163, i32 18528, i32 0, i32 0, i32 100, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4541, i32 47, i32 0, i32 0, i32 101, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 38677, i32 0, i32 0, i32 102, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 5217, i32 41243, i32 0, i32 0, i32 157, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18550, i32 0, i32 0, i32 112, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26368, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26369, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26370, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26371, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26372, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26373, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26374, i32 0, i32 0, i32 155, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26375, i32 0, i32 0, i32 156, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26376, i32 0, i32 0, i32 155, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26377, i32 0, i32 0, i32 156, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 112, i32 26378, i32 0, i32 0, i32 156, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5435, i32 4466, i32 0, i32 0, i32 105, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4401, i32 9026, i32 0, i32 0, i32 106, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4401, i32 9025, i32 0, i32 0, i32 106, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 12310, i32 9028, i32 0, i32 0, i32 106, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4401, i32 8975, i32 0, i32 0, i32 107, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 6783, i32 8200, i32 0, i32 0, i32 148, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6783, i32 8456, i32 0, i32 0, i32 184, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5435, i32 4469, i32 0, i32 0, i32 108, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 62238, i32 0, i32 0, i32 110, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20034, i32 774, i32 0, i32 0, i32 55, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18545, i32 0, i32 0, i32 111, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18519, i32 0, i32 0, i32 152, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 2329, i32 8195, i32 0, i32 0, i32 115, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4401, i32 8964, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 61469, i32 0, i32 0, i32 117, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 0, i32 16406, i32 0, i32 0, i32 118, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 0, i32 16438, i32 0, i32 0, i32 119, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 0, i32 16439, i32 0, i32 0, i32 120, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 0, i32 16464, i32 0, i32 0, i32 121, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 0, i32 16465, i32 0, i32 0, i32 122, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 0, i32 16496, i32 0, i32 0, i32 123, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 0, i32 16497, i32 0, i32 0, i32 124, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 0, i32 16528, i32 0, i32 0, i32 125, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 0, i32 20571, i32 0, i32 0, i32 159, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 0, i32 20561, i32 0, i32 0, i32 176, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 23246, i32 20560, i32 0, i32 0, i32 126, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 0, i32 20593, i32 0, i32 0, i32 160, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 0, i32 20603, i32 0, i32 0, i32 161, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 23246, i32 20592, i32 0, i32 0, i32 127, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 20624, i32 0, i32 0, i32 127, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 0, i32 20993, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 23246, i32 24688, i32 0, i32 0, i32 129, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 23246, i32 24689, i32 0, i32 0, i32 162, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 23246, i32 24690, i32 0, i32 0, i32 165, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 23246, i32 24691, i32 0, i32 0, i32 166, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 24720, i32 0, i32 0, i32 163, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 24721, i32 0, i32 0, i32 164, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 24722, i32 0, i32 0, i32 167, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 24723, i32 0, i32 0, i32 168, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 24976, i32 0, i32 0, i32 130, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 24979, i32 0, i32 0, i32 144, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 24977, i32 0, i32 0, i32 143, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20034, i32 13570, i32 0, i32 0, i32 94, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6178, i32 34, i32 0, i32 0, i32 131, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5822, i32 16, i32 0, i32 0, i32 134, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5218, i32 34341, i32 0, i32 0, i32 135, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 62518, i32 0, i32 0, i32 136, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 63798, i32 0, i32 0, i32 137, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 43062, i32 0, i32 0, i32 138, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6235, i32 51456, i32 0, i32 0, i32 139, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5153, i32 896, i32 0, i32 0, i32 151, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 20841, i32 5378, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 25232, i32 0, i32 0, i32 142, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 63030, i32 0, i32 0, i32 145, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 63286, i32 0, i32 0, i32 145, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18552, i32 0, i32 0, i32 147, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4163, i32 18637, i32 0, i32 0, i32 190, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6110, i32 28968, i32 0, i32 0, i32 153, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6110, i32 45366, i32 0, i32 0, i32 182, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 62237, i32 0, i32 0, i32 154, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 6235, i32 51456, i32 0, i32 0, i32 169, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 30101, i32 0, i32 0, i32 171, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6609, i32 312, i32 0, i32 0, i32 172, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4401, i32 8196, i32 0, i32 0, i32 173, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4163, i32 18503, i32 0, i32 0, i32 174, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4221, i32 26197, i32 0, i32 0, i32 175, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5058, i32 10244, i32 0, i32 0, i32 181, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 29072, i32 0, i32 0, i32 178, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 28816, i32 0, i32 0, i32 179, i32 0 }, %struct.pci_device_id { i32 4401, i32 28981, i32 6235, i32 51456, i32 0, i32 0, i32 183, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 23246, i32 20528, i32 0, i32 0, i32 187, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 23246, i32 20496, i32 0, i32 0, i32 186, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 6110, i32 53558, i32 0, i32 0, i32 185, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 24576, i32 2065, i32 0, i32 0, i32 188, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 24576, i32 2321, i32 0, i32 0, i32 188, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 5217, i32 8277, i32 0, i32 0, i32 192, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6405, i32 28679, i32 0, i32 0, i32 193, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 5217, i32 41226, i32 0, i32 0, i32 194, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4221, i32 28474, i32 0, i32 0, i32 195, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 6009, i32 5071, i32 0, i32 0, i32 196, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 4221, i32 28462, i32 0, i32 0, i32 197, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 4401, i32 0, i32 0, i32 0, i32 -1, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 4401, i32 0, i32 0, i32 0, i32 -1, i32 0 }, %struct.pci_device_id { i32 4401, i32 28976, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4401, i32 28979, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4401, i32 28980, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4401, i32 28981, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [1728 x i8] zeroinitializer }, align 32
@saa7134_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.208, i32 7368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013saa7134: saa7134: Error - device struct undefined.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7134_tuner_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/saa7134/saa7134-cards.c\00", [54 x i8] zeroinitializer }, align 32
@saa7134_tuner_callback._entry_ptr = internal global ptr @saa7134_tuner_callback._entry, section ".printk_index", align 4
@__kstrtab_saa7134_tuner_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_tuner_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_tuner_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_tuner_callback to i32), ptr @__kstrtab_saa7134_tuner_callback, ptr @__kstrtabns_saa7134_tuner_callback }, section "___ksymtab+saa7134_tuner_callback", align 4
@saa7134_board_init1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.208, i32 7415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016saa7134: %s: board init: gpio is %x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7134_board_init1\00", [44 x i8] zeroinitializer }, align 32
@saa7134_board_init1._entry_ptr = internal global ptr @saa7134_board_init1._entry, section ".printk_index", align 4
@saa7134_board_init1._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.208, i32 7505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [191 x i8], [33 x i8] } { [191 x i8] c"\014saa7134: %s: seems there are two different versions of the MD5044\0A%s: (with the same ID) out there.  If sound doesn't work for\0A%s: you try the audio_clock_override=0x200000 insmod option.\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7134_board_init1._entry_ptr.213 = internal global ptr @saa7134_board_init1._entry.211, section ".printk_index", align 4
@saa7134_board_init1._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.210, ptr @.str.208, i32 7634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [186 x i8], [38 x i8] } { [186 x i8] c"\014saa7134: %s: %s: dual saa713x broadcast decoders\0A%s: Sorry, none of the inputs to this chip are supported yet.\0A%s: Dual decoder functionality is disabled for now, use the other chip.\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7134_board_init1._entry_ptr.216 = internal global ptr @saa7134_board_init1._entry.214, section ".printk_index", align 4
@saa7134_board_init2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.208, i32 7781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014saa7134: %s: board type fixup: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7134_board_init2\00", [44 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr = internal global ptr @saa7134_board_init2._entry, section ".printk_index", align 4
@saa7134_board_init2._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.208, i32 7802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013saa7134: EEPROM read failure\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.221 = internal global ptr @saa7134_board_init2._entry.219, section ".printk_index", align 4
@saa7134_board_init2._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.218, ptr @.str.208, i32 7818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013saa7134: %s Can't determine tuner type %x from EEPROM\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.224 = internal global ptr @saa7134_board_init2._entry.222, section ".printk_index", align 4
@saa7134_board_init2._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.218, ptr @.str.208, i32 7836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016saa7134: %s Board has DVB-T\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.227 = internal global ptr @saa7134_board_init2._entry.225, section ".printk_index", align 4
@saa7134_board_init2._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.218, ptr @.str.208, i32 7840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.229 = internal global ptr @saa7134_board_init2._entry.228, section ".printk_index", align 4
@saa7134_board_init2._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.218, ptr @.str.208, i32 7843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013saa7134: %s unexpected config structure\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.232 = internal global ptr @saa7134_board_init2._entry.230, section ".printk_index", align 4
@saa7134_board_init2._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.218, ptr @.str.208, i32 7846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016saa7134: %s Tuner type is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.235 = internal global ptr @saa7134_board_init2._entry.233, section ".printk_index", align 4
@saa7134_board_init2._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.218, ptr @.str.208, i32 7855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: Unable to enable IF of the tuner.\0A\00", [55 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.238 = internal global ptr @saa7134_board_init2._entry.236, section ".printk_index", align 4
@saa7134_board_init2._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.218, ptr @.str.208, i32 7865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016saa7134: %s: Reconfigured board as %s\0A\00", [55 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.241 = internal global ptr @saa7134_board_init2._entry.239, section ".printk_index", align 4
@saa7134_board_init2._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.218, ptr @.str.208, i32 7893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.246 = internal global ptr @saa7134_board_init2._entry.245, section ".printk_index", align 4
@saa7134_board_init2._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.218, ptr @.str.208, i32 7910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016saa7134: %s: P7131 analog only, using entry of %s\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.249 = internal global ptr @saa7134_board_init2._entry.247, section ".printk_index", align 4
@__const.saa7134_board_init2.data.254 = private unnamed_addr constant [3 x i8] c"<3`", align 1
@__const.saa7134_board_init2.data.256 = private unnamed_addr constant [3 x i8] c"<3b", align 1
@saa7134_board_init2._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.218, ptr @.str.208, i32 7979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014saa7134: %s: send wake up byte to pic16C505(IR chip) failed\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.260 = internal global ptr @saa7134_board_init2._entry.258, section ".printk_index", align 4
@saa7134_board_init2._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.218, ptr @.str.208, i32 7985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016saa7134: %s: probe IR chip @ i2c 0x%02x: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.263 = internal global ptr @saa7134_board_init2._entry.261, section ".printk_index", align 4
@.str.264 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@__const.saa7134_board_init2.data.266 = private unnamed_addr constant [3 x i8] c"<3j", align 1
@__const.saa7134_board_init2.data.268 = private unnamed_addr constant [3 x i8] c"<3h", align 1
@saa7134_board_init2._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.218, ptr @.str.208, i32 8025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.271 = internal global ptr @saa7134_board_init2._entry.270, section ".printk_index", align 4
@saa7134_board_init2._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.218, ptr @.str.208, i32 8028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014saa7134: %s: Unexpected tuner type info: %x in eeprom\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.274 = internal global ptr @saa7134_board_init2._entry.272, section ".printk_index", align 4
@saa7134_board_init2.buffer = internal global { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] c"\10\12", [2 x i8] c"\13\04", [2 x i8] c"\16\00", [2 x i8] c"\14\04", [2 x i8] c"\17\00"], [22 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.218, ptr @.str.208, i32 8050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014saa7134: %s: Unable to enable tuner(%i).\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.278 = internal global ptr @saa7134_board_init2._entry.276, section ".printk_index", align 4
@saa7134_board_init2._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.218, ptr @.str.208, i32 8067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014saa7134: %s: Unable to enable IF of the tuner.\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7134_board_init2._entry_ptr.283 = internal global ptr @saa7134_board_init2._entry.281, section ".printk_index", align 4
@.str.284 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@aver_a706_std_map = internal global { { { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { { i16, i8, i8 } { i16 5500, i8 -64, i8 44 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@board_flyvideo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.208, i32 7129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [174 x i8], [50 x i8] } { [174 x i8] c"\014saa7134: %s: there are different flyvideo cards with different tuners\0A%s: out there, you might have to use the tuner=<nr> insmod\0A%s: option to override the default value.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"board_flyvideo\00", [17 x i8] zeroinitializer }, align 32
@board_flyvideo._entry_ptr = internal global ptr @board_flyvideo._entry, section ".printk_index", align 4
@hauppauge_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.289, ptr @.str.208, i32 7400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014saa7134: %s: warning: unknown hauppauge model #%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hauppauge_eeprom\00", [47 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr = internal global ptr @hauppauge_eeprom._entry, section ".printk_index", align 4
@hauppauge_eeprom._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.289, ptr @.str.208, i32 7405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016saa7134: %s: hauppauge eeprom: model=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr.292 = internal global ptr @hauppauge_eeprom._entry.290, section ".printk_index", align 4
@.str.293 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@switch.table.saa7134_tuner_callback = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 23, i32 21, i32 23, i32 20, i32 23, i32 18, i32 23, i32 23, i32 23, i32 23], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 54, i64 71, i64 76]
@__sancov_gen_cov_switch_values.294 = internal global [9 x i64] [i64 7, i64 32, i64 155, i64 156, i64 180, i64 182, i64 185, i64 189, i64 197]
@__sancov_gen_cov_switch_values.295 = internal global [8 x i64] [i64 6, i64 32, i64 155, i64 156, i64 182, i64 185, i64 189, i64 197]
@__sancov_gen_cov_switch_values.296 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.297 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.298 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.299 = internal global [5 x i64] [i64 3, i64 32, i64 171, i64 178, i64 179]
@__sancov_gen_cov_switch_values.300 = internal global [123 x i64] [i64 121, i64 32, i64 2, i64 3, i64 8, i64 9, i64 11, i64 22, i64 27, i64 28, i64 30, i64 31, i64 32, i64 35, i64 36, i64 40, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 52, i64 54, i64 55, i64 56, i64 57, i64 59, i64 60, i64 62, i64 63, i64 65, i64 67, i64 68, i64 70, i64 71, i64 72, i64 74, i64 76, i64 77, i64 78, i64 79, i64 82, i64 85, i64 86, i64 87, i64 91, i64 94, i64 95, i64 97, i64 98, i64 99, i64 101, i64 102, i64 103, i64 104, i64 106, i64 107, i64 110, i64 112, i64 113, i64 116, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 132, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 148, i64 149, i64 150, i64 153, i64 154, i64 155, i64 156, i64 158, i64 159, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 175, i64 176, i64 178, i64 179, i64 180, i64 183, i64 184, i64 185, i64 189, i64 190, i64 192, i64 194, i64 195, i64 196]
@__sancov_gen_cov_switch_values.301 = internal global [39 x i64] [i64 37, i64 32, i64 12, i64 18, i64 23, i64 53, i64 69, i64 70, i64 71, i64 78, i64 81, i64 84, i64 87, i64 88, i64 90, i64 94, i64 96, i64 100, i64 101, i64 103, i64 104, i64 105, i64 108, i64 109, i64 112, i64 114, i64 117, i64 131, i64 134, i64 142, i64 147, i64 151, i64 152, i64 155, i64 156, i64 174, i64 181, i64 182, i64 190]
@__sancov_gen_cov_switch_values.302 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.303 = internal global [4 x i64] [i64 2, i64 16, i64 259, i64 268]
@__sancov_gen_cov_switch_values.304 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.305 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 29]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 208]
@__sancov_gen_cov_switch_values.307 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.308 = internal global [6 x i64] [i64 4, i64 32, i64 136, i64 137, i64 141, i64 145]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 158]
@__sancov_gen_cov_switch_values.310 = internal global [14 x i64] [i64 12, i64 32, i64 67019, i64 67109, i64 67201, i64 67209, i64 67301, i64 67559, i64 67569, i64 67579, i64 67589, i64 67599, i64 67651, i64 67659]
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 28, i32 31 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 29, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 30, i32 31 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 31, i32 31 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 32, i32 31 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 33, i32 31 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 34, i32 31 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 35, i32 31 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 36, i32 31 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 37, i32 31 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 38, i32 31 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 39, i32 31 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 40, i32 31 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 41, i32 42 }
@___asan_gen_.353 = private unnamed_addr constant [19 x i8] c"saa7134_input_name\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 27, i32 20 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 57, i32 12 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 72, i32 12 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 99, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 146, i32 21 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 311, i32 12 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 341, i32 21 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 367, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 406, i32 12 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 476, i32 21 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 501, i32 21 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 536, i32 21 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 557, i32 21 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 587, i32 21 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 620, i32 21 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 646, i32 21 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 667, i32 21 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 713, i32 21 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 774, i32 21 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 837, i32 12 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 869, i32 21 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 923, i32 21 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 796, i32 21 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 952, i32 21 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 994, i32 21 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 442, i32 12 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1018, i32 21 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1047, i32 21 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1074, i32 21 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1100, i32 21 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1126, i32 21 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1147, i32 21 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1180, i32 21 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1248, i32 21 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1283, i32 21 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1314, i32 21 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1333, i32 21 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1402, i32 21 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1421, i32 21 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1446, i32 21 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 188, i32 21 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1476, i32 21 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 890, i32 21 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1512, i32 21 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1538, i32 21 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1560, i32 21 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1599, i32 21 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1672, i32 21 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1729, i32 21 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1755, i32 21 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1787, i32 12 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1822, i32 21 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1850, i32 12 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1878, i32 21 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 739, i32 21 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 216, i32 21 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1910, i32 21 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1964, i32 21 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1635, i32 21 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1990, i32 21 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2011, i32 21 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2046, i32 12 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1943, i32 21 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2079, i32 21 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2123, i32 21 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2158, i32 12 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2193, i32 21 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2228, i32 21 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2266, i32 21 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2295, i32 22 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2336, i32 21 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2359, i32 21 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2382, i32 21 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2400, i32 12 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2441, i32 12 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2474, i32 21 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2505, i32 21 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2523, i32 21 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2545, i32 27 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2576, i32 21 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2614, i32 21 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2642, i32 21 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2664, i32 21 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2693, i32 21 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2728, i32 21 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2753, i32 21 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2786, i32 21 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2806, i32 21 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2824, i32 21 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2840, i32 21 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 688, i32 21 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2900, i32 21 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2927, i32 12 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2939, i32 12 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2964, i32 21 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2972, i32 12 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3006, i32 21 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3052, i32 21 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3076, i32 21 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3094, i32 21 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3125, i32 21 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3152, i32 21 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3179, i32 21 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3213, i32 21 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3255, i32 21 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3280, i32 21 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3373, i32 21 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3397, i32 21 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3434, i32 21 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3535, i32 21 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3557, i32 21 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3586, i32 21 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3608, i32 21 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3640, i32 21 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1214, i32 12 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 2872, i32 21 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3709, i32 21 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3739, i32 21 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3769, i32 21 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3852, i32 21 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3880, i32 21 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3904, i32 21 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3932, i32 21 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3958, i32 21 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3987, i32 12 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4015, i32 12 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4048, i32 21 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4073, i32 21 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4140, i32 21 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4229, i32 21 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4261, i32 21 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4484, i32 21 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4591, i32 21 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4621, i32 12 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4656, i32 21 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4674, i32 19 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4697, i32 21 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4726, i32 21 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4752, i32 21 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4778, i32 21 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4800, i32 21 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4827, i32 21 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4846, i32 21 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4873, i32 21 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4520, i32 21 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4557, i32 21 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1299, i32 21 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3677, i32 27 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4900, i32 21 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3469, i32 21 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3784, i32 21 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4958, i32 21 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4992, i32 21 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5015, i32 21 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5048, i32 21 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5125, i32 21 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3310, i32 21 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3342, i32 21 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5157, i32 21 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1698, i32 21 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4106, i32 21 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4199, i32 21 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4288, i32 21 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4369, i32 21 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4397, i32 21 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5194, i32 12 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 1368, i32 21 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5213, i32 21 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 264, i32 12 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5239, i32 21 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5259, i32 21 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5282, i32 21 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5334, i32 19 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5350, i32 21 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5378, i32 21 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3817, i32 12 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5403, i32 21 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5084, i32 21 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5427, i32 21 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 3504, i32 21 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5457, i32 12 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5498, i32 21 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5526, i32 21 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5552, i32 12 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5573, i32 21 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 4929, i32 21 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5604, i32 19 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5619, i32 21 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5650, i32 21 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5674, i32 21 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5704, i32 21 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5739, i32 21 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5769, i32 21 }
@___asan_gen_.932 = private unnamed_addr constant [15 x i8] c"saa7134_boards\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 55, i32 22 }
@___asan_gen_.935 = private unnamed_addr constant [15 x i8] c"saa7134_bcount\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5797, i32 20 }
@___asan_gen_.938 = private unnamed_addr constant [16 x i8] c"saa7134_pci_tbl\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 5802, i32 22 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7368, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7415, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7502, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7631, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7780, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7802, i32 4 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7817, i32 5 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7835, i32 5 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7839, i32 5 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7843, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7846, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7855, i32 5 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7864, i32 4 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7892, i32 4 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7909, i32 4 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7978, i32 4 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7983, i32 4 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 8024, i32 4 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 8027, i32 4 }
@___asan_gen_.1064 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 8037, i32 13 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 8049, i32 5 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 8066, i32 4 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 8086, i32 21 }
@___asan_gen_.1082 = private unnamed_addr constant [18 x i8] c"aver_a706_std_map\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 47, i32 32 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7126, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7399, i32 3 }
@___asan_gen_.1103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7404, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1110 = private constant [45 x i8] c"../drivers/media/pci/saa7134/saa7134-cards.c\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1110, i32 7731, i32 17 }
@___asan_gen_.1112 = private unnamed_addr constant [36 x i8] c"switch.table.saa7134_tuner_callback\00", align 1
@llvm.compiler.used = appending global [293 x ptr] [ptr @__ksymtab_saa7134_tuner_callback, ptr @board_flyvideo._entry, ptr @board_flyvideo._entry_ptr, ptr @hauppauge_eeprom._entry, ptr @hauppauge_eeprom._entry.290, ptr @hauppauge_eeprom._entry_ptr, ptr @hauppauge_eeprom._entry_ptr.292, ptr @saa7134_board_init1._entry, ptr @saa7134_board_init1._entry.211, ptr @saa7134_board_init1._entry.214, ptr @saa7134_board_init1._entry_ptr, ptr @saa7134_board_init1._entry_ptr.213, ptr @saa7134_board_init1._entry_ptr.216, ptr @saa7134_board_init2._entry, ptr @saa7134_board_init2._entry.219, ptr @saa7134_board_init2._entry.222, ptr @saa7134_board_init2._entry.225, ptr @saa7134_board_init2._entry.228, ptr @saa7134_board_init2._entry.230, ptr @saa7134_board_init2._entry.233, ptr @saa7134_board_init2._entry.236, ptr @saa7134_board_init2._entry.239, ptr @saa7134_board_init2._entry.245, ptr @saa7134_board_init2._entry.247, ptr @saa7134_board_init2._entry.258, ptr @saa7134_board_init2._entry.261, ptr @saa7134_board_init2._entry.270, ptr @saa7134_board_init2._entry.272, ptr @saa7134_board_init2._entry.276, ptr @saa7134_board_init2._entry.281, ptr @saa7134_board_init2._entry_ptr, ptr @saa7134_board_init2._entry_ptr.221, ptr @saa7134_board_init2._entry_ptr.224, ptr @saa7134_board_init2._entry_ptr.227, ptr @saa7134_board_init2._entry_ptr.229, ptr @saa7134_board_init2._entry_ptr.232, ptr @saa7134_board_init2._entry_ptr.235, ptr @saa7134_board_init2._entry_ptr.238, ptr @saa7134_board_init2._entry_ptr.241, ptr @saa7134_board_init2._entry_ptr.246, ptr @saa7134_board_init2._entry_ptr.249, ptr @saa7134_board_init2._entry_ptr.260, ptr @saa7134_board_init2._entry_ptr.263, ptr @saa7134_board_init2._entry_ptr.271, ptr @saa7134_board_init2._entry_ptr.274, ptr @saa7134_board_init2._entry_ptr.278, ptr @saa7134_board_init2._entry_ptr.283, ptr @saa7134_tuner_callback._entry, ptr @saa7134_tuner_callback._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @saa7134_input_name, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @saa7134_boards, ptr @saa7134_bcount, ptr @saa7134_pci_tbl, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.248, ptr @.str.259, ptr @.str.262, ptr @.str.264, ptr @.str.265, ptr @.str.273, ptr @saa7134_board_init2.buffer, ptr @.str.277, ptr @.str.282, ptr @.str.284, ptr @aver_a706_std_map, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.291, ptr @.str.293, ptr @switch.table.saa7134_tuner_callback], section "llvm.metadata"
@0 = internal global [268 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_input_name to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_boards to i32), i32 43560, i32 54464, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_bcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_pci_tbl to i32), i32 6976, i32 8704, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init1._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 191, i32 224, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init1._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 186, i32 224, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2.buffer to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_board_init2._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aver_a706_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_flyvideo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.saa7134_tuner_callback to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_tuner_callback(ptr noundef %priv, i32 %component, i32 noundef %command, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %priv, null
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %tuner_type = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tuner_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then.cleanup_crit_edge [
    i32 54, label %sw.bb
    i32 71, label %sw.bb1
    i32 76, label %sw.bb3
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %board.i = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 20
  %3 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %4, label %sw.default.i [
    i32 155, label %sw.bb.sw.bb.i_crit_edge
    i32 156, label %sw.bb.sw.bb.i_crit_edge21
    i32 180, label %sw.bb.sw.bb.i_crit_edge22
    i32 182, label %sw.bb.sw.bb.i_crit_edge23
    i32 189, label %sw.bb.sw.bb.i_crit_edge24
    i32 185, label %sw.bb.sw.bb.i_crit_edge25
    i32 197, label %sw.bb.sw.bb.i_crit_edge26
  ]

sw.bb.sw.bb.i_crit_edge26:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge25:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge24:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge23:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge22:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge21:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge21, %sw.bb.sw.bb.i_crit_edge22, %sw.bb.sw.bb.i_crit_edge23, %sw.bb.sw.bb.i_crit_edge24, %sw.bb.sw.bb.i_crit_edge25, %sw.bb.sw.bb.i_crit_edge26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond.i.i = icmp eq i32 %command, 0
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %6 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %4, label %sw.bb.i.i.cleanup_crit_edge [
    i32 155, label %sw.bb.i.i.sw.bb1.i.i_crit_edge
    i32 156, label %sw.bb.i.i.sw.bb1.i.i_crit_edge27
    i32 185, label %sw.bb.i.i.sw.bb1.i.i_crit_edge28
    i32 182, label %sw.bb2.i.i
    i32 189, label %sw.bb4.i.i
    i32 197, label %sw.bb6.i.i
  ]

sw.bb.i.i.sw.bb1.i.i_crit_edge28:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

sw.bb.i.i.sw.bb1.i.i_crit_edge27:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

sw.bb.i.i.sw.bb1.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %sw.bb.i.i.sw.bb1.i.i_crit_edge, %sw.bb.i.i.sw.bb1.i.i_crit_edge27, %sw.bb.i.i.sw.bb1.i.i_crit_edge28
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg)
  %switch.i.i = icmp ult i32 %arg, 2
  br i1 %switch.i.i, label %return.sink.split.i.i.i, label %sw.bb1.i.i.cleanup_crit_edge

sw.bb1.i.i.cleanup_crit_edge:                     ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

return.sink.split.i.i.i:                          ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef nonnull %priv, i32 noundef 26, i32 noundef %arg) #5
  br label %cleanup

sw.bb2.i.i:                                       ; preds = %sw.bb.i.i
  %7 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.296)
  switch i32 %arg, label %sw.bb2.i.i.cleanup_crit_edge [
    i32 0, label %do.body.i.i.i
    i32 1, label %do.body6.i.i.i
  ]

sw.bb2.i.i.cleanup_crit_edge:                     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i.i.i:                                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !540
  tail call void @arm_heavy_mb() #5
  %lmmio.i.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 18
  %8 = ptrtoint ptr %lmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %9, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 4194304) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !542
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %lmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i32, ptr %11, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 4194304) #5, !srcloc !541
  br label %return.sink.split.i17.i.i

do.body6.i.i.i:                                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !543
  tail call void @arm_heavy_mb() #5
  %lmmio8.i.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 18
  %12 = ptrtoint ptr %lmmio8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio8.i.i.i, align 4
  %add.ptr9.i.i.i = getelementptr i32, ptr %13, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 4194560) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !544
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %lmmio8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio8.i.i.i, align 4
  %add.ptr13.i.i.i = getelementptr i32, ptr %15, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i.i, i32 4194560) #5, !srcloc !541
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !545
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %lmmio8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio8.i.i.i, align 4
  %add.ptr17.i.i.i = getelementptr i32, ptr %17, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i.i, i32 4195584) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !546
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %lmmio8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio8.i.i.i, align 4
  %add.ptr21.i.i.i = getelementptr i32, ptr %19, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i.i, i32 4195584) #5, !srcloc !541
  br label %return.sink.split.i17.i.i

return.sink.split.i17.i.i:                        ; preds = %do.body6.i.i.i, %do.body.i.i.i
  %.sink.i.i.i = phi i32 [ 20, %do.body.i.i.i ], [ 30, %do.body6.i.i.i ]
  tail call void @msleep(i32 noundef %.sink.i.i.i) #5
  br label %cleanup

sw.bb4.i.i:                                       ; preds = %sw.bb.i.i
  %20 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %arg, label %sw.bb4.i.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i19.i.i
  ]

sw.bb4.i.i.cleanup_crit_edge:                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i.i.i:                                      ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef nonnull %priv, i32 noundef 18, i32 noundef 0) #5
  br label %cleanup

sw.bb1.i19.i.i:                                   ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef nonnull %priv, i32 noundef 18, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 30) #5
  br label %cleanup

sw.bb6.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg)
  %switch24.i.i = icmp ult i32 %arg, 2
  br i1 %switch24.i.i, label %return.sink.split.i22.i.i, label %sw.bb6.i.i.cleanup_crit_edge

sw.bb6.i.i.cleanup_crit_edge:                     ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

return.sink.split.i22.i.i:                        ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef nonnull %priv, i32 noundef 10, i32 noundef %arg) #5
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb
  %21 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %command, label %sw.default.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i6.i
    i32 1, label %do.body.i.i
  ]

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i6.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef nonnull %priv, i32 noundef 22, i32 noundef %arg) #5
  br label %cleanup

do.body.i.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !547
  tail call void @arm_heavy_mb() #5
  %bmmio.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 19
  %22 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 403
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #5, !srcloc !548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !549
  %25 = or i8 %24, -128
  %26 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %27, i32 403
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %25) #5, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !551
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %29, i32 406
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i.i) #5, !srcloc !548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !552
  %31 = and i8 %30, -16
  %32 = or i8 %31, 3
  %33 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr21.i.i = getelementptr i8, ptr %34, i32 406
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i.i, i8 %32) #5, !srcloc !550
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg)
  %cmp.i.i = icmp eq i32 %arg, 1
  %..i.i = select i1 %cmp.i.i, i8 11, i8 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !553
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr27.i.i = getelementptr i8, ptr %36, i32 277
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27.i.i, i8 %..i.i) #5, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !554
  tail call void @arm_heavy_mb() #5
  %narrow.i.i = add nuw nsw i8 %..i.i, 1
  %37 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %38, i32 278
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.i.i, i8 %narrow.i.i) #5, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !555
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr41.i.i = getelementptr i8, ptr %40, i32 279
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41.i.i) #5, !srcloc !548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !556
  %42 = and i8 %41, -4
  %43 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr50.i.i = getelementptr i8, ptr %44, i32 279
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50.i.i, i8 %42) #5, !srcloc !550
  br label %cleanup

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond.i = icmp eq i32 %command, 0
  br i1 %cond.i, label %do.body.i, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !557
  tail call void @arm_heavy_mb() #5
  %lmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 18
  %45 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %46, i32 109
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !559
  %48 = and i32 %47, -8388609
  %49 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio.i, align 4
  %add.ptr3.i = getelementptr i32, ptr %50, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %48) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !560
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %52, i32 109
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !561
  %54 = or i32 %53, 8388608
  %55 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio.i, align 4
  %add.ptr16.i = getelementptr i32, ptr %56, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %54) #5, !srcloc !541
  %board.i14 = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 20
  %57 = ptrtoint ptr %board.i14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %board.i14, align 4
  %switch.tableidx = add i32 %58, -136
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %59 = icmp ult i32 %switch.tableidx, 10
  br i1 %59, label %switch.hole_check, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %do.body.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 555, %switch.maskindex
  %60 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %switch.lobit.not = icmp eq i16 %60, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.saa7134_tuner_callback, i32 0, i32 %switch.tableidx
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @saa7134_set_gpio(ptr noundef nonnull %priv, i32 noundef %switch.load, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef nonnull %priv, i32 noundef %switch.load, i32 noundef 1) #5
  br label %cleanup

sw.bb3:                                           ; preds = %if.then
  %board.i15 = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 20
  %62 = ptrtoint ptr %board.i15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %board.i15, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %63, label %do.body5.i [
    i32 171, label %sw.bb3.sw.bb.i16_crit_edge
    i32 178, label %sw.bb3.sw.bb.i16_crit_edge29
    i32 179, label %sw.bb3.sw.bb.i16_crit_edge30
  ]

sw.bb3.sw.bb.i16_crit_edge30:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i16

sw.bb3.sw.bb.i16_crit_edge29:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i16

sw.bb3.sw.bb.i16_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i16

sw.bb.i16:                                        ; preds = %sw.bb3.sw.bb.i16_crit_edge, %sw.bb3.sw.bb.i16_crit_edge29, %sw.bb3.sw.bb.i16_crit_edge30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp.i = icmp eq i32 %command, 0
  br i1 %cmp.i, label %do.body.i18, label %sw.bb.i16.cleanup_crit_edge

sw.bb.i16.cleanup_crit_edge:                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i18:                                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !562
  tail call void @arm_heavy_mb() #5
  %bmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 19
  %65 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %66, i32 464
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 0) #5, !srcloc !550
  tail call void @msleep(i32 noundef 10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !563
  tail call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bmmio.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %68, i32 464
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 1) #5, !srcloc !550
  tail call void @msleep(i32 noundef 10) #5
  br label %cleanup

do.body5.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !564
  tail call void @arm_heavy_mb() #5
  %lmmio.i19 = getelementptr inbounds %struct.saa7134_dev, ptr %priv, i32 0, i32 18
  %69 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr7.i = getelementptr i32, ptr %70, i32 108
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !565
  %72 = or i32 %71, 57862
  %73 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr10.i = getelementptr i32, ptr %74, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %72) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !566
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr16.i20 = getelementptr i32, ptr %76, i32 109
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i20) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !567
  %78 = or i32 %77, 41478
  %79 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr23.i = getelementptr i32, ptr %80, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %78) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !568
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr29.i = getelementptr i32, ptr %82, i32 89
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !569
  %84 = or i32 %83, 33554432
  %85 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr36.i = getelementptr i32, ptr %86, i32 89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %84) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !570
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr42.i = getelementptr i32, ptr %88, i32 64
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !571
  %90 = or i32 %89, -2130706432
  %91 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr49.i = getelementptr i32, ptr %92, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %90) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !572
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr55.i = getelementptr i32, ptr %94, i32 92
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !573
  %96 = or i32 %95, -411232253
  %97 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr62.i = getelementptr i32, ptr %98, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %96) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !574
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr68.i = getelementptr i32, ptr %100, i32 92
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !575
  %102 = or i32 %101, 50331648
  %103 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr75.i = getelementptr i32, ptr %104, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %102) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !576
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr81.i = getelementptr i32, ptr %106, i32 93
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !577
  %108 = or i32 %107, 14680320
  %109 = ptrtoint ptr %lmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lmmio.i19, align 4
  %add.ptr88.i = getelementptr i32, ptr %110, i32 93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 %108) #5, !srcloc !541
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body5.i, %do.body.i18, %sw.bb.i16.cleanup_crit_edge, %switch.lookup, %switch.hole_check.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %do.body.i.i, %sw.bb.i6.i, %sw.default.i.cleanup_crit_edge, %return.sink.split.i22.i.i, %sw.bb6.i.i.cleanup_crit_edge, %sw.bb1.i19.i.i, %sw.bb.i.i.i, %sw.bb4.i.i.cleanup_crit_edge, %return.sink.split.i17.i.i, %sw.bb2.i.i.cleanup_crit_edge, %return.sink.split.i.i.i, %sw.bb1.i.i.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %sw.bb.i.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb1.i.i.cleanup_crit_edge ], [ 0, %return.sink.split.i.i.i ], [ -22, %sw.bb2.i.i.cleanup_crit_edge ], [ 0, %return.sink.split.i17.i.i ], [ -22, %sw.bb4.i.i.cleanup_crit_edge ], [ 0, %sw.bb1.i19.i.i ], [ 0, %sw.bb.i.i.i ], [ -22, %sw.bb6.i.i.cleanup_crit_edge ], [ 0, %return.sink.split.i22.i.i ], [ -22, %sw.default.i.cleanup_crit_edge ], [ 0, %do.body.i.i ], [ 0, %sw.bb.i6.i ], [ 0, %do.body.i.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ 0, %switch.lookup ], [ 0, %sw.bb.i16.cleanup_crit_edge ], [ 0, %do.body.i18 ], [ 0, %do.body5.i ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_board_init1(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !578
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !541
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr2 = getelementptr i32, ptr %3, i32 109
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !558
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !579
  %gpio_value = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 26
  %6 = ptrtoint ptr %gpio_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gpio_value, align 8
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef %name, i32 noundef %5) #8
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge561
    i32 95, label %entry.sw.bb_crit_edge562
    i32 74, label %entry.sw.bb9_crit_edge
    i32 54, label %entry.sw.bb9_crit_edge563
    i32 8, label %entry.sw.bb9_crit_edge564
    i32 11, label %entry.sw.bb9_crit_edge565
    i32 48, label %entry.sw.bb9_crit_edge566
    i32 30, label %entry.sw.bb9_crit_edge567
    i32 31, label %entry.sw.bb9_crit_edge568
    i32 113, label %entry.sw.bb9_crit_edge569
    i32 22, label %entry.sw.bb9_crit_edge570
    i32 59, label %entry.sw.bb9_crit_edge571
    i32 63, label %entry.sw.bb9_crit_edge572
    i32 35, label %entry.sw.bb9_crit_edge573
    i32 52, label %entry.sw.bb9_crit_edge574
    i32 170, label %entry.sw.bb9_crit_edge575
    i32 194, label %entry.sw.bb9_crit_edge576
    i32 45, label %entry.sw.bb9_crit_edge577
    i32 56, label %entry.sw.bb9_crit_edge578
    i32 102, label %entry.sw.bb9_crit_edge579
    i32 57, label %entry.sw.bb9_crit_edge580
    i32 85, label %entry.sw.bb9_crit_edge581
    i32 149, label %entry.sw.bb9_crit_edge582
    i32 40, label %entry.sw.bb9_crit_edge583
    i32 49, label %entry.sw.bb9_crit_edge584
    i32 62, label %entry.sw.bb9_crit_edge585
    i32 183, label %entry.sw.bb9_crit_edge586
    i32 70, label %entry.sw.bb9_crit_edge587
    i32 71, label %entry.sw.bb9_crit_edge588
    i32 103, label %entry.sw.bb9_crit_edge589
    i32 28, label %entry.sw.bb9_crit_edge590
    i32 27, label %entry.sw.bb9_crit_edge591
    i32 67, label %entry.sw.bb9_crit_edge592
    i32 32, label %entry.sw.bb9_crit_edge593
    i32 68, label %entry.sw.bb9_crit_edge594
    i32 65, label %entry.sw.bb9_crit_edge595
    i32 79, label %entry.sw.bb9_crit_edge596
    i32 86, label %entry.sw.bb9_crit_edge597
    i32 190, label %entry.sw.bb9_crit_edge598
    i32 78, label %entry.sw.bb9_crit_edge599
    i32 112, label %entry.sw.bb9_crit_edge600
    i32 146, label %entry.sw.bb9_crit_edge601
    i32 55, label %entry.sw.bb9_crit_edge602
    i32 98, label %entry.sw.bb9_crit_edge603
    i32 99, label %entry.sw.bb9_crit_edge604
    i32 106, label %entry.sw.bb9_crit_edge605
    i32 107, label %entry.sw.bb9_crit_edge606
    i32 148, label %entry.sw.bb9_crit_edge607
    i32 184, label %entry.sw.bb9_crit_edge608
    i32 116, label %entry.sw.bb9_crit_edge609
    i32 118, label %entry.sw.bb9_crit_edge610
    i32 119, label %entry.sw.bb9_crit_edge611
    i32 120, label %entry.sw.bb9_crit_edge612
    i32 121, label %entry.sw.bb9_crit_edge613
    i32 122, label %entry.sw.bb9_crit_edge614
    i32 123, label %entry.sw.bb9_crit_edge615
    i32 124, label %entry.sw.bb9_crit_edge616
    i32 125, label %entry.sw.bb9_crit_edge617
    i32 126, label %entry.sw.bb9_crit_edge618
    i32 159, label %entry.sw.bb9_crit_edge619
    i32 176, label %entry.sw.bb9_crit_edge620
    i32 127, label %entry.sw.bb9_crit_edge621
    i32 160, label %entry.sw.bb9_crit_edge622
    i32 161, label %entry.sw.bb9_crit_edge623
    i32 132, label %entry.sw.bb9_crit_edge624
    i32 150, label %entry.sw.bb9_crit_edge625
    i32 153, label %entry.sw.bb9_crit_edge626
    i32 154, label %entry.sw.bb9_crit_edge627
    i32 172, label %entry.sw.bb9_crit_edge628
    i32 175, label %entry.sw.bb9_crit_edge629
    i32 195, label %entry.sw.bb9_crit_edge630
    i32 97, label %do.body12
    i32 9, label %do.end22
    i32 47, label %do.body32
    i32 50, label %do.body57
    i32 76, label %do.body66
    i32 60, label %do.body93
    i32 87, label %entry.do.body102_crit_edge
    i32 94, label %entry.do.body102_crit_edge631
    i32 46, label %entry.do.body129_crit_edge
    i32 138, label %entry.do.body129_crit_edge632
    i32 158, label %do.body182
    i32 136, label %sw.bb235
    i32 145, label %sw.bb237
    i32 137, label %sw.bb238
    i32 128, label %do.body241
    i32 72, label %do.body295
    i32 155, label %entry.sw.bb299_crit_edge
    i32 156, label %entry.sw.bb299_crit_edge633
    i32 77, label %entry.sw.bb301_crit_edge
    i32 101, label %entry.sw.bb301_crit_edge634
    i32 36, label %entry.sw.bb301_crit_edge635
    i32 82, label %entry.sw.bb301_crit_edge636
    i32 104, label %entry.sw.bb301_crit_edge637
    i32 129, label %entry.sw.bb301_crit_edge638
    i32 162, label %entry.sw.bb301_crit_edge639
    i32 163, label %entry.sw.bb301_crit_edge640
    i32 164, label %entry.sw.bb301_crit_edge641
    i32 165, label %entry.sw.bb301_crit_edge642
    i32 166, label %entry.sw.bb301_crit_edge643
    i32 167, label %entry.sw.bb301_crit_edge644
    i32 168, label %entry.sw.bb301_crit_edge645
    i32 130, label %entry.sw.bb301_crit_edge646
    i32 143, label %entry.sw.bb301_crit_edge647
    i32 144, label %entry.sw.bb301_crit_edge648
    i32 142, label %entry.sw.bb301_crit_edge649
    i32 171, label %entry.sw.bb301_crit_edge650
    i32 178, label %entry.sw.bb301_crit_edge651
    i32 179, label %entry.sw.bb301_crit_edge652
    i32 189, label %entry.sw.bb301_crit_edge653
    i32 196, label %entry.sw.bb301_crit_edge654
    i32 91, label %do.end305
    i32 110, label %sw.bb316
    i32 141, label %entry.do.body345_crit_edge
    i32 140, label %entry.do.body345_crit_edge655
    i32 192, label %sw.bb371
    i32 169, label %sw.bb373
    i32 180, label %sw.bb401
    i32 185, label %do.body404
    i32 139, label %do.body431
  ]

entry.do.body345_crit_edge655:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body345

entry.do.body345_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body345

entry.sw.bb301_crit_edge654:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge653:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge652:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge651:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge650:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge649:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge648:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge647:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge646:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge645:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge644:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge643:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge642:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge641:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge640:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge639:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge638:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge637:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge636:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge635:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge634:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb301_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb301

entry.sw.bb299_crit_edge633:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb299

entry.sw.bb299_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb299

entry.do.body129_crit_edge632:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body129

entry.do.body129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body129

entry.do.body102_crit_edge631:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

entry.do.body102_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

entry.sw.bb9_crit_edge630:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge629:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge628:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge627:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge626:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge625:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge624:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge623:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge622:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge621:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge620:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge619:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge618:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge617:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge616:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge615:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge614:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge613:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge612:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge611:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge610:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge609:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge608:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge607:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge606:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge605:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge604:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge603:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge602:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge601:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge600:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge599:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge598:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge597:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge596:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge595:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge594:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge593:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge592:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge591:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge590:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge589:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge588:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge587:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge586:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge585:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge584:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge583:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge582:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge581:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge580:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge579:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge578:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge577:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge576:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge575:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge574:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge573:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge572:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge571:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge570:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge569:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge568:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge567:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge566:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge565:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge564:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge563:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb_crit_edge562:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge561:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge561, %entry.sw.bb_crit_edge562
  %has_remote = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %10 = ptrtoint ptr %has_remote to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %has_remote, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef %name, ptr noundef %name, ptr noundef %name) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge563, %entry.sw.bb9_crit_edge564, %entry.sw.bb9_crit_edge565, %entry.sw.bb9_crit_edge566, %entry.sw.bb9_crit_edge567, %entry.sw.bb9_crit_edge568, %entry.sw.bb9_crit_edge569, %entry.sw.bb9_crit_edge570, %entry.sw.bb9_crit_edge571, %entry.sw.bb9_crit_edge572, %entry.sw.bb9_crit_edge573, %entry.sw.bb9_crit_edge574, %entry.sw.bb9_crit_edge575, %entry.sw.bb9_crit_edge576, %entry.sw.bb9_crit_edge577, %entry.sw.bb9_crit_edge578, %entry.sw.bb9_crit_edge579, %entry.sw.bb9_crit_edge580, %entry.sw.bb9_crit_edge581, %entry.sw.bb9_crit_edge582, %entry.sw.bb9_crit_edge583, %entry.sw.bb9_crit_edge584, %entry.sw.bb9_crit_edge585, %entry.sw.bb9_crit_edge586, %entry.sw.bb9_crit_edge587, %entry.sw.bb9_crit_edge588, %entry.sw.bb9_crit_edge589, %entry.sw.bb9_crit_edge590, %entry.sw.bb9_crit_edge591, %entry.sw.bb9_crit_edge592, %entry.sw.bb9_crit_edge593, %entry.sw.bb9_crit_edge594, %entry.sw.bb9_crit_edge595, %entry.sw.bb9_crit_edge596, %entry.sw.bb9_crit_edge597, %entry.sw.bb9_crit_edge598, %entry.sw.bb9_crit_edge599, %entry.sw.bb9_crit_edge600, %entry.sw.bb9_crit_edge601, %entry.sw.bb9_crit_edge602, %entry.sw.bb9_crit_edge603, %entry.sw.bb9_crit_edge604, %entry.sw.bb9_crit_edge605, %entry.sw.bb9_crit_edge606, %entry.sw.bb9_crit_edge607, %entry.sw.bb9_crit_edge608, %entry.sw.bb9_crit_edge609, %entry.sw.bb9_crit_edge610, %entry.sw.bb9_crit_edge611, %entry.sw.bb9_crit_edge612, %entry.sw.bb9_crit_edge613, %entry.sw.bb9_crit_edge614, %entry.sw.bb9_crit_edge615, %entry.sw.bb9_crit_edge616, %entry.sw.bb9_crit_edge617, %entry.sw.bb9_crit_edge618, %entry.sw.bb9_crit_edge619, %entry.sw.bb9_crit_edge620, %entry.sw.bb9_crit_edge621, %entry.sw.bb9_crit_edge622, %entry.sw.bb9_crit_edge623, %entry.sw.bb9_crit_edge624, %entry.sw.bb9_crit_edge625, %entry.sw.bb9_crit_edge626, %entry.sw.bb9_crit_edge627, %entry.sw.bb9_crit_edge628, %entry.sw.bb9_crit_edge629, %entry.sw.bb9_crit_edge630
  %has_remote10 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %11 = ptrtoint ptr %has_remote10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %has_remote10, align 8
  br label %sw.epilog

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !580
  tail call void @arm_heavy_mb() #5
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr14 = getelementptr i8, ptr %13, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 -128) #5, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !581
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio, align 8
  %add.ptr18 = getelementptr i8, ptr %15, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 64) #5, !srcloc !550
  %has_remote19 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %16 = ptrtoint ptr %has_remote19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %has_remote19, align 8
  br label %sw.epilog

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef %name, ptr noundef %name, ptr noundef %name) #8
  br label %sw.epilog

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !582
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr37 = getelementptr i32, ptr %18, i32 108
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !583
  %20 = or i32 %19, 1024
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr42 = getelementptr i32, ptr %22, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %20) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !584
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr48 = getelementptr i32, ptr %24, i32 109
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !585
  %26 = and i32 %25, -1025
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %add.ptr55 = getelementptr i32, ptr %28, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %26) #5, !srcloc !541
  br label %sw.epilog

do.body57:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !586
  tail call void @arm_heavy_mb() #5
  %bmmio59 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %bmmio59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bmmio59, align 8
  %add.ptr60 = getelementptr i8, ptr %30, i32 433
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 -128) #5, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !587
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %bmmio59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bmmio59, align 8
  %add.ptr64 = getelementptr i8, ptr %32, i32 437
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr64, i8 -128) #5, !srcloc !550
  br label %sw.epilog

do.body66:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !588
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %add.ptr71 = getelementptr i32, ptr %34, i32 108
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !589
  %36 = or i32 %35, 1024
  %37 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio, align 4
  %add.ptr78 = getelementptr i32, ptr %38, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %36) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !590
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio, align 4
  %add.ptr84 = getelementptr i32, ptr %40, i32 109
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !591
  %42 = and i32 %41, -1025
  %43 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio, align 4
  %add.ptr91 = getelementptr i32, ptr %44, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %42) #5, !srcloc !541
  br label %sw.epilog

do.body93:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !592
  tail call void @arm_heavy_mb() #5
  %bmmio95 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %45 = ptrtoint ptr %bmmio95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bmmio95, align 8
  %add.ptr96 = getelementptr i8, ptr %46, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 8) #5, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !593
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %bmmio95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bmmio95, align 8
  %add.ptr100 = getelementptr i8, ptr %48, i32 439
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100, i8 6) #5, !srcloc !550
  br label %sw.epilog

do.body102:                                       ; preds = %entry.do.body102_crit_edge, %entry.do.body102_crit_edge631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !594
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio, align 4
  %add.ptr107 = getelementptr i32, ptr %50, i32 108
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !595
  %52 = or i32 %51, 8
  %53 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio, align 4
  %add.ptr114 = getelementptr i32, ptr %54, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %52) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !596
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio, align 4
  %add.ptr120 = getelementptr i32, ptr %56, i32 109
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !597
  %58 = and i32 %57, -9
  %59 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lmmio, align 4
  %add.ptr127 = getelementptr i32, ptr %60, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %58) #5, !srcloc !541
  br label %sw.epilog

do.body129:                                       ; preds = %entry.do.body129_crit_edge, %entry.do.body129_crit_edge632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !598
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lmmio, align 4
  %add.ptr134 = getelementptr i32, ptr %62, i32 108
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !599
  %64 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio, align 4
  %add.ptr141 = getelementptr i32, ptr %65, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 0) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !600
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lmmio, align 4
  %add.ptr147 = getelementptr i32, ptr %67, i32 109
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !601
  %69 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio, align 4
  %add.ptr154 = getelementptr i32, ptr %70, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 0) #5, !srcloc !541
  tail call void @msleep(i32 noundef 10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !602
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lmmio, align 4
  %add.ptr160 = getelementptr i32, ptr %72, i32 108
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !603
  %74 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio, align 4
  %add.ptr167 = getelementptr i32, ptr %75, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 -1) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !604
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lmmio, align 4
  %add.ptr173 = getelementptr i32, ptr %77, i32 109
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !605
  %79 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio, align 4
  %add.ptr180 = getelementptr i32, ptr %80, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 -1) #5, !srcloc !541
  tail call void @msleep(i32 noundef 10) #5
  br label %sw.epilog

do.body182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !606
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lmmio, align 4
  %add.ptr187 = getelementptr i32, ptr %82, i32 108
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !607
  %84 = or i32 %83, 16392
  %85 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio, align 4
  %add.ptr194 = getelementptr i32, ptr %86, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 %84) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !608
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio, align 4
  %add.ptr200 = getelementptr i32, ptr %88, i32 109
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr200) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !609
  %90 = and i32 %89, -16393
  %91 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio, align 4
  %add.ptr207 = getelementptr i32, ptr %92, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 %90) #5, !srcloc !541
  tail call void @msleep(i32 noundef 10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !610
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio, align 4
  %add.ptr213 = getelementptr i32, ptr %94, i32 108
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !611
  %96 = or i32 %95, 16392
  %97 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lmmio, align 4
  %add.ptr220 = getelementptr i32, ptr %98, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220, i32 %96) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !612
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lmmio, align 4
  %add.ptr226 = getelementptr i32, ptr %100, i32 109
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !613
  %102 = or i32 %101, 16392
  %103 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lmmio, align 4
  %add.ptr233 = getelementptr i32, ptr %104, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr233, i32 %102) #5, !srcloc !541
  tail call void @msleep(i32 noundef 10) #5
  %has_remote234 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %105 = ptrtoint ptr %has_remote234 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %has_remote234, align 8
  br label %sw.epilog

sw.bb235:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 23, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 23, i32 noundef 1) #5
  %has_remote236 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %106 = ptrtoint ptr %has_remote236 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %has_remote236, align 8
  br label %sw.epilog

sw.bb237:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 23, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 23, i32 noundef 1) #5
  br label %sw.epilog

sw.bb238:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 21, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 21, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 1) #5
  %has_remote239 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %107 = ptrtoint ptr %has_remote239 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %has_remote239, align 8
  br label %sw.epilog

do.body241:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !614
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lmmio, align 4
  %add.ptr246 = getelementptr i32, ptr %109, i32 108
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr246) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !615
  %111 = or i32 %110, 75500032
  %112 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lmmio, align 4
  %add.ptr253 = getelementptr i32, ptr %113, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 %111) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !616
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %lmmio, align 4
  %add.ptr259 = getelementptr i32, ptr %115, i32 109
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr259) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !617
  %117 = and i32 %116, -75500033
  %118 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %lmmio, align 4
  %add.ptr266 = getelementptr i32, ptr %119, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 %117) #5, !srcloc !541
  tail call void @msleep(i32 noundef 10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !618
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lmmio, align 4
  %add.ptr272 = getelementptr i32, ptr %121, i32 108
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !619
  %123 = or i32 %122, 75500032
  %124 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %lmmio, align 4
  %add.ptr279 = getelementptr i32, ptr %125, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr279, i32 %123) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !620
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %lmmio, align 4
  %add.ptr285 = getelementptr i32, ptr %127, i32 109
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr285) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !621
  %129 = or i32 %128, 75500032
  %130 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lmmio, align 4
  %add.ptr292 = getelementptr i32, ptr %131, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 %129) #5, !srcloc !541
  tail call void @msleep(i32 noundef 10) #5
  %has_remote293 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %132 = ptrtoint ptr %has_remote293 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %has_remote293, align 8
  br label %sw.epilog

do.body295:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !622
  tail call void @arm_heavy_mb() #5
  %bmmio297 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %133 = ptrtoint ptr %bmmio297 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bmmio297, align 8
  %add.ptr298 = getelementptr i8, ptr %134, i32 465
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr298, i8 0) #5, !srcloc !550
  br label %sw.epilog

sw.bb299:                                         ; preds = %entry.sw.bb299_crit_edge, %entry.sw.bb299_crit_edge633
  %has_remote300 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %135 = ptrtoint ptr %has_remote300 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %has_remote300, align 8
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 26, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 22, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 22, i32 noundef 1) #5
  br label %sw.epilog

sw.bb301:                                         ; preds = %entry.sw.bb301_crit_edge, %entry.sw.bb301_crit_edge634, %entry.sw.bb301_crit_edge635, %entry.sw.bb301_crit_edge636, %entry.sw.bb301_crit_edge637, %entry.sw.bb301_crit_edge638, %entry.sw.bb301_crit_edge639, %entry.sw.bb301_crit_edge640, %entry.sw.bb301_crit_edge641, %entry.sw.bb301_crit_edge642, %entry.sw.bb301_crit_edge643, %entry.sw.bb301_crit_edge644, %entry.sw.bb301_crit_edge645, %entry.sw.bb301_crit_edge646, %entry.sw.bb301_crit_edge647, %entry.sw.bb301_crit_edge648, %entry.sw.bb301_crit_edge649, %entry.sw.bb301_crit_edge650, %entry.sw.bb301_crit_edge651, %entry.sw.bb301_crit_edge652, %entry.sw.bb301_crit_edge653, %entry.sw.bb301_crit_edge654
  %has_remote302 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %136 = ptrtoint ptr %has_remote302 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2, ptr %has_remote302, align 8
  br label %sw.epilog

do.end305:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %137 = load ptr, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 91), align 4
  %call315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %name, ptr noundef %137, ptr noundef %name, ptr noundef %name) #8
  br label %sw.epilog

sw.bb316:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %has_remote317 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %138 = ptrtoint ptr %has_remote317 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %has_remote317, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !623
  tail call void @arm_heavy_mb() #5
  %139 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lmmio, align 4
  %add.ptr323 = getelementptr i32, ptr %140, i32 108
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr323) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !624
  %142 = or i32 %141, 117441676
  %143 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %lmmio, align 4
  %add.ptr330 = getelementptr i32, ptr %144, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 %142) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !625
  tail call void @arm_heavy_mb() #5
  %145 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lmmio, align 4
  %add.ptr336 = getelementptr i32, ptr %146, i32 109
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr336) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !626
  %148 = or i32 %147, -855179252
  %149 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lmmio, align 4
  %add.ptr343 = getelementptr i32, ptr %150, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr343, i32 %148) #5, !srcloc !541
  br label %sw.epilog

do.body345:                                       ; preds = %entry.do.body345_crit_edge, %entry.do.body345_crit_edge655
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !627
  tail call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %lmmio, align 4
  %add.ptr350 = getelementptr i32, ptr %152, i32 108
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr350) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !628
  %154 = or i32 %153, 66688
  %155 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lmmio, align 4
  %add.ptr357 = getelementptr i32, ptr %156, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr357, i32 %154) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !629
  tail call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %lmmio, align 4
  %add.ptr363 = getelementptr i32, ptr %158, i32 109
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr363) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !630
  %160 = and i32 %159, -66689
  %161 = or i32 %160, 66560
  %162 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %lmmio, align 4
  %add.ptr370 = getelementptr i32, ptr %163, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr370, i32 %161) #5, !srcloc !541
  br label %sw.epilog

sw.bb371:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 12, i32 noundef 3) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 13, i32 noundef 3) #5
  %has_remote372 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %164 = ptrtoint ptr %has_remote372 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 2, ptr %has_remote372, align 8
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 23, i32 noundef 1) #5
  br label %sw.epilog

sw.bb373:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %has_remote374 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %165 = ptrtoint ptr %has_remote374 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %has_remote374, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !631
  tail call void @arm_heavy_mb() #5
  %166 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %lmmio, align 4
  %add.ptr380 = getelementptr i32, ptr %167, i32 108
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr380) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !632
  %169 = or i32 %168, 12582912
  %170 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %lmmio, align 4
  %add.ptr387 = getelementptr i32, ptr %171, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr387, i32 %169) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !633
  tail call void @arm_heavy_mb() #5
  %172 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %lmmio, align 4
  %add.ptr393 = getelementptr i32, ptr %173, i32 109
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr393) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !634
  %175 = or i32 %174, 12582912
  %176 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %lmmio, align 4
  %add.ptr400 = getelementptr i32, ptr %177, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr400, i32 %175) #5, !srcloc !541
  br label %sw.epilog

sw.bb401:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 1, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 1, i32 noundef 1) #5
  %has_remote402 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %178 = ptrtoint ptr %has_remote402 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %has_remote402, align 8
  br label %sw.epilog

do.body404:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !635
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %lmmio, align 4
  %add.ptr409 = getelementptr i32, ptr %180, i32 108
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr409) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !636
  %182 = and i32 %181, -1295
  %183 = or i32 %182, 1292
  %184 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %lmmio, align 4
  %add.ptr416 = getelementptr i32, ptr %185, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr416, i32 %183) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !637
  tail call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %lmmio, align 4
  %add.ptr422 = getelementptr i32, ptr %187, i32 109
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr422) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !638
  %189 = and i32 %188, -1295
  %190 = or i32 %189, 1292
  %191 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %lmmio, align 4
  %add.ptr429 = getelementptr i32, ptr %192, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr429, i32 %190) #5, !srcloc !541
  br label %sw.epilog

do.body431:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !639
  tail call void @arm_heavy_mb() #5
  %193 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %lmmio, align 4
  %add.ptr436 = getelementptr i32, ptr %194, i32 108
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr436) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !640
  %196 = or i32 %195, 8388608
  %197 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %lmmio, align 4
  %add.ptr443 = getelementptr i32, ptr %198, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr443, i32 %196) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !641
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %lmmio, align 4
  %add.ptr449 = getelementptr i32, ptr %200, i32 109
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr449) #5, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !642
  %202 = or i32 %201, 8388608
  %203 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %lmmio, align 4
  %add.ptr456 = getelementptr i32, ptr %204, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr456, i32 %202) #5, !srcloc !541
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body431, %do.body404, %sw.bb401, %sw.bb373, %sw.bb371, %do.body345, %sw.bb316, %do.end305, %sw.bb301, %sw.bb299, %do.body295, %do.body241, %sw.bb238, %sw.bb237, %sw.bb235, %do.body182, %do.body129, %do.body102, %do.body93, %do.body66, %do.body57, %do.body32, %do.end22, %do.body12, %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_set_gpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_board_init2(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tun_setup.i = alloca %struct.tuner_setup, align 4
  %tda9887_cfg.i = alloca %struct.v4l2_priv_tun_config, align 4
  %xc2028_cfg.i = alloca %struct.v4l2_priv_tun_config, align 8
  %ctl.i = alloca %struct.xc2028_ctrl, align 4
  %buf = alloca i8, align 1
  %subaddr = alloca i8, align 1
  %data = alloca [3 x i8], align 1
  %data1 = alloca [4 x i8], align 4
  %msg = alloca [2 x %struct.i2c_msg], align 4
  %msg1 = alloca %struct.i2c_msg, align 4
  %data182 = alloca [2 x i8], align 2
  %msg183 = alloca %struct.i2c_msg, align 4
  %data192 = alloca [3 x i8], align 1
  %msg193 = alloca %struct.i2c_msg, align 4
  %data263 = alloca [3 x i8], align 1
  %msg264 = alloca %struct.i2c_msg, align 4
  %data275 = alloca [3 x i8], align 1
  %msg276 = alloca %struct.i2c_msg, align 4
  %data287 = alloca [3 x i8], align 1
  %msg288 = alloca %struct.i2c_msg, align 4
  %temp = alloca i8, align 1
  %data299 = alloca [3 x i8], align 1
  %msg300 = alloca %struct.i2c_msg, align 4
  %data350 = alloca [3 x i8], align 1
  %msg351 = alloca %struct.i2c_msg, align 4
  %data362 = alloca [3 x i8], align 1
  %msg363 = alloca %struct.i2c_msg, align 4
  %msg420 = alloca %struct.i2c_msg, align 8
  %data443 = alloca [4 x i8], align 4
  %msg444 = alloca %struct.i2c_msg, align 4
  %tea5767_cfg = alloca %struct.v4l2_priv_tun_config, align 4
  %ctl = alloca %struct.tea5767_ctrl, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !643
  %board1 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %board1, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.301)
  switch i32 %2, label %entry.sw.epilog475_crit_edge [
    i32 18, label %entry.sw.bb_crit_edge
    i32 23, label %entry.sw.bb_crit_edge703
    i32 12, label %sw.bb12
    i32 69, label %sw.bb158
    i32 70, label %entry.sw.bb181_crit_edge
    i32 100, label %entry.sw.bb181_crit_edge704
    i32 174, label %entry.sw.bb181_crit_edge705
    i32 181, label %entry.sw.bb181_crit_edge706
    i32 81, label %entry.sw.bb191_crit_edge
    i32 109, label %entry.sw.bb191_crit_edge707
    i32 53, label %sw.bb232
    i32 155, label %entry.sw.bb255_crit_edge
    i32 156, label %entry.sw.bb255_crit_edge708
    i32 104, label %sw.bb258
    i32 101, label %entry.sw.bb262_crit_edge
    i32 114, label %entry.sw.bb262_crit_edge709
    i32 88, label %entry.sw.bb262_crit_edge710
    i32 152, label %entry.sw.bb262_crit_edge711
    i32 78, label %entry.sw.bb262_crit_edge712
    i32 112, label %entry.sw.bb262_crit_edge713
    i32 96, label %entry.sw.bb262_crit_edge714
    i32 117, label %entry.sw.bb262_crit_edge715
    i32 131, label %entry.sw.bb262_crit_edge716
    i32 134, label %entry.sw.bb262_crit_edge717
    i32 147, label %sw.bb274
    i32 190, label %sw.bb286
    i32 84, label %sw.bb298
    i32 87, label %entry.sw.bb349_crit_edge
    i32 94, label %entry.sw.bb349_crit_edge718
    i32 105, label %entry.sw.bb361_crit_edge
    i32 108, label %entry.sw.bb361_crit_edge719
    i32 71, label %entry.sw.bb373_crit_edge
    i32 103, label %entry.sw.bb373_crit_edge720
    i32 151, label %entry.sw.bb419_crit_edge
    i32 90, label %entry.sw.bb419_crit_edge721
    i32 142, label %sw.bb442
    i32 182, label %do.body466
  ]

entry.sw.bb419_crit_edge721:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb419

entry.sw.bb419_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb419

entry.sw.bb373_crit_edge720:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb373

entry.sw.bb373_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb373

entry.sw.bb361_crit_edge719:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb361

entry.sw.bb361_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb361

entry.sw.bb349_crit_edge718:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb349

entry.sw.bb349_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb349

entry.sw.bb262_crit_edge717:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge716:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge715:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge714:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge713:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge712:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge711:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge710:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge709:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb262_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb262

entry.sw.bb255_crit_edge708:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb255

entry.sw.bb255_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb255

entry.sw.bb191_crit_edge707:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb191

entry.sw.bb191_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb191

entry.sw.bb181_crit_edge706:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb181

entry.sw.bb181_crit_edge705:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb181

entry.sw.bb181_crit_edge704:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb181

entry.sw.bb181_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb181

entry.sw.bb_crit_edge703:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog475_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog475

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge703
  %i2c_client = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 28
  %addr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 96, ptr %addr, align 2
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buf, i32 noundef 0, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %cond = select i1 %cmp, i32 18, i32 23
  %5 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %board1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %6)
  %cmp4 = icmp eq i32 %cond, %6
  br i1 %cmp4, label %sw.bb.sw.epilog475_crit_edge, label %if.end

sw.bb.sw.epilog475_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog475

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %board1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %board1, align 4
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %arrayidx = getelementptr [198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %cond
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef %name, ptr noundef %9) #8
  %10 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %board1, align 4
  %tuner_type = getelementptr [198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %11, i32 6
  %12 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tuner_type, align 4
  %tuner_type11 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %14 = ptrtoint ptr %tuner_type11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tuner_type11, align 8
  br label %sw.epilog475

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %subaddr) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #5
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %data, align 1, !annotation !643
  %16 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !643
  %18 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %18, align 1, !annotation !643
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data1) #5
  %20 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 161449489, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #5
  %21 = getelementptr inbounds i8, ptr %msg, i32 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 16)
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 80, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %len, align 4
  %buf14 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %26 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %subaddr, ptr %buf14, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %27 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 80, ptr %arrayinit.element, align 4
  %flags16 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %28 = ptrtoint ptr %flags16 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags16, align 2
  %len17 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %29 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 3, ptr %len17, align 4
  %buf18 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %30 = ptrtoint ptr %buf18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data, ptr %buf18, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg1) #5
  %31 = getelementptr inbounds i8, ptr %msg1, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %31, align 4
  %33 = ptrtoint ptr %msg1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 97, ptr %msg1, align 4
  %flags21 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 1
  %34 = ptrtoint ptr %flags21 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags21, align 2
  %len22 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 2
  %35 = ptrtoint ptr %len22 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 4, ptr %len22, align 4
  %buf23 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 3
  %36 = ptrtoint ptr %buf23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %data1, ptr %buf23, align 4
  %37 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 20, ptr %subaddr, align 1
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call26 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 2
  br i1 %cmp27.not, label %if.else, label %do.end31

do.end31:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220) #8
  br label %do.end134

if.else:                                          ; preds = %sw.bb12
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.302)
  switch i8 %39, label %if.then41 [
    i8 0, label %if.else.if.else66_crit_edge
    i8 -1, label %if.else.if.else66_crit_edge722
  ]

if.else.if.else66_crit_edge722:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else66

if.else.if.else66_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else66

if.then41:                                        ; preds = %if.else
  %add = add i8 %39, 2
  %41 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %add, ptr %subaddr, align 1
  %42 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %len17, align 4
  %call49 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #5
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 1
  %conv51 = zext i8 %44 to i32
  %shl = shl nuw nsw i32 %conv51, 8
  %45 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %16, align 1
  %conv53 = zext i8 %46 to i32
  %add54 = or i32 %shl, %conv53
  %trunc694 = trunc i32 %add54 to i16
  %47 = zext i16 %trunc694 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.303)
  switch i16 %trunc694, label %do.end61 [
    i16 259, label %sw.bb55
    i16 268, label %sw.bb57
  ]

sw.bb55:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_type56 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %48 = ptrtoint ptr %tuner_type56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %tuner_type56, align 8
  br label %do.end134

sw.bb57:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_type58 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %49 = ptrtoint ptr %tuner_type58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 38, ptr %tuner_type58, align 8
  br label %do.end134

do.end61:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %name63 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name63, i32 noundef %add54) #8
  br label %do.end134

if.else66:                                        ; preds = %if.else.if.else66_crit_edge, %if.else.if.else66_crit_edge722
  %50 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %16, align 1
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.304)
  switch i8 %51, label %if.then76 [
    i8 0, label %if.else66.do.end124_crit_edge
    i8 -1, label %if.else66.do.end124_crit_edge723
  ]

if.else66.do.end124_crit_edge723:                 ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

if.else66.do.end124_crit_edge:                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

if.then76:                                        ; preds = %if.else66
  %add79 = add nuw i8 %51, 1
  %53 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %add79, ptr %subaddr, align 1
  %54 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len17, align 4
  %call85 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #5
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data, align 1
  %add88 = add i8 %56, 1
  %57 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %add88, ptr %subaddr, align 1
  %58 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 2, ptr %len17, align 4
  %call94 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #5
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %16, align 1
  %conv96 = zext i8 %60 to i32
  %shl97 = shl nuw nsw i32 %conv96, 8
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %data, align 1
  %conv99 = zext i8 %62 to i32
  %add100 = or i32 %shl97, %conv99
  %trunc = trunc i32 %add100 to i16
  %63 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.305)
  switch i16 %trunc, label %do.end115 [
    i16 5, label %sw.bb101
    i16 29, label %sw.bb103
  ]

sw.bb101:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_type102 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %64 = ptrtoint ptr %tuner_type102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 38, ptr %tuner_type102, align 8
  br label %do.end134

sw.bb103:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_type104 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %65 = ptrtoint ptr %tuner_type104 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 63, ptr %tuner_type104, align 8
  %name109 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %name109) #8
  br label %do.end134

do.end115:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  %name117 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name117, i32 noundef %add100) #8
  br label %do.end134

do.end124:                                        ; preds = %if.else66.do.end124_crit_edge, %if.else66.do.end124_crit_edge723
  %name126 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef %name126) #8
  br label %do.end134

do.end134:                                        ; preds = %do.end124, %do.end115, %sw.bb103, %sw.bb101, %do.end61, %sw.bb57, %sw.bb55, %do.end31
  %name136 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %tuner_type138 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %66 = ptrtoint ptr %tuner_type138 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tuner_type138, align 8
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef %name136, i32 noundef %67) #8
  %68 = ptrtoint ptr %tuner_type138 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tuner_type138, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %69)
  %cmp141 = icmp eq i32 %69, 63
  br i1 %cmp141, label %if.then143, label %do.end134.if.end157_crit_edge

do.end134.if.end157_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157

if.then143:                                       ; preds = %do.end134
  %call145 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call145)
  %cmp146.not = icmp eq i32 %call145, 1
  br i1 %cmp146.not, label %if.then143.if.end157_crit_edge, label %do.end151

if.then143.if.end157_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157

do.end151:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef %name136) #8
  br label %if.end157

if.end157:                                        ; preds = %do.end151, %if.then143.if.end157_crit_edge, %do.end134.if.end157_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg1) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data1) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %subaddr) #5
  br label %sw.epilog475

sw.bb158:                                         ; preds = %entry
  %autodetected = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 5
  %70 = ptrtoint ptr %autodetected to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %autodetected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not = icmp eq i32 %71, 0
  br i1 %tobool.not, label %sw.bb158.sw.bb181_crit_edge, label %land.lhs.true159

sw.bb158.sw.bb181_crit_edge:                      ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb181

land.lhs.true159:                                 ; preds = %sw.bb158
  %arrayidx160 = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 65
  %72 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %73)
  %cmp162 = icmp eq i8 %73, 28
  br i1 %cmp162, label %if.then164, label %land.lhs.true159.sw.bb181_crit_edge

land.lhs.true159.sw.bb181_crit_edge:              ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb181

if.then164:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %board1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 133, ptr %board1, align 4
  %75 = load i32, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 133, i32 6), align 4
  %tuner_type169 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %76 = ptrtoint ptr %tuner_type169 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %tuner_type169, align 8
  %name174 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %77 = load ptr, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 133), align 4
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef %name174, ptr noundef %77) #8
  br label %sw.epilog475

sw.bb181:                                         ; preds = %land.lhs.true159.sw.bb181_crit_edge, %sw.bb158.sw.bb181_crit_edge, %entry.sw.bb181_crit_edge, %entry.sw.bb181_crit_edge704, %entry.sw.bb181_crit_edge705, %entry.sw.bb181_crit_edge706
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data182) #5
  %78 = ptrtoint ptr %data182 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1794, ptr %data182, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg183) #5
  %79 = getelementptr inbounds i8, ptr %msg183, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %79, align 4
  %81 = ptrtoint ptr %msg183 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 8, ptr %msg183, align 4
  %flags185 = getelementptr inbounds %struct.i2c_msg, ptr %msg183, i32 0, i32 1
  %82 = ptrtoint ptr %flags185 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags185, align 2
  %len186 = getelementptr inbounds %struct.i2c_msg, ptr %msg183, i32 0, i32 2
  %83 = ptrtoint ptr %len186 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 2, ptr %len186, align 4
  %buf187 = getelementptr inbounds %struct.i2c_msg, ptr %msg183, i32 0, i32 3
  %84 = ptrtoint ptr %buf187 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %data182, ptr %buf187, align 4
  %i2c_adap189 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call190 = call i32 @i2c_transfer(ptr noundef %i2c_adap189, ptr noundef nonnull %msg183, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg183) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data182) #5
  br label %sw.epilog475

sw.bb191:                                         ; preds = %entry.sw.bb191_crit_edge, %entry.sw.bb191_crit_edge707
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data192) #5
  %85 = call ptr @memcpy(ptr %data192, ptr @__const.saa7134_board_init2.data.254, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg193) #5
  %86 = getelementptr inbounds i8, ptr %msg193, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %86, align 4
  %88 = ptrtoint ptr %msg193 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 8, ptr %msg193, align 4
  %flags195 = getelementptr inbounds %struct.i2c_msg, ptr %msg193, i32 0, i32 1
  %89 = ptrtoint ptr %flags195 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags195, align 2
  %len196 = getelementptr inbounds %struct.i2c_msg, ptr %msg193, i32 0, i32 2
  %90 = ptrtoint ptr %len196 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 3, ptr %len196, align 4
  %buf197 = getelementptr inbounds %struct.i2c_msg, ptr %msg193, i32 0, i32 3
  %91 = ptrtoint ptr %buf197 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %data192, ptr %buf197, align 4
  %autodetected199 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 5
  %92 = ptrtoint ptr %autodetected199 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %autodetected199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool200.not = icmp eq i32 %93, 0
  br i1 %tobool200.not, label %sw.bb191.if.end219_crit_edge, label %land.lhs.true201

sw.bb191.if.end219_crit_edge:                     ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

land.lhs.true201:                                 ; preds = %sw.bb191
  %arrayidx203 = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 73
  %94 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %95)
  %cmp205 = icmp eq i8 %95, 80
  br i1 %cmp205, label %if.then207, label %land.lhs.true201.if.end219_crit_edge

land.lhs.true201.if.end219_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

if.then207:                                       ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %board1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 109, ptr %board1, align 4
  %name213 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %97 = load ptr, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 109), align 4
  %call218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef %name213, ptr noundef %97) #8
  br label %if.end219

if.end219:                                        ; preds = %if.then207, %land.lhs.true201.if.end219_crit_edge, %sw.bb191.if.end219_crit_edge
  %98 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %board1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %99)
  %cmp221 = icmp eq i32 %99, 109
  br i1 %cmp221, label %if.then223, label %if.end219.cleanup_crit_edge

if.end219.cleanup_crit_edge:                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then223:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #7
  %tuner_type224 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %100 = ptrtoint ptr %tuner_type224 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 54, ptr %tuner_type224, align 8
  %arrayidx225 = getelementptr inbounds [3 x i8], ptr %data192, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 104, ptr %arrayidx225, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then223, %if.end219.cleanup_crit_edge
  %i2c_adap229 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call230 = call i32 @i2c_transfer(ptr noundef %i2c_adap229, ptr noundef nonnull %msg193, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg193) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data192) #5
  br label %sw.epilog475

sw.bb232:                                         ; preds = %entry
  %autodetected233 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 5
  %102 = ptrtoint ptr %autodetected233 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %autodetected233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool234.not = icmp eq i32 %103, 0
  br i1 %tobool234.not, label %sw.bb232.sw.epilog475_crit_edge, label %land.lhs.true235

sw.bb232.sw.epilog475_crit_edge:                  ; preds = %sw.bb232
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog475

land.lhs.true235:                                 ; preds = %sw.bb232
  %arrayidx237 = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 39
  %104 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %105)
  %cmp239 = icmp eq i8 %105, 3
  br i1 %cmp239, label %if.then241, label %land.lhs.true235.sw.epilog475_crit_edge

land.lhs.true235.sw.epilog475_crit_edge:          ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog475

if.then241:                                       ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %board1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 146, ptr %board1, align 4
  %name247 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %107 = load ptr, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 146), align 4
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef %name247, ptr noundef %107) #8
  %has_remote = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %108 = ptrtoint ptr %has_remote to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %has_remote, align 8
  %call253 = tail call i32 @saa7134_input_init1(ptr noundef %dev) #5
  br label %sw.epilog475

sw.bb255:                                         ; preds = %entry.sw.bb255_crit_edge, %entry.sw.bb255_crit_edge708
  %add.ptr = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 128
  tail call fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef %add.ptr)
  br label %sw.epilog475

sw.bb258:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr261 = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 128
  tail call fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef %add.ptr261)
  br label %sw.bb262

sw.bb262:                                         ; preds = %sw.bb258, %entry.sw.bb262_crit_edge, %entry.sw.bb262_crit_edge709, %entry.sw.bb262_crit_edge710, %entry.sw.bb262_crit_edge711, %entry.sw.bb262_crit_edge712, %entry.sw.bb262_crit_edge713, %entry.sw.bb262_crit_edge714, %entry.sw.bb262_crit_edge715, %entry.sw.bb262_crit_edge716, %entry.sw.bb262_crit_edge717
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data263) #5
  %109 = call ptr @memcpy(ptr %data263, ptr @__const.saa7134_board_init2.data.254, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg264) #5
  %110 = getelementptr inbounds i8, ptr %msg264, i32 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %110, align 4
  %112 = ptrtoint ptr %msg264 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 8, ptr %msg264, align 4
  %flags266 = getelementptr inbounds %struct.i2c_msg, ptr %msg264, i32 0, i32 1
  %113 = ptrtoint ptr %flags266 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags266, align 2
  %len267 = getelementptr inbounds %struct.i2c_msg, ptr %msg264, i32 0, i32 2
  %114 = ptrtoint ptr %len267 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 3, ptr %len267, align 4
  %buf268 = getelementptr inbounds %struct.i2c_msg, ptr %msg264, i32 0, i32 3
  %115 = ptrtoint ptr %buf268 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %data263, ptr %buf268, align 4
  %i2c_adap270 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call271 = call i32 @i2c_transfer(ptr noundef %i2c_adap270, ptr noundef nonnull %msg264, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg264) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data263) #5
  br label %sw.epilog475

sw.bb274:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data275) #5
  %116 = call ptr @memcpy(ptr %data275, ptr @__const.saa7134_board_init2.data.254, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg276) #5
  %117 = getelementptr inbounds i8, ptr %msg276, i32 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %117, align 4
  %119 = ptrtoint ptr %msg276 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 11, ptr %msg276, align 4
  %flags278 = getelementptr inbounds %struct.i2c_msg, ptr %msg276, i32 0, i32 1
  %120 = ptrtoint ptr %flags278 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags278, align 2
  %len279 = getelementptr inbounds %struct.i2c_msg, ptr %msg276, i32 0, i32 2
  %121 = ptrtoint ptr %len279 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 3, ptr %len279, align 4
  %buf280 = getelementptr inbounds %struct.i2c_msg, ptr %msg276, i32 0, i32 3
  %122 = ptrtoint ptr %buf280 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %data275, ptr %buf280, align 4
  %i2c_adap282 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call283 = call i32 @i2c_transfer(ptr noundef %i2c_adap282, ptr noundef nonnull %msg276, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg276) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data275) #5
  br label %sw.epilog475

sw.bb286:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data287) #5
  %123 = call ptr @memcpy(ptr %data287, ptr @__const.saa7134_board_init2.data.254, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg288) #5
  %124 = getelementptr inbounds i8, ptr %msg288, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %124, align 4
  %126 = ptrtoint ptr %msg288 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 11, ptr %msg288, align 4
  %flags290 = getelementptr inbounds %struct.i2c_msg, ptr %msg288, i32 0, i32 1
  %127 = ptrtoint ptr %flags290 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags290, align 2
  %len291 = getelementptr inbounds %struct.i2c_msg, ptr %msg288, i32 0, i32 2
  %128 = ptrtoint ptr %len291 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 3, ptr %len291, align 4
  %buf292 = getelementptr inbounds %struct.i2c_msg, ptr %msg288, i32 0, i32 3
  %129 = ptrtoint ptr %buf292 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %data287, ptr %buf292, align 4
  %i2c_adap294 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call295 = call i32 @i2c_transfer(ptr noundef %i2c_adap294, ptr noundef nonnull %msg288, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg288) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data287) #5
  br label %sw.epilog475

sw.bb298:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #5
  %130 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %temp, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data299) #5
  %131 = call ptr @memcpy(ptr %data299, ptr @__const.saa7134_board_init2.data.256, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg300) #5
  %132 = getelementptr inbounds i8, ptr %msg300, i32 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %132, align 4
  %134 = ptrtoint ptr %msg300 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 9, ptr %msg300, align 4
  %flags302 = getelementptr inbounds %struct.i2c_msg, ptr %msg300, i32 0, i32 1
  %135 = ptrtoint ptr %flags302 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %flags302, align 2
  %len303 = getelementptr inbounds %struct.i2c_msg, ptr %msg300, i32 0, i32 2
  %136 = ptrtoint ptr %len303 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 3, ptr %len303, align 4
  %buf304 = getelementptr inbounds %struct.i2c_msg, ptr %msg300, i32 0, i32 3
  %137 = ptrtoint ptr %buf304 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %data299, ptr %buf304, align 4
  %i2c_adap306 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call307 = call i32 @i2c_transfer(ptr noundef %i2c_adap306, ptr noundef nonnull %msg300, i32 noundef 1) #5
  %138 = ptrtoint ptr %buf304 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %temp, ptr %buf304, align 4
  %139 = ptrtoint ptr %msg300 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 11, ptr %msg300, align 4
  %140 = ptrtoint ptr %len303 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %len303, align 4
  %call312 = call i32 @i2c_transfer(ptr noundef %i2c_adap306, ptr noundef nonnull %msg300, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call312)
  %cmp313.not = icmp eq i32 %call312, 1
  br i1 %cmp313.not, label %if.else323, label %do.end318

do.end318:                                        ; preds = %sw.bb298
  call void @__sanitizer_cov_trace_pc() #7
  %name320 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef %name320) #8
  br label %if.end344

if.else323:                                       ; preds = %sw.bb298
  %141 = ptrtoint ptr %flags302 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %flags302, align 2
  %call326 = call i32 @i2c_transfer(ptr noundef %i2c_adap306, ptr noundef nonnull %msg300, i32 noundef 1) #5
  %name331 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %142 = ptrtoint ptr %msg300 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %msg300, align 4
  %conv334 = zext i16 %143 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call326)
  %cmp335 = icmp eq i32 %call326, 1
  %cond337 = select i1 %cmp335, ptr @.str.264, ptr @.str.265
  %call338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name331, i32 noundef %conv334, ptr noundef nonnull %cond337) #8
  br i1 %cmp335, label %if.then341, label %if.else323.if.end344_crit_edge

if.else323.if.end344_crit_edge:                   ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end344

if.then341:                                       ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #7
  %has_remote342 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 11
  %144 = ptrtoint ptr %has_remote342 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %has_remote342, align 8
  br label %if.end344

if.end344:                                        ; preds = %if.then341, %if.else323.if.end344_crit_edge, %do.end318
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg300) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data299) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #5
  br label %sw.epilog475

sw.bb349:                                         ; preds = %entry.sw.bb349_crit_edge, %entry.sw.bb349_crit_edge718
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data350) #5
  %145 = call ptr @memcpy(ptr %data350, ptr @__const.saa7134_board_init2.data.266, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg351) #5
  %146 = getelementptr inbounds i8, ptr %msg351, i32 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -1, ptr %146, align 4
  %148 = ptrtoint ptr %msg351 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 8, ptr %msg351, align 4
  %flags353 = getelementptr inbounds %struct.i2c_msg, ptr %msg351, i32 0, i32 1
  %149 = ptrtoint ptr %flags353 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags353, align 2
  %len354 = getelementptr inbounds %struct.i2c_msg, ptr %msg351, i32 0, i32 2
  %150 = ptrtoint ptr %len354 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 3, ptr %len354, align 4
  %buf355 = getelementptr inbounds %struct.i2c_msg, ptr %msg351, i32 0, i32 3
  %151 = ptrtoint ptr %buf355 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %data350, ptr %buf355, align 4
  %i2c_adap357 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call358 = call i32 @i2c_transfer(ptr noundef %i2c_adap357, ptr noundef nonnull %msg351, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg351) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data350) #5
  br label %sw.epilog475

sw.bb361:                                         ; preds = %entry.sw.bb361_crit_edge, %entry.sw.bb361_crit_edge719
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data362) #5
  %152 = call ptr @memcpy(ptr %data362, ptr @__const.saa7134_board_init2.data.268, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg363) #5
  %153 = getelementptr inbounds i8, ptr %msg363, i32 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %153, align 4
  %155 = ptrtoint ptr %msg363 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 8, ptr %msg363, align 4
  %flags365 = getelementptr inbounds %struct.i2c_msg, ptr %msg363, i32 0, i32 1
  %156 = ptrtoint ptr %flags365 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %flags365, align 2
  %len366 = getelementptr inbounds %struct.i2c_msg, ptr %msg363, i32 0, i32 2
  %157 = ptrtoint ptr %len366 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 3, ptr %len366, align 4
  %buf367 = getelementptr inbounds %struct.i2c_msg, ptr %msg363, i32 0, i32 3
  %158 = ptrtoint ptr %buf367 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %data362, ptr %buf367, align 4
  %i2c_adap369 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call370 = call i32 @i2c_transfer(ptr noundef %i2c_adap369, ptr noundef nonnull %msg363, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg363) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data362) #5
  br label %sw.epilog475

sw.bb373:                                         ; preds = %entry.sw.bb373_crit_edge, %entry.sw.bb373_crit_edge720
  %autodetected374 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 5
  %159 = ptrtoint ptr %autodetected374 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %autodetected374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool375.not = icmp eq i32 %160, 0
  br i1 %tobool375.not, label %sw.bb373.sw.epilog475_crit_edge, label %lor.lhs.false

sw.bb373.sw.epilog475_crit_edge:                  ; preds = %sw.bb373
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog475

lor.lhs.false:                                    ; preds = %sw.bb373
  %arrayidx377 = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 65
  %161 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx377, align 1
  %163 = zext i8 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.306)
  switch i8 %162, label %do.end410 [
    i8 -48, label %lor.lhs.false.sw.epilog475_crit_edge
    i8 2, label %if.then388
  ]

lor.lhs.false.sw.epilog475_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog475

if.then388:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %board1 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 103, ptr %board1, align 4
  %165 = load i32, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 103, i32 6), align 4
  %tuner_type393 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %166 = ptrtoint ptr %tuner_type393 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %tuner_type393, align 8
  %167 = load i32, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 103, i32 12), align 4
  %tda9887_conf396 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 25
  %168 = ptrtoint ptr %tda9887_conf396 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %tda9887_conf396, align 4
  %name401 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %169 = load ptr, ptr getelementptr inbounds ([198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 103), align 4
  %call406 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef %name401, ptr noundef %169) #8
  br label %sw.epilog475

do.end410:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %conv378 = zext i8 %162 to i32
  %name412 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef %name412, i32 noundef %conv378) #8
  br label %sw.epilog475

sw.bb419:                                         ; preds = %entry.sw.bb419_crit_edge, %entry.sw.bb419_crit_edge721
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg420) #5
  %170 = ptrtoint ptr %msg420 to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 2814749767106560, ptr %msg420, align 8
  %buf425 = getelementptr inbounds %struct.i2c_msg, ptr %msg420, i32 0, i32 3
  %len426 = getelementptr inbounds %struct.i2c_msg, ptr %msg420, i32 0, i32 2
  %i2c_adap427 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %name436 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %171 = ptrtoint ptr %buf425 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @saa7134_board_init2.buffer, ptr %buf425, align 8
  %172 = ptrtoint ptr %len426 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 2, ptr %len426, align 4
  %call428 = call i32 @i2c_transfer(ptr noundef %i2c_adap427, ptr noundef nonnull %msg420, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call428)
  %cmp429.not = icmp eq i32 %call428, 1
  br i1 %cmp429.not, label %sw.bb419.for.inc_crit_edge, label %do.end434

sw.bb419.for.inc_crit_edge:                       ; preds = %sw.bb419
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end434:                                        ; preds = %sw.bb419
  call void @__sanitizer_cov_trace_pc() #7
  %call438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, ptr noundef %name436, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end434, %sw.bb419.for.inc_crit_edge
  %173 = ptrtoint ptr %buf425 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr getelementptr inbounds ([5 x [2 x i8]], ptr @saa7134_board_init2.buffer, i32 0, i32 1), ptr %buf425, align 8
  %174 = ptrtoint ptr %len426 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 2, ptr %len426, align 4
  %call428.1 = call i32 @i2c_transfer(ptr noundef %i2c_adap427, ptr noundef nonnull %msg420, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call428.1)
  %cmp429.not.1 = icmp eq i32 %call428.1, 1
  br i1 %cmp429.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end434.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

do.end434.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call438.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, ptr noundef %name436, i32 noundef 1) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end434.1, %for.inc.for.inc.1_crit_edge
  %175 = ptrtoint ptr %buf425 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr getelementptr inbounds ([5 x [2 x i8]], ptr @saa7134_board_init2.buffer, i32 0, i32 2), ptr %buf425, align 8
  %176 = ptrtoint ptr %len426 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 2, ptr %len426, align 4
  %call428.2 = call i32 @i2c_transfer(ptr noundef %i2c_adap427, ptr noundef nonnull %msg420, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call428.2)
  %cmp429.not.2 = icmp eq i32 %call428.2, 1
  br i1 %cmp429.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end434.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

do.end434.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call438.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, ptr noundef %name436, i32 noundef 2) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end434.2, %for.inc.1.for.inc.2_crit_edge
  %177 = ptrtoint ptr %buf425 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr getelementptr inbounds ([5 x [2 x i8]], ptr @saa7134_board_init2.buffer, i32 0, i32 3), ptr %buf425, align 8
  %178 = ptrtoint ptr %len426 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 2, ptr %len426, align 4
  %call428.3 = call i32 @i2c_transfer(ptr noundef %i2c_adap427, ptr noundef nonnull %msg420, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call428.3)
  %cmp429.not.3 = icmp eq i32 %call428.3, 1
  br i1 %cmp429.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end434.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

do.end434.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call438.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, ptr noundef %name436, i32 noundef 3) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end434.3, %for.inc.2.for.inc.3_crit_edge
  %179 = ptrtoint ptr %buf425 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr getelementptr inbounds ([5 x [2 x i8]], ptr @saa7134_board_init2.buffer, i32 0, i32 4), ptr %buf425, align 8
  %180 = ptrtoint ptr %len426 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 2, ptr %len426, align 4
  %call428.4 = call i32 @i2c_transfer(ptr noundef %i2c_adap427, ptr noundef nonnull %msg420, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call428.4)
  %cmp429.not.4 = icmp eq i32 %call428.4, 1
  br i1 %cmp429.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end434.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

do.end434.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %call438.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, ptr noundef %name436, i32 noundef 4) #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end434.4, %for.inc.3.for.inc.4_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg420) #5
  br label %sw.epilog475

sw.bb442:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data443) #5
  %181 = ptrtoint ptr %data443 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 161449489, ptr %data443, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg444) #5
  %182 = getelementptr inbounds i8, ptr %msg444, i32 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -1, ptr %182, align 4
  %184 = ptrtoint ptr %msg444 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 97, ptr %msg444, align 4
  %flags446 = getelementptr inbounds %struct.i2c_msg, ptr %msg444, i32 0, i32 1
  %185 = ptrtoint ptr %flags446 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 0, ptr %flags446, align 2
  %len447 = getelementptr inbounds %struct.i2c_msg, ptr %msg444, i32 0, i32 2
  %186 = ptrtoint ptr %len447 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 4, ptr %len447, align 4
  %buf448 = getelementptr inbounds %struct.i2c_msg, ptr %msg444, i32 0, i32 3
  %187 = ptrtoint ptr %buf448 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %data443, ptr %buf448, align 4
  %i2c_adap450 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call451 = call i32 @i2c_transfer(ptr noundef %i2c_adap450, ptr noundef nonnull %msg444, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call451)
  %cmp452.not = icmp eq i32 %call451, 1
  br i1 %cmp452.not, label %sw.bb442.if.end462_crit_edge, label %do.end457

sw.bb442.if.end462_crit_edge:                     ; preds = %sw.bb442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end462

do.end457:                                        ; preds = %sw.bb442
  call void @__sanitizer_cov_trace_pc() #7
  %name459 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef %name459) #8
  br label %if.end462

if.end462:                                        ; preds = %do.end457, %sw.bb442.if.end462_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg444) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data443) #5
  br label %sw.epilog475

do.body466:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !644
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %188 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %lmmio, align 4
  %add.ptr469 = getelementptr i32, ptr %189, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr469, i32 4194304) #5, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !645
  tail call void @arm_heavy_mb() #5
  %190 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %lmmio, align 4
  %add.ptr474 = getelementptr i32, ptr %191, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr474, i32 4194304) #5, !srcloc !541
  tail call void @saa7134_set_gpio(ptr noundef %dev, i32 noundef 27, i32 noundef 0) #5
  br label %sw.epilog475

sw.epilog475:                                     ; preds = %do.body466, %if.end462, %for.inc.4, %do.end410, %if.then388, %lor.lhs.false.sw.epilog475_crit_edge, %sw.bb373.sw.epilog475_crit_edge, %sw.bb361, %sw.bb349, %if.end344, %sw.bb286, %sw.bb274, %sw.bb262, %sw.bb255, %if.then241, %land.lhs.true235.sw.epilog475_crit_edge, %sw.bb232.sw.epilog475_crit_edge, %cleanup, %sw.bb181, %if.then164, %if.end157, %if.end, %sw.bb.sw.epilog475_crit_edge, %entry.sw.epilog475_crit_edge
  %insuspend = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 86
  %192 = ptrtoint ptr %insuspend to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %insuspend, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool476.not = icmp eq i32 %193, 0
  br i1 %tobool476.not, label %land.lhs.true477, label %sw.epilog475.if.end512_crit_edge

sw.epilog475.if.end512_crit_edge:                 ; preds = %sw.epilog475
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end512

land.lhs.true477:                                 ; preds = %sw.epilog475
  %tuner_type478 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %194 = ptrtoint ptr %tuner_type478 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tuner_type478, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %195)
  %cmp479.not = icmp eq i32 %195, 4
  br i1 %cmp479.not, label %land.lhs.true477.if.end512_crit_edge, label %if.then481

land.lhs.true477.if.end512_crit_edge:             ; preds = %land.lhs.true477
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end512

if.then481:                                       ; preds = %land.lhs.true477
  %tda9887_conf482 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 25
  %196 = ptrtoint ptr %tda9887_conf482 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tda9887_conf482, align 4
  %and = and i32 %197, 1
  %radio_type = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 22
  %198 = ptrtoint ptr %radio_type to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %radio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %199)
  %cmp483.not = icmp eq i32 %199, -1
  br i1 %cmp483.not, label %if.then481.if.end488_crit_edge, label %if.then485

if.then481.if.end488_crit_edge:                   ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end488

if.then485:                                       ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #7
  %v4l2_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3
  %i2c_adap486 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %radio_addr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 24
  %200 = ptrtoint ptr %radio_addr to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %radio_addr, align 1
  %call487 = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap486, ptr noundef nonnull @.str.284, i8 noundef zeroext %201, ptr noundef null) #5
  br label %if.end488

if.end488:                                        ; preds = %if.then485, %if.then481.if.end488_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool489.not = icmp eq i32 %and, 0
  br i1 %tobool489.not, label %if.end488.if.end495_crit_edge, label %if.then490

if.end488.if.end495_crit_edge:                    ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end495

if.then490:                                       ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #7
  %v4l2_dev491 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3
  %i2c_adap492 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call493 = call ptr @v4l2_i2c_tuner_addrs(i32 noundef 1) #5
  %call494 = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev491, ptr noundef %i2c_adap492, ptr noundef nonnull @.str.284, i8 noundef zeroext 0, ptr noundef %call493) #5
  br label %if.end495

if.end495:                                        ; preds = %if.then490, %if.end488.if.end495_crit_edge
  %tuner_addr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 23
  %202 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %tuner_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %203)
  %cmp497 = icmp eq i8 %203, -1
  br i1 %cmp497, label %if.then499, label %if.else506

if.then499:                                       ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #7
  %204 = or i32 %and, 2
  %v4l2_dev502 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3
  %i2c_adap503 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call504 = call ptr @v4l2_i2c_tuner_addrs(i32 noundef %204) #5
  %call505 = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev502, ptr noundef %i2c_adap503, ptr noundef nonnull @.str.284, i8 noundef zeroext 0, ptr noundef %call504) #5
  br label %if.end512

if.else506:                                       ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #7
  %v4l2_dev507 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3
  %i2c_adap508 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call510 = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev507, ptr noundef %i2c_adap508, ptr noundef nonnull @.str.284, i8 noundef zeroext %203, ptr noundef null) #5
  br label %if.end512

if.end512:                                        ; preds = %if.else506, %if.then499, %land.lhs.true477.if.end512_crit_edge, %sw.epilog475.if.end512_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup.i) #5
  %205 = call ptr @memset(ptr %tun_setup.i, i32 0, i32 16)
  %tuner_callback.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 4
  %206 = ptrtoint ptr %tuner_callback.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @saa7134_tuner_callback, ptr %tuner_callback.i, align 4
  %207 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %board1, align 4
  %radio_type.i = getelementptr [198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %208, i32 7
  %209 = ptrtoint ptr %radio_type.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %radio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %210)
  %cmp.not.i = icmp eq i32 %210, -1
  br i1 %cmp.not.i, label %if.end512.if.end38.i_crit_edge, label %if.then.i

if.end512.if.end38.i_crit_edge:                   ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then.i:                                        ; preds = %if.end512
  %type.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 1
  %211 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %type.i, align 4
  %radio_addr.i = getelementptr [198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %208, i32 9
  %212 = ptrtoint ptr %radio_addr.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %radio_addr.i, align 1
  %conv.i = zext i8 %213 to i16
  %214 = ptrtoint ptr %tun_setup.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv.i, ptr %tun_setup.i, align 4
  %mode_mask6.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 2
  %215 = ptrtoint ptr %mode_mask6.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 2, ptr %mode_mask6.i, align 4
  %gate_ctrl.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 101
  %216 = ptrtoint ptr %gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %gate_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %217, null
  br i1 %tobool.not.i, label %if.then.i.do.body9.i_crit_edge, label %if.then7.i

if.then.i.do.body9.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %217(ptr noundef %dev, i32 noundef 1) #5
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.then7.i, %if.then.i.do.body9.i_crit_edge
  %subdevs.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3, i32 2
  %218 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %.pn316317.i = load ptr, ptr %subdevs.i, align 4
  %cmp13.not319.i = icmp eq ptr %.pn316317.i, %subdevs.i
  br i1 %cmp13.not319.i, label %do.body9.i.do.end.i_crit_edge, label %do.body9.i.for.body.i_crit_edge

do.body9.i.for.body.i_crit_edge:                  ; preds = %do.body9.i
  br label %for.body.i

do.body9.i.do.end.i_crit_edge:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body9.i.for.body.i_crit_edge
  %.pn316320.i = phi ptr [ %.pn316.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn316317.i, %do.body9.i.for.body.i_crit_edge ]
  %__sd.0321.i = getelementptr i8, ptr %.pn316320.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn316320.i, i32 24
  %219 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %tuner.i, align 4
  %tobool15.not.i = icmp eq ptr %222, null
  br i1 %tobool15.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %s_type_addr.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %222, i32 0, i32 9
  %223 = ptrtoint ptr %s_type_addr.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %s_type_addr.i, align 4
  %tobool18.not.i = icmp eq ptr %224, null
  br i1 %tobool18.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then19.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i695 = call i32 %224(ptr noundef %__sd.0321.i, ptr noundef nonnull %tun_setup.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %225 = ptrtoint ptr %.pn316320.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %.pn316.i = load ptr, ptr %.pn316320.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn316.i, %subdevs.i
  br i1 %cmp13.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %do.body9.i.do.end.i_crit_edge
  %226 = ptrtoint ptr %gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %gate_ctrl.i, align 8
  %tobool32.not.i = icmp eq ptr %227, null
  br i1 %tobool32.not.i, label %do.end.i.if.end38.i_crit_edge, label %if.then33.i

do.end.i.if.end38.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then33.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %227(ptr noundef %dev, i32 noundef 0) #5
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then33.i, %do.end.i.if.end38.i_crit_edge, %if.end512.if.end38.i_crit_edge
  %mode_mask.0.i = phi i32 [ 6, %if.end512.if.end38.i_crit_edge ], [ 4, %if.then33.i ], [ 4, %do.end.i.if.end38.i_crit_edge ]
  %tuner_type.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %228 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tuner_type.i, align 8
  %230 = zext i32 %229 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %229, label %if.then45.i [
    i32 4, label %if.end38.i.if.end109.i_crit_edge
    i32 -1, label %if.end38.i.if.end109.i_crit_edge724
  ]

if.end38.i.if.end109.i_crit_edge724:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109.i

if.end38.i.if.end109.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109.i

if.then45.i:                                      ; preds = %if.end38.i
  %type47.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 1
  %231 = ptrtoint ptr %type47.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %229, ptr %type47.i, align 4
  %tuner_addr.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 23
  %232 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %tuner_addr.i, align 8
  %conv48.i = zext i8 %233 to i16
  %234 = ptrtoint ptr %tun_setup.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv48.i, ptr %tun_setup.i, align 4
  %235 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %board1, align 4
  %tda829x_conf.i = getelementptr [198 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %236, i32 13
  %config.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 3
  %237 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %tda829x_conf.i, ptr %config.i, align 4
  %238 = ptrtoint ptr %tuner_callback.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @saa7134_tuner_callback, ptr %tuner_callback.i, align 4
  %mode_mask53.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 2
  %239 = ptrtoint ptr %mode_mask53.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %mode_mask.0.i, ptr %mode_mask53.i, align 4
  %gate_ctrl55.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 101
  %240 = ptrtoint ptr %gate_ctrl55.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %gate_ctrl55.i, align 8
  %tobool56.not.i = icmp eq ptr %241, null
  br i1 %tobool56.not.i, label %if.then45.i.do.body60.i_crit_edge, label %if.then57.i

if.then45.i.do.body60.i_crit_edge:                ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60.i

if.then57.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %241(ptr noundef %dev, i32 noundef 1) #5
  br label %do.body60.i

do.body60.i:                                      ; preds = %if.then57.i, %if.then45.i.do.body60.i_crit_edge
  %subdevs65.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3, i32 2
  %242 = ptrtoint ptr %subdevs65.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %.pn315322.i = load ptr, ptr %subdevs65.i, align 4
  %cmp73.not324.i = icmp eq ptr %.pn315322.i, %subdevs65.i
  br i1 %cmp73.not324.i, label %do.body60.i.do.end99.i_crit_edge, label %do.body60.i.for.body76.i_crit_edge

do.body60.i.for.body76.i_crit_edge:               ; preds = %do.body60.i
  br label %for.body76.i

do.body60.i.do.end99.i_crit_edge:                 ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end99.i

for.body76.i:                                     ; preds = %for.inc91.i.for.body76.i_crit_edge, %do.body60.i.for.body76.i_crit_edge
  %.pn315325.i = phi ptr [ %.pn315.i, %for.inc91.i.for.body76.i_crit_edge ], [ %.pn315322.i, %do.body60.i.for.body76.i_crit_edge ]
  %__sd61.0326.i = getelementptr i8, ptr %.pn315325.i, i32 -80
  %ops77.i = getelementptr i8, ptr %.pn315325.i, i32 24
  %243 = ptrtoint ptr %ops77.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ops77.i, align 4
  %tuner78.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %tuner78.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %tuner78.i, align 4
  %tobool79.not.i = icmp eq ptr %246, null
  br i1 %tobool79.not.i, label %for.body76.i.for.inc91.i_crit_edge, label %land.lhs.true80.i

for.body76.i.for.inc91.i_crit_edge:               ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.i

land.lhs.true80.i:                                ; preds = %for.body76.i
  %s_type_addr83.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %246, i32 0, i32 9
  %247 = ptrtoint ptr %s_type_addr83.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %s_type_addr83.i, align 4
  %tobool84.not.i = icmp eq ptr %248, null
  br i1 %tobool84.not.i, label %land.lhs.true80.i.for.inc91.i_crit_edge, label %if.then85.i

land.lhs.true80.i.for.inc91.i_crit_edge:          ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc91.i

if.then85.i:                                      ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #7
  %call89.i = call i32 %248(ptr noundef %__sd61.0326.i, ptr noundef nonnull %tun_setup.i) #5
  br label %for.inc91.i

for.inc91.i:                                      ; preds = %if.then85.i, %land.lhs.true80.i.for.inc91.i_crit_edge, %for.body76.i.for.inc91.i_crit_edge
  %249 = ptrtoint ptr %.pn315325.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %.pn315.i = load ptr, ptr %.pn315325.i, align 4
  %cmp73.not.i = icmp eq ptr %.pn315.i, %subdevs65.i
  br i1 %cmp73.not.i, label %for.inc91.i.do.end99.i_crit_edge, label %for.inc91.i.for.body76.i_crit_edge

for.inc91.i.for.body76.i_crit_edge:               ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body76.i

for.inc91.i.do.end99.i_crit_edge:                 ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end99.i

do.end99.i:                                       ; preds = %for.inc91.i.do.end99.i_crit_edge, %do.body60.i.do.end99.i_crit_edge
  %250 = ptrtoint ptr %gate_ctrl55.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %gate_ctrl55.i, align 8
  %tobool103.not.i = icmp eq ptr %251, null
  br i1 %tobool103.not.i, label %do.end99.i.if.end109.i_crit_edge, label %if.then104.i

do.end99.i.if.end109.i_crit_edge:                 ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109.i

if.then104.i:                                     ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %251(ptr noundef %dev, i32 noundef 0) #5
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then104.i, %do.end99.i.if.end109.i_crit_edge, %if.end38.i.if.end109.i_crit_edge, %if.end38.i.if.end109.i_crit_edge724
  %tda9887_conf.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 25
  %252 = ptrtoint ptr %tda9887_conf.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %tda9887_conf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool110.not.i = icmp eq i32 %253, 0
  br i1 %tobool110.not.i, label %if.end109.i.if.end168.i_crit_edge, label %if.then111.i

if.end109.i.if.end168.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168.i

if.then111.i:                                     ; preds = %if.end109.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tda9887_cfg.i) #5
  %254 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tda9887_cfg.i, i32 0, i32 1
  %255 = ptrtoint ptr %tda9887_cfg.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 74, ptr %tda9887_cfg.i, align 4
  %256 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %tda9887_conf.i, ptr %254, align 4
  %gate_ctrl115.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 101
  %257 = ptrtoint ptr %gate_ctrl115.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %gate_ctrl115.i, align 8
  %tobool116.not.i = icmp eq ptr %258, null
  br i1 %tobool116.not.i, label %if.then111.i.do.body120.i_crit_edge, label %if.then117.i

if.then111.i.do.body120.i_crit_edge:              ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body120.i

if.then117.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %258(ptr noundef %dev, i32 noundef 1) #5
  br label %do.body120.i

do.body120.i:                                     ; preds = %if.then117.i, %if.then111.i.do.body120.i_crit_edge
  %subdevs125.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3, i32 2
  %259 = ptrtoint ptr %subdevs125.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pn314327.i = load ptr, ptr %subdevs125.i, align 4
  %cmp133.not329.i = icmp eq ptr %.pn314327.i, %subdevs125.i
  br i1 %cmp133.not329.i, label %do.body120.i.do.end158.i_crit_edge, label %do.body120.i.for.body136.i_crit_edge

do.body120.i.for.body136.i_crit_edge:             ; preds = %do.body120.i
  br label %for.body136.i

do.body120.i.do.end158.i_crit_edge:               ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end158.i

for.body136.i:                                    ; preds = %for.inc150.i.for.body136.i_crit_edge, %do.body120.i.for.body136.i_crit_edge
  %.pn314330.i = phi ptr [ %.pn314.i, %for.inc150.i.for.body136.i_crit_edge ], [ %.pn314327.i, %do.body120.i.for.body136.i_crit_edge ]
  %__sd121.0331.i = getelementptr i8, ptr %.pn314330.i, i32 -80
  %ops137.i = getelementptr i8, ptr %.pn314330.i, i32 24
  %260 = ptrtoint ptr %ops137.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ops137.i, align 4
  %tuner138.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %tuner138.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %tuner138.i, align 4
  %tobool139.not.i = icmp eq ptr %263, null
  br i1 %tobool139.not.i, label %for.body136.i.for.inc150.i_crit_edge, label %land.lhs.true140.i

for.body136.i.for.inc150.i_crit_edge:             ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc150.i

land.lhs.true140.i:                               ; preds = %for.body136.i
  %s_config.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %263, i32 0, i32 10
  %264 = ptrtoint ptr %s_config.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %s_config.i, align 4
  %tobool143.not.i = icmp eq ptr %265, null
  br i1 %tobool143.not.i, label %land.lhs.true140.i.for.inc150.i_crit_edge, label %if.then144.i

land.lhs.true140.i.for.inc150.i_crit_edge:        ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc150.i

if.then144.i:                                     ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #7
  %call148.i = call i32 %265(ptr noundef %__sd121.0331.i, ptr noundef nonnull %tda9887_cfg.i) #5
  br label %for.inc150.i

for.inc150.i:                                     ; preds = %if.then144.i, %land.lhs.true140.i.for.inc150.i_crit_edge, %for.body136.i.for.inc150.i_crit_edge
  %266 = ptrtoint ptr %.pn314330.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %.pn314.i = load ptr, ptr %.pn314330.i, align 4
  %cmp133.not.i = icmp eq ptr %.pn314.i, %subdevs125.i
  br i1 %cmp133.not.i, label %for.inc150.i.do.end158.i_crit_edge, label %for.inc150.i.for.body136.i_crit_edge

for.inc150.i.for.body136.i_crit_edge:             ; preds = %for.inc150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body136.i

for.inc150.i.do.end158.i_crit_edge:               ; preds = %for.inc150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end158.i

do.end158.i:                                      ; preds = %for.inc150.i.do.end158.i_crit_edge, %do.body120.i.do.end158.i_crit_edge
  %267 = ptrtoint ptr %gate_ctrl115.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %gate_ctrl115.i, align 8
  %tobool162.not.i = icmp eq ptr %268, null
  br i1 %tobool162.not.i, label %do.end158.i.do.end167.i_crit_edge, label %if.then163.i

do.end158.i.do.end167.i_crit_edge:                ; preds = %do.end158.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end167.i

if.then163.i:                                     ; preds = %do.end158.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %268(ptr noundef %dev, i32 noundef 0) #5
  br label %do.end167.i

do.end167.i:                                      ; preds = %if.then163.i, %do.end158.i.do.end167.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tda9887_cfg.i) #5
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end167.i, %if.end109.i.if.end168.i_crit_edge
  %269 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %tuner_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %270)
  %cmp170.i = icmp eq i32 %270, 71
  br i1 %cmp170.i, label %if.then172.i, label %if.end168.i.saa7134_tuner_setup.exit_crit_edge

if.end168.i.saa7134_tuner_setup.exit_crit_edge:   ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7134_tuner_setup.exit

if.then172.i:                                     ; preds = %if.end168.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xc2028_cfg.i) #5
  %271 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %xc2028_cfg.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctl.i) #5
  %272 = ptrtoint ptr %xc2028_cfg.i to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 304942678016, ptr %xc2028_cfg.i, align 8
  %273 = getelementptr inbounds i8, ptr %ctl.i, i32 8
  %274 = call ptr @memset(ptr %273, i32 0, i32 20)
  %275 = ptrtoint ptr %ctl.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr @.str.293, ptr %ctl.i, align 4
  %max_len.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl.i, i32 0, i32 1
  %276 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 64, ptr %max_len.i, align 4
  %277 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %board1, align 4
  %279 = zext i32 %278 to i64
  call void @__sanitizer_cov_trace_switch(i64 %279, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %278, label %sw.default.i [
    i32 137, label %if.then172.i.sw.bb.i_crit_edge
    i32 136, label %if.then172.i.sw.bb.i_crit_edge725
    i32 145, label %if.then172.i.sw.bb.i_crit_edge726
    i32 141, label %if.then172.i.sw.bb.i_crit_edge727
  ]

if.then172.i.sw.bb.i_crit_edge727:                ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then172.i.sw.bb.i_crit_edge726:                ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then172.i.sw.bb.i_crit_edge725:                ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then172.i.sw.bb.i_crit_edge:                   ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then172.i.sw.bb.i_crit_edge, %if.then172.i.sw.bb.i_crit_edge725, %if.then172.i.sw.bb.i_crit_edge726, %if.then172.i.sw.bb.i_crit_edge727
  %demod.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl.i, i32 0, i32 5
  %280 = ptrtoint ptr %demod.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 4560, ptr %demod.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #7
  %demod174.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl.i, i32 0, i32 5
  %281 = ptrtoint ptr %demod174.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 5380, ptr %demod174.i, align 4
  %mts.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl.i, i32 0, i32 4
  %282 = ptrtoint ptr %mts.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %bf.load.i = load i8, ptr %mts.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %mts.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  %283 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %ctl.i, ptr %271, align 4
  %gate_ctrl178.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 101
  %284 = ptrtoint ptr %gate_ctrl178.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %gate_ctrl178.i, align 8
  %tobool179.not.i = icmp eq ptr %285, null
  br i1 %tobool179.not.i, label %sw.epilog.i.do.body183.i_crit_edge, label %if.then180.i

sw.epilog.i.do.body183.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body183.i

if.then180.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %285(ptr noundef %dev, i32 noundef 1) #5
  br label %do.body183.i

do.body183.i:                                     ; preds = %if.then180.i, %sw.epilog.i.do.body183.i_crit_edge
  %subdevs188.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3, i32 2
  %286 = ptrtoint ptr %subdevs188.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %.pn332.i = load ptr, ptr %subdevs188.i, align 4
  %cmp196.not334.i = icmp eq ptr %.pn332.i, %subdevs188.i
  br i1 %cmp196.not334.i, label %do.body183.i.do.end222.i_crit_edge, label %do.body183.i.for.body199.i_crit_edge

do.body183.i.for.body199.i_crit_edge:             ; preds = %do.body183.i
  br label %for.body199.i

do.body183.i.do.end222.i_crit_edge:               ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end222.i

for.body199.i:                                    ; preds = %for.inc214.i.for.body199.i_crit_edge, %do.body183.i.for.body199.i_crit_edge
  %.pn335.i = phi ptr [ %.pn.i, %for.inc214.i.for.body199.i_crit_edge ], [ %.pn332.i, %do.body183.i.for.body199.i_crit_edge ]
  %__sd184.0336.i = getelementptr i8, ptr %.pn335.i, i32 -80
  %ops200.i = getelementptr i8, ptr %.pn335.i, i32 24
  %287 = ptrtoint ptr %ops200.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ops200.i, align 4
  %tuner201.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %tuner201.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %tuner201.i, align 4
  %tobool202.not.i = icmp eq ptr %290, null
  br i1 %tobool202.not.i, label %for.body199.i.for.inc214.i_crit_edge, label %land.lhs.true203.i

for.body199.i.for.inc214.i_crit_edge:             ; preds = %for.body199.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc214.i

land.lhs.true203.i:                               ; preds = %for.body199.i
  %s_config206.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %290, i32 0, i32 10
  %291 = ptrtoint ptr %s_config206.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %s_config206.i, align 4
  %tobool207.not.i = icmp eq ptr %292, null
  br i1 %tobool207.not.i, label %land.lhs.true203.i.for.inc214.i_crit_edge, label %if.then208.i

land.lhs.true203.i.for.inc214.i_crit_edge:        ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc214.i

if.then208.i:                                     ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #7
  %call212.i = call i32 %292(ptr noundef %__sd184.0336.i, ptr noundef nonnull %xc2028_cfg.i) #5
  br label %for.inc214.i

for.inc214.i:                                     ; preds = %if.then208.i, %land.lhs.true203.i.for.inc214.i_crit_edge, %for.body199.i.for.inc214.i_crit_edge
  %293 = ptrtoint ptr %.pn335.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %.pn.i = load ptr, ptr %.pn335.i, align 4
  %cmp196.not.i = icmp eq ptr %.pn.i, %subdevs188.i
  br i1 %cmp196.not.i, label %for.inc214.i.do.end222.i_crit_edge, label %for.inc214.i.for.body199.i_crit_edge

for.inc214.i.for.body199.i_crit_edge:             ; preds = %for.inc214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body199.i

for.inc214.i.do.end222.i_crit_edge:               ; preds = %for.inc214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end222.i

do.end222.i:                                      ; preds = %for.inc214.i.do.end222.i_crit_edge, %do.body183.i.do.end222.i_crit_edge
  %294 = ptrtoint ptr %gate_ctrl178.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %gate_ctrl178.i, align 8
  %tobool226.not.i = icmp eq ptr %295, null
  br i1 %tobool226.not.i, label %do.end222.i.do.end231.i_crit_edge, label %if.then227.i

do.end222.i.do.end231.i_crit_edge:                ; preds = %do.end222.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end231.i

if.then227.i:                                     ; preds = %do.end222.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %295(ptr noundef %dev, i32 noundef 0) #5
  br label %do.end231.i

do.end231.i:                                      ; preds = %if.then227.i, %do.end222.i.do.end231.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctl.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xc2028_cfg.i) #5
  br label %saa7134_tuner_setup.exit

saa7134_tuner_setup.exit:                         ; preds = %do.end231.i, %if.end168.i.saa7134_tuner_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup.i) #5
  %296 = ptrtoint ptr %board1 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %board1, align 4
  %298 = zext i32 %297 to i64
  call void @__sanitizer_cov_trace_switch(i64 %298, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %297, label %saa7134_tuner_setup.exit.sw.epilog565_crit_edge [
    i32 128, label %saa7134_tuner_setup.exit.sw.bb514_crit_edge
    i32 158, label %saa7134_tuner_setup.exit.sw.bb514_crit_edge728
  ]

saa7134_tuner_setup.exit.sw.bb514_crit_edge728:   ; preds = %saa7134_tuner_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb514

saa7134_tuner_setup.exit.sw.bb514_crit_edge:      ; preds = %saa7134_tuner_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb514

saa7134_tuner_setup.exit.sw.epilog565_crit_edge:  ; preds = %saa7134_tuner_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog565

sw.bb514:                                         ; preds = %saa7134_tuner_setup.exit.sw.bb514_crit_edge, %saa7134_tuner_setup.exit.sw.bb514_crit_edge728
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tea5767_cfg) #5
  %299 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tea5767_cfg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctl) #5
  %addr516 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 28, i32 1
  %300 = ptrtoint ptr %addr516 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 192, ptr %addr516, align 2
  %301 = ptrtoint ptr %ctl to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 3, ptr %ctl, align 8
  %302 = ptrtoint ptr %tea5767_cfg to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 62, ptr %tea5767_cfg, align 4
  %303 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %ctl, ptr %299, align 4
  %gate_ctrl = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 101
  %304 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %gate_ctrl, align 8
  %tobool518.not = icmp eq ptr %305, null
  br i1 %tobool518.not, label %sw.bb514.do.body522_crit_edge, label %if.then519

sw.bb514.do.body522_crit_edge:                    ; preds = %sw.bb514
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body522

if.then519:                                       ; preds = %sw.bb514
  call void @__sanitizer_cov_trace_pc() #7
  call void %305(ptr noundef %dev, i32 noundef 1) #5
  br label %do.body522

do.body522:                                       ; preds = %if.then519, %sw.bb514.do.body522_crit_edge
  %subdevs = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3, i32 2
  %306 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %306)
  %.pn698 = load ptr, ptr %subdevs, align 4
  %cmp530.not700 = icmp eq ptr %.pn698, %subdevs
  br i1 %cmp530.not700, label %do.body522.do.end553_crit_edge, label %do.body522.for.body532_crit_edge

do.body522.for.body532_crit_edge:                 ; preds = %do.body522
  br label %for.body532

do.body522.do.end553_crit_edge:                   ; preds = %do.body522
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end553

for.body532:                                      ; preds = %for.inc545.for.body532_crit_edge, %do.body522.for.body532_crit_edge
  %.pn701 = phi ptr [ %.pn, %for.inc545.for.body532_crit_edge ], [ %.pn698, %do.body522.for.body532_crit_edge ]
  %__sd.0702 = getelementptr i8, ptr %.pn701, i32 -80
  %ops = getelementptr i8, ptr %.pn701, i32 24
  %307 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %ops, align 4
  %tuner533 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %tuner533 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %tuner533, align 4
  %tobool534.not = icmp eq ptr %310, null
  br i1 %tobool534.not, label %for.body532.for.inc545_crit_edge, label %land.lhs.true535

for.body532.for.inc545_crit_edge:                 ; preds = %for.body532
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc545

land.lhs.true535:                                 ; preds = %for.body532
  %s_config = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %310, i32 0, i32 10
  %311 = ptrtoint ptr %s_config to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %s_config, align 4
  %tobool538.not = icmp eq ptr %312, null
  br i1 %tobool538.not, label %land.lhs.true535.for.inc545_crit_edge, label %if.then539

land.lhs.true535.for.inc545_crit_edge:            ; preds = %land.lhs.true535
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc545

if.then539:                                       ; preds = %land.lhs.true535
  call void @__sanitizer_cov_trace_pc() #7
  %call543 = call i32 %312(ptr noundef %__sd.0702, ptr noundef nonnull %tea5767_cfg) #5
  br label %for.inc545

for.inc545:                                       ; preds = %if.then539, %land.lhs.true535.for.inc545_crit_edge, %for.body532.for.inc545_crit_edge
  %313 = ptrtoint ptr %.pn701 to i32
  call void @__asan_load4_noabort(i32 %313)
  %.pn = load ptr, ptr %.pn701, align 4
  %cmp530.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp530.not, label %for.inc545.do.end553_crit_edge, label %for.inc545.for.body532_crit_edge

for.inc545.for.body532_crit_edge:                 ; preds = %for.inc545
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body532

for.inc545.do.end553_crit_edge:                   ; preds = %for.inc545
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end553

do.end553:                                        ; preds = %for.inc545.do.end553_crit_edge, %do.body522.do.end553_crit_edge
  %314 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %gate_ctrl, align 8
  %tobool557.not = icmp eq ptr %315, null
  br i1 %tobool557.not, label %do.end553.do.end562_crit_edge, label %if.then558

do.end553.do.end562_crit_edge:                    ; preds = %do.end553
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end562

if.then558:                                       ; preds = %do.end553
  call void @__sanitizer_cov_trace_pc() #7
  call void %315(ptr noundef %dev, i32 noundef 0) #5
  br label %do.end562

do.end562:                                        ; preds = %if.then558, %do.end553.do.end562_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctl) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tea5767_cfg) #5
  br label %sw.epilog565

sw.epilog565:                                     ; preds = %do.end562, %saa7134_tuner_setup.exit.sw.epilog565_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_input_init1(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef %eeprom_data) unnamed_addr #0 align 64 {
entry:
  %tv = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv) #5
  %0 = call ptr @memset(ptr %tv, i32 255, i32 68)
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tv, ptr noundef %eeprom_data) #5
  %model = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 11
  %1 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %model, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %2, label %do.end [
    i32 67019, label %entry.do.end4_crit_edge
    i32 67109, label %entry.do.end4_crit_edge11
    i32 67201, label %entry.do.end4_crit_edge12
    i32 67301, label %entry.do.end4_crit_edge13
    i32 67209, label %entry.do.end4_crit_edge14
    i32 67559, label %entry.do.end4_crit_edge15
    i32 67569, label %entry.do.end4_crit_edge16
    i32 67579, label %entry.do.end4_crit_edge17
    i32 67589, label %entry.do.end4_crit_edge18
    i32 67599, label %entry.do.end4_crit_edge19
    i32 67651, label %entry.do.end4_crit_edge20
    i32 67659, label %entry.do.end4_crit_edge21
  ]

entry.do.end4_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge20:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %name, i32 noundef %2) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge, %entry.do.end4_crit_edge11, %entry.do.end4_crit_edge12, %entry.do.end4_crit_edge13, %entry.do.end4_crit_edge14, %entry.do.end4_crit_edge15, %entry.do.end4_crit_edge16, %entry.do.end4_crit_edge17, %entry.do.end4_crit_edge18, %entry.do.end4_crit_edge19, %entry.do.end4_crit_edge20, %entry.do.end4_crit_edge21
  %name6 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef %name6, i32 noundef %5) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_tuner_addrs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !423, !424, !425, !426, !428, !430, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !482, !483, !484, !486, !487, !488, !490, !491, !492, !493, !494, !496, !497, !499, !500, !501, !503, !505, !506, !507, !509, !510, !511, !513, !515, !517, !518, !519, !520, !522, !523, !524, !525, !527, !528, !529}
!llvm.module.flags = !{!531, !532, !533, !534, !535, !536, !537, !538}
!llvm.ident = !{!539}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 28, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 29, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 30, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 31, i32 31}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 32, i32 31}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 33, i32 31}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 34, i32 31}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 35, i32 31}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 36, i32 31}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 37, i32 31}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 38, i32 31}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 39, i32 31}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 40, i32 31}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 41, i32 42}
!28 = !{ptr @saa7134_input_name, !29, !"saa7134_input_name", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 27, i32 20}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 57, i32 12}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 72, i32 12}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 99, i32 12}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 146, i32 21}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 311, i32 12}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 341, i32 21}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 367, i32 12}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 406, i32 12}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 476, i32 21}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 501, i32 21}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 536, i32 21}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 557, i32 21}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 587, i32 21}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 620, i32 21}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 646, i32 21}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 667, i32 21}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 713, i32 21}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 774, i32 21}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 837, i32 12}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 869, i32 21}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 923, i32 21}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 796, i32 21}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 952, i32 21}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 994, i32 21}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 442, i32 12}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1018, i32 21}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1047, i32 21}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1074, i32 21}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1100, i32 21}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1126, i32 21}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1147, i32 21}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1180, i32 21}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1248, i32 21}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1283, i32 21}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1314, i32 21}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1333, i32 21}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1402, i32 21}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1421, i32 21}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1446, i32 21}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 188, i32 21}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1476, i32 21}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 890, i32 21}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1512, i32 21}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1538, i32 21}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1560, i32 21}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1599, i32 21}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1672, i32 21}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1729, i32 21}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1755, i32 21}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1787, i32 12}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1822, i32 21}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1850, i32 12}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1878, i32 21}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 739, i32 21}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 216, i32 21}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1910, i32 21}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1964, i32 21}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1635, i32 21}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1990, i32 21}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2011, i32 21}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2046, i32 12}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1943, i32 21}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2079, i32 21}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2123, i32 21}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2158, i32 12}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2193, i32 21}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2228, i32 21}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2266, i32 21}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2295, i32 22}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2336, i32 21}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2359, i32 21}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2382, i32 21}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2400, i32 12}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2441, i32 12}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2474, i32 21}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2505, i32 21}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2523, i32 21}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2545, i32 27}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2576, i32 21}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2614, i32 21}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2642, i32 21}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2664, i32 21}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2693, i32 21}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2728, i32 21}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2753, i32 21}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2786, i32 21}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2806, i32 21}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2824, i32 21}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2840, i32 21}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 688, i32 21}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2900, i32 21}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2927, i32 12}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2939, i32 12}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2964, i32 21}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2972, i32 12}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3006, i32 21}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3052, i32 21}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3076, i32 21}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3094, i32 21}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3125, i32 21}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3152, i32 21}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3179, i32 21}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3213, i32 21}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3255, i32 21}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3280, i32 21}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3373, i32 21}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3397, i32 21}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3434, i32 21}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3535, i32 21}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3557, i32 21}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3586, i32 21}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3608, i32 21}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3640, i32 21}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1214, i32 12}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 2872, i32 21}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3709, i32 21}
!262 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3739, i32 21}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3769, i32 21}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3852, i32 21}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3880, i32 21}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3904, i32 21}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3932, i32 21}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3958, i32 21}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3987, i32 12}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4015, i32 12}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4048, i32 21}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4073, i32 21}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4140, i32 21}
!286 = !{ptr @.str.142, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4229, i32 21}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4261, i32 21}
!290 = !{ptr @.str.144, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4484, i32 21}
!292 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4591, i32 21}
!294 = !{ptr @.str.146, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4621, i32 12}
!296 = !{ptr @.str.147, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4656, i32 21}
!298 = !{ptr @.str.148, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4674, i32 19}
!300 = !{ptr @.str.149, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4697, i32 21}
!302 = !{ptr @.str.150, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4726, i32 21}
!304 = !{ptr @.str.151, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4752, i32 21}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4778, i32 21}
!308 = !{ptr @.str.153, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4800, i32 21}
!310 = !{ptr @.str.154, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4827, i32 21}
!312 = !{ptr @.str.155, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4846, i32 21}
!314 = !{ptr @.str.156, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4873, i32 21}
!316 = !{ptr @.str.157, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4520, i32 21}
!318 = !{ptr @.str.158, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4557, i32 21}
!320 = !{ptr @.str.159, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1299, i32 21}
!322 = !{ptr @.str.160, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3677, i32 27}
!324 = !{ptr @.str.161, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4900, i32 21}
!326 = !{ptr @.str.162, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3469, i32 21}
!328 = !{ptr @.str.163, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3784, i32 21}
!330 = !{ptr @.str.164, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4958, i32 21}
!332 = !{ptr @.str.165, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4992, i32 21}
!334 = !{ptr @.str.166, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5015, i32 21}
!336 = !{ptr @.str.167, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5048, i32 21}
!338 = !{ptr @.str.168, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5125, i32 21}
!340 = !{ptr @.str.169, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3310, i32 21}
!342 = !{ptr @.str.170, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3342, i32 21}
!344 = !{ptr @.str.171, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5157, i32 21}
!346 = !{ptr @.str.172, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1698, i32 21}
!348 = !{ptr @.str.173, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4106, i32 21}
!350 = !{ptr @.str.174, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4199, i32 21}
!352 = !{ptr @.str.175, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4288, i32 21}
!354 = !{ptr @.str.176, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4369, i32 21}
!356 = !{ptr @.str.177, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4397, i32 21}
!358 = !{ptr @.str.178, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5194, i32 12}
!360 = !{ptr @.str.179, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 1368, i32 21}
!362 = !{ptr @.str.180, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5213, i32 21}
!364 = !{ptr @.str.181, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 264, i32 12}
!366 = !{ptr @.str.182, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5239, i32 21}
!368 = !{ptr @.str.183, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5259, i32 21}
!370 = !{ptr @.str.184, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5282, i32 21}
!372 = !{ptr @.str.185, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5334, i32 19}
!374 = !{ptr @.str.186, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5350, i32 21}
!376 = !{ptr @.str.187, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5378, i32 21}
!378 = !{ptr @.str.188, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3817, i32 12}
!380 = !{ptr @.str.189, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5403, i32 21}
!382 = !{ptr @.str.190, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5084, i32 21}
!384 = !{ptr @.str.191, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5427, i32 21}
!386 = !{ptr @.str.192, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 3504, i32 21}
!388 = !{ptr @.str.193, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5457, i32 12}
!390 = !{ptr @.str.194, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5498, i32 21}
!392 = !{ptr @.str.195, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5526, i32 21}
!394 = !{ptr @.str.196, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5552, i32 12}
!396 = !{ptr @.str.197, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5573, i32 21}
!398 = !{ptr @.str.198, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 4929, i32 21}
!400 = !{ptr @.str.199, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5604, i32 19}
!402 = !{ptr @.str.200, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5619, i32 21}
!404 = !{ptr @.str.201, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5650, i32 21}
!406 = !{ptr @.str.202, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5674, i32 21}
!408 = !{ptr @.str.203, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5704, i32 21}
!410 = !{ptr @.str.204, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5739, i32 21}
!412 = !{ptr @.str.205, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5769, i32 21}
!414 = !{ptr @saa7134_boards, !415, !"saa7134_boards", i1 false, i1 false}
!415 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 55, i32 22}
!416 = !{ptr @saa7134_bcount, !417, !"saa7134_bcount", i1 false, i1 false}
!417 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5797, i32 20}
!418 = !{ptr @saa7134_pci_tbl, !419, !"saa7134_pci_tbl", i1 false, i1 false}
!419 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 5802, i32 22}
!420 = !{ptr @.str.206, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7368, i32 3}
!422 = !{ptr @.str.207, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.208, !421, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @saa7134_tuner_callback._entry, !421, !"_entry", i1 false, i1 false}
!425 = !{ptr @saa7134_tuner_callback._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @__ksymtab_saa7134_tuner_callback, !427, !"__ksymtab_saa7134_tuner_callback", i1 false, i1 false}
!427 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7373, i32 1}
!428 = !{ptr @.str.209, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7415, i32 2}
!430 = !{ptr @.str.210, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @saa7134_board_init1._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @saa7134_board_init1._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.212, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7502, i32 3}
!435 = !{ptr @saa7134_board_init1._entry.211, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @saa7134_board_init1._entry_ptr.213, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.215, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7631, i32 3}
!439 = !{ptr @saa7134_board_init1._entry.214, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @saa7134_board_init1._entry_ptr.216, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.217, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7780, i32 3}
!443 = !{ptr @.str.218, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @saa7134_board_init2._entry, !442, !"_entry", i1 false, i1 false}
!445 = !{ptr @saa7134_board_init2._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.220, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7802, i32 4}
!448 = !{ptr @saa7134_board_init2._entry.219, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @saa7134_board_init2._entry_ptr.221, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.223, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7817, i32 5}
!452 = !{ptr @saa7134_board_init2._entry.222, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @saa7134_board_init2._entry_ptr.224, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.226, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7835, i32 5}
!456 = !{ptr @saa7134_board_init2._entry.225, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @saa7134_board_init2._entry_ptr.227, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @saa7134_board_init2._entry.228, !459, !"_entry", i1 false, i1 false}
!459 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7839, i32 5}
!460 = !{ptr @saa7134_board_init2._entry_ptr.229, !459, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.231, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7843, i32 4}
!463 = !{ptr @saa7134_board_init2._entry.230, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @saa7134_board_init2._entry_ptr.232, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.234, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7846, i32 3}
!467 = !{ptr @saa7134_board_init2._entry.233, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @saa7134_board_init2._entry_ptr.235, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.237, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7855, i32 5}
!471 = !{ptr @saa7134_board_init2._entry.236, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @saa7134_board_init2._entry_ptr.238, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.240, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7864, i32 4}
!475 = !{ptr @saa7134_board_init2._entry.239, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @saa7134_board_init2._entry_ptr.241, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @saa7134_board_init2._entry.245, !478, !"_entry", i1 false, i1 false}
!478 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7892, i32 4}
!479 = !{ptr @saa7134_board_init2._entry_ptr.246, !478, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.248, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7909, i32 4}
!482 = !{ptr @saa7134_board_init2._entry.247, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @saa7134_board_init2._entry_ptr.249, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.259, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7978, i32 4}
!486 = !{ptr @saa7134_board_init2._entry.258, !485, !"_entry", i1 false, i1 false}
!487 = !{ptr @saa7134_board_init2._entry_ptr.260, !485, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @.str.262, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7983, i32 4}
!490 = !{ptr @saa7134_board_init2._entry.261, !489, !"_entry", i1 false, i1 false}
!491 = !{ptr @saa7134_board_init2._entry_ptr.263, !489, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.264, !489, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @.str.265, !489, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @saa7134_board_init2._entry.270, !495, !"_entry", i1 false, i1 false}
!495 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 8024, i32 4}
!496 = !{ptr @saa7134_board_init2._entry_ptr.271, !495, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.273, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 8027, i32 4}
!499 = !{ptr @saa7134_board_init2._entry.272, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @saa7134_board_init2._entry_ptr.274, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @saa7134_board_init2.buffer, !502, !"buffer", i1 false, i1 false}
!502 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 8037, i32 13}
!503 = !{ptr @.str.277, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 8049, i32 5}
!505 = !{ptr @saa7134_board_init2._entry.276, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @saa7134_board_init2._entry_ptr.278, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.282, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 8066, i32 4}
!509 = !{ptr @saa7134_board_init2._entry.281, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @saa7134_board_init2._entry_ptr.283, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.284, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 8086, i32 21}
!513 = !{ptr @aver_a706_std_map, !514, !"aver_a706_std_map", i1 false, i1 false}
!514 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 47, i32 32}
!515 = !{ptr @.str.286, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7126, i32 2}
!517 = !{ptr @.str.287, !516, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @board_flyvideo._entry, !516, !"_entry", i1 false, i1 false}
!519 = !{ptr @board_flyvideo._entry_ptr, !516, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.288, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7399, i32 3}
!522 = !{ptr @.str.289, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @hauppauge_eeprom._entry, !521, !"_entry", i1 false, i1 false}
!524 = !{ptr @hauppauge_eeprom._entry_ptr, !521, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.291, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7404, i32 2}
!527 = !{ptr @hauppauge_eeprom._entry.290, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @hauppauge_eeprom._entry_ptr.292, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.293, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/pci/saa7134/saa7134-cards.c", i32 7731, i32 17}
!531 = !{i32 1, !"wchar_size", i32 2}
!532 = !{i32 1, !"min_enum_size", i32 4}
!533 = !{i32 8, !"branch-target-enforcement", i32 0}
!534 = !{i32 8, !"sign-return-address", i32 0}
!535 = !{i32 8, !"sign-return-address-all", i32 0}
!536 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!537 = !{i32 7, !"uwtable", i32 1}
!538 = !{i32 7, !"frame-pointer", i32 2}
!539 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!540 = !{i64 2159053422}
!541 = !{i64 5223567}
!542 = !{i64 2159053920}
!543 = !{i64 2159054420}
!544 = !{i64 2159054923}
!545 = !{i64 2159055426}
!546 = !{i64 2159055929}
!547 = !{i64 2159049693}
!548 = !{i64 5223765}
!549 = !{i64 2159049872}
!550 = !{i64 5223370}
!551 = !{i64 2159050737}
!552 = !{i64 2159050916}
!553 = !{i64 2159051294}
!554 = !{i64 2159051667}
!555 = !{i64 2159052523}
!556 = !{i64 2159052702}
!557 = !{i64 2159028709}
!558 = !{i64 5223985}
!559 = !{i64 2159029758}
!560 = !{i64 2159031027}
!561 = !{i64 2159032076}
!562 = !{i64 2159032461}
!563 = !{i64 2159032802}
!564 = !{i64 2159034064}
!565 = !{i64 2159035113}
!566 = !{i64 2159036382}
!567 = !{i64 2159037431}
!568 = !{i64 2159038727}
!569 = !{i64 2159039768}
!570 = !{i64 2159040983}
!571 = !{i64 2159041996}
!572 = !{i64 2159043247}
!573 = !{i64 2159044296}
!574 = !{i64 2159045529}
!575 = !{i64 2159046542}
!576 = !{i64 2159047793}
!577 = !{i64 2159048842}
!578 = !{i64 2159063537}
!579 = !{i64 2159064297}
!580 = !{i64 2159066594}
!581 = !{i64 2159066935}
!582 = !{i64 2159071265}
!583 = !{i64 2159072314}
!584 = !{i64 2159073583}
!585 = !{i64 2159074632}
!586 = !{i64 2159074983}
!587 = !{i64 2159075324}
!588 = !{i64 2159076589}
!589 = !{i64 2159077638}
!590 = !{i64 2159078907}
!591 = !{i64 2159079956}
!592 = !{i64 2159080307}
!593 = !{i64 2159080648}
!594 = !{i64 2159081916}
!595 = !{i64 2159082965}
!596 = !{i64 2159084234}
!597 = !{i64 2159085283}
!598 = !{i64 2159086541}
!599 = !{i64 2159087572}
!600 = !{i64 2159088814}
!601 = !{i64 2159089845}
!602 = !{i64 2159091105}
!603 = !{i64 2159092154}
!604 = !{i64 2159093423}
!605 = !{i64 2159094472}
!606 = !{i64 2159095745}
!607 = !{i64 2159096794}
!608 = !{i64 2159098045}
!609 = !{i64 2159099076}
!610 = !{i64 2159100336}
!611 = !{i64 2159101385}
!612 = !{i64 2159102654}
!613 = !{i64 2159103703}
!614 = !{i64 2159104994}
!615 = !{i64 2159106043}
!616 = !{i64 2159107294}
!617 = !{i64 2159108325}
!618 = !{i64 2159109585}
!619 = !{i64 2159110634}
!620 = !{i64 2159111903}
!621 = !{i64 2159112952}
!622 = !{i64 2159113305}
!623 = !{i64 2159117799}
!624 = !{i64 2159118848}
!625 = !{i64 2159120117}
!626 = !{i64 2159121166}
!627 = !{i64 2159122443}
!628 = !{i64 2159123492}
!629 = !{i64 2159124761}
!630 = !{i64 2159125810}
!631 = !{i64 2159127091}
!632 = !{i64 2159128140}
!633 = !{i64 2159129409}
!634 = !{i64 2159130458}
!635 = !{i64 2159131737}
!636 = !{i64 2159132786}
!637 = !{i64 2159134055}
!638 = !{i64 2159135104}
!639 = !{i64 2159136377}
!640 = !{i64 2159137426}
!641 = !{i64 2159138695}
!642 = !{i64 2159139744}
!643 = !{!"auto-init"}
!644 = !{i64 2159189678}
!645 = !{i64 2159190176}
