; ModuleID = '/llk/IR_all_yes/drivers/staging/media/zoran/zoran_card.c_pt.bc'
source_filename = "../drivers/staging/media/zoran/zoran_card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zoran_format = type { ptr, i32, i32, i32, i32, i32 }
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.tvnorm = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.input = type { i32, [32 x i8] }
%struct.vfe_polarity = type { i8, [3 x i8] }
%struct.card_info = type { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, [16 x %struct.input], i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.videocodec = type { ptr, [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.videocodec_master = type { [32 x i8], i32, i32, i32, ptr, ptr, ptr }
%struct.zoran = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.vb2_queue, %struct.i2c_adapter, %struct.i2c_algo_bit_data, i32, ptr, ptr, ptr, ptr, %struct.mutex, i8, %struct.card_info, ptr, i16, [32 x i8], ptr, i8, ptr, %struct.spinlock, i32, i64, i32, %struct.zoran_v4l_settings, i32, %struct.zoran_jpg_settings, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.list_head, %struct.spinlock, [8 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.zoran_v4l_settings = type { i32, i32, i32, ptr }
%struct.zoran_jpg_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_jpegcompression }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_card = internal constant [13 x i8] c"zr36067.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype300 = internal constant [35 x i8] c"zr36067.parmtype=card:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_card301 = internal constant [28 x i8] c"zr36067.parm=card:Card type\00", section ".modinfo", align 1
@__param_str_vidmem = internal constant [15 x i8] c"zr36067.vidmem\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@vidmem = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vidmem = internal constant %struct.kernel_param { ptr @__param_str_vidmem, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 2, %union.anon.76 { ptr @vidmem } }, section "__param", align 4
@__UNIQUE_ID_vidmemtype302 = internal constant [30 x i8] c"zr36067.parmtype=vidmem:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_vidmem303 = internal constant [54 x i8] c"zr36067.parm=vidmem:Default video memory base address\00", section ".modinfo", align 1
@__param_str_default_input = internal constant [22 x i8] c"zr36067.default_input\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@default_input = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_default_input = internal constant %struct.kernel_param { ptr @__param_str_default_input, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @default_input } }, section "__param", align 4
@__UNIQUE_ID_default_inputtype304 = internal constant [36 x i8] c"zr36067.parmtype=default_input:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_default_input305 = internal constant [78 x i8] c"zr36067.parm=default_input:Default input (0=Composite, 1=S-Video, 2=Internal)\00", section ".modinfo", align 1
@__param_str_default_mux = internal constant [20 x i8] c"zr36067.default_mux\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@default_mux = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_default_mux = internal constant %struct.kernel_param { ptr @__param_str_default_mux, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @default_mux } }, section "__param", align 4
@__UNIQUE_ID_default_muxtype306 = internal constant [33 x i8] c"zr36067.parmtype=default_mux:int\00", section ".modinfo", align 1
@__UNIQUE_ID_default_mux307 = internal constant [70 x i8] c"zr36067.parm=default_mux:Default 6 Eyes mux setting (Input selection)\00", section ".modinfo", align 1
@__param_str_default_norm = internal constant [21 x i8] c"zr36067.default_norm\00", align 1
@default_norm = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_default_norm = internal constant %struct.kernel_param { ptr @__param_str_default_norm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @default_norm } }, section "__param", align 4
@__UNIQUE_ID_default_normtype308 = internal constant [34 x i8] c"zr36067.parmtype=default_norm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_default_norm309 = internal constant [64 x i8] c"zr36067.parm=default_norm:Default norm (0=PAL, 1=NTSC, 2=SECAM)\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [17 x i8] c"zr36067.video_nr\00", align 1
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype310 = internal constant [39 x i8] c"zr36067.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr311 = internal constant [52 x i8] c"zr36067.parm=video_nr:Video device number (-1=Auto)\00", section ".modinfo", align 1
@v4l_nbufs = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@v4l_bufsize = dso_local global { i32, [28 x i8] } { i32 864, [28 x i8] zeroinitializer }, align 32
@__param_str_v4l_nbufs = internal constant [18 x i8] c"zr36067.v4l_nbufs\00", align 1
@__param_v4l_nbufs = internal constant %struct.kernel_param { ptr @__param_str_v4l_nbufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @v4l_nbufs } }, section "__param", align 4
@__UNIQUE_ID_v4l_nbufstype312 = internal constant [31 x i8] c"zr36067.parmtype=v4l_nbufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_v4l_nbufs313 = internal constant [60 x i8] c"zr36067.parm=v4l_nbufs:Maximum number of V4L buffers to use\00", section ".modinfo", align 1
@__param_str_v4l_bufsize = internal constant [20 x i8] c"zr36067.v4l_bufsize\00", align 1
@__param_v4l_bufsize = internal constant %struct.kernel_param { ptr @__param_str_v4l_bufsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @v4l_bufsize } }, section "__param", align 4
@__UNIQUE_ID_v4l_bufsizetype314 = internal constant [33 x i8] c"zr36067.parmtype=v4l_bufsize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_v4l_bufsize315 = internal constant [61 x i8] c"zr36067.parm=v4l_bufsize:Maximum size per V4L buffer (in kB)\00", section ".modinfo", align 1
@jpg_nbufs = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@jpg_bufsize = dso_local global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_str_jpg_nbufs = internal constant [18 x i8] c"zr36067.jpg_nbufs\00", align 1
@__param_jpg_nbufs = internal constant %struct.kernel_param { ptr @__param_str_jpg_nbufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @jpg_nbufs } }, section "__param", align 4
@__UNIQUE_ID_jpg_nbufstype316 = internal constant [31 x i8] c"zr36067.parmtype=jpg_nbufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_jpg_nbufs317 = internal constant [60 x i8] c"zr36067.parm=jpg_nbufs:Maximum number of JPG buffers to use\00", section ".modinfo", align 1
@__param_str_jpg_bufsize = internal constant [20 x i8] c"zr36067.jpg_bufsize\00", align 1
@__param_jpg_bufsize = internal constant %struct.kernel_param { ptr @__param_str_jpg_bufsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @jpg_bufsize } }, section "__param", align 4
@__UNIQUE_ID_jpg_bufsizetype318 = internal constant [33 x i8] c"zr36067.parmtype=jpg_bufsize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_jpg_bufsize319 = internal constant [61 x i8] c"zr36067.parm=jpg_bufsize:Maximum size per JPG buffer (in kB)\00", section ".modinfo", align 1
@__param_str_pass_through = internal constant [21 x i8] c"zr36067.pass_through\00", align 1
@pass_through = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pass_through = internal constant %struct.kernel_param { ptr @__param_str_pass_through, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @pass_through } }, section "__param", align 4
@__UNIQUE_ID_pass_throughtype320 = internal constant [34 x i8] c"zr36067.parmtype=pass_through:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pass_through321 = internal constant [71 x i8] c"zr36067.parm=pass_through:Pass TV signal through to TV-out when idling\00", section ".modinfo", align 1
@zr36067_debug = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"zr36067.debug\00", align 1
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @zr36067_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype322 = internal constant [27 x i8] c"zr36067.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug323 = internal constant [37 x i8] c"zr36067.parm=debug:Debug level (0-5)\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [56 x i8] c"zr36067.description=Zoran-36057/36067 JPEG codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author325 = internal constant [33 x i8] c"zr36067.author=Serguei Miridonov\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [49 x i8] c"zr36067.file=drivers/staging/media/zoran/zr36067\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [20 x i8] c"zr36067.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version328 = internal constant [23 x i8] c"zr36067.version=0.10.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zr36067\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.10.1\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@zoran_check_jpg_settings.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zoran_check_jpg_settings\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/zoran/zoran_card.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - dec: %d, Hdcm: %d, Vdcm: %d, Tdcm: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@zoran_check_jpg_settings.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - x: %d, y: %d, w: %d, y: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@zoran_check_jpg_settings.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - HDec by 4 is not supported on the DC10\0A\00", [51 x i8] zeroinitializer }, align 32
@zoran_check_jpg_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 774, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - error in params for decimation = 0\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zoran_check_jpg_settings._entry_ptr = internal global ptr @zoran_check_jpg_settings._entry, section ".printk_index", align 4
@zoran_check_jpg_settings._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 780, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - decimation = %d, must be 0, 1, 2 or 4\0A\00", [52 x i8] zeroinitializer }, align 32
@zoran_check_jpg_settings._entry_ptr.13 = internal global ptr @zoran_check_jpg_settings._entry.11, section ".printk_index", align 4
@zoran_formats = external dso_local constant [0 x %struct.zoran_format], align 4
@zoran_open_init_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 834, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s internal error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zoran_open_init_params\00", [41 x i8] zeroinitializer }, align 32
@zoran_open_init_params._entry_ptr = internal global ptr @zoran_open_init_params._entry, section ".printk_index", align 4
@zoran_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @zr36067_pci_tbl, ptr @zoran_probe, ptr @zoran_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_zr36067__360_1333_zoran_init6 = internal global ptr @zoran_init, section ".initcall6.init", align 4
@__exitcall_zoran_exit = internal global ptr @zoran_exit, section ".exitcall.exit", align 4
@card = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@video_nr = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@zr36067_pci_tbl = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4574, i32 24663, i32 4145, i32 32510, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4574, i32 24663, i32 4145, i32 55297, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4574, i32 24663, i32 4856, i32 35330, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4574, i32 24663, i32 5066, i32 16945, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4574, i32 24663, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@zoran_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@zoran_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1077, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"driver limited to %d card(s) maximum\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zoran_probe\00", [20 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr = internal global ptr @zoran_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MJPEG[%u]\00", [22 x i8] zeroinitializer }, align 32
@zoran_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"zoran_card:1091:(&zr->hdl)->_lock\00", [62 x i8] zeroinitializer }, align 32
@zoran_video_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @zoran_video_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@zoran_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&zr->spinlock\00", [18 x i8] zeroinitializer }, align 32
@zoran_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&zr->lock\00", [22 x i8] zeroinitializer }, align 32
@zoran_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.4, i32 1105, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Zoran ZR360%c7 (rev %d), irq: %d, memory: 0x%08llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.26 = internal global ptr @zoran_probe._entry.23, section ".printk_index", align 4
@zoran_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.4, i32 1108, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Subsystem vendor=0x%04x id=0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.29 = internal global ptr @zoran_probe._entry.27, section ".printk_index", align 4
@zoran_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.4, i32 1113, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"No card type specified, please use the card=X module parameter\0A\00", [32 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.32 = internal global ptr @zoran_probe._entry.30, section ".printk_index", align 4
@zoran_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.4, i32 1114, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"It is not possible to auto-detect ZR36057 based cards\0A\00", [41 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.35 = internal global ptr @zoran_probe._entry.33, section ".printk_index", align 4
@zoran_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.17, ptr @.str.4, i32 1120, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unknown card, try specifying card=X module parameter\0A\00", [42 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.38 = internal global ptr @zoran_probe._entry.36, section ".printk_index", align 4
@zoran_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.17, ptr @.str.4, i32 1123, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() - card %s detected\0A\00", [39 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.41 = internal global ptr @zoran_probe._entry.39, section ".printk_index", align 4
@zoran_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.17, ptr @.str.4, i32 1128, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"User specified card type %d out of range (0 .. %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.44 = internal global ptr @zoran_probe._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s[%u]\00", [25 x i8] zeroinitializer }, align 32
@zoran_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.17, ptr @.str.4, i32 1150, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() - ioremap failed\0A\00", [41 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.48 = internal global ptr @zoran_probe._entry.46, section ".printk_index", align 4
@zoran_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.17, ptr @.str.4, i32 1157, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - bad IRQ number or handler\0A\00", [32 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.51 = internal global ptr @zoran_probe._entry.49, section ".printk_index", align 4
@zoran_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.17, ptr @.str.4, i32 1160, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s - IRQ %d busy, change your PnP config in BIOS\0A\00", [46 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.54 = internal global ptr @zoran_probe._entry.52, section ".printk_index", align 4
@zoran_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.17, ptr @.str.4, i32 1162, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - cannot assign IRQ, error code %d\0A\00", [57 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.57 = internal global ptr @zoran_probe._entry.55, section ".printk_index", align 4
@zoran_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.17, ptr @.str.4, i32 1172, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Changing PCI latency from %d to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.60 = internal global ptr @zoran_probe._entry.58, section ".printk_index", align 4
@zoran_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.17, ptr @.str.4, i32 1178, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Initializing i2c bus...\0A\00", [39 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.63 = internal global ptr @zoran_probe._entry.61, section ".printk_index", align 4
@zoran_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.17, ptr @.str.4, i32 1181, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - can't initialize i2c bus\0A\00", [33 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.66 = internal global ptr @zoran_probe._entry.64, section ".printk_index", align 4
@zoran_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.17, ptr @.str.4, i32 1194, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initializing videocodec bus...\0A\00", [32 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.69 = internal global ptr @zoran_probe._entry.67, section ".printk_index", align 4
@zoran_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.17, ptr @.str.4, i32 1201, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to load modules %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.72 = internal global ptr @zoran_probe._entry.70, section ".printk_index", align 4
@zoran_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.17, ptr @.str.4, i32 1209, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.74 = internal global ptr @zoran_probe._entry.73, section ".printk_index", align 4
@zoran_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.17, ptr @.str.4, i32 1224, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - no codec found\0A\00", [43 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.77 = internal global ptr @zoran_probe._entry.75, section ".printk_index", align 4
@zoran_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.17, ptr @.str.4, i32 1228, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - wrong codec\0A\00", [46 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.80 = internal global ptr @zoran_probe._entry.78, section ".printk_index", align 4
@zoran_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.17, ptr @.str.4, i32 1238, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - no VFE found\0A\00", [45 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.83 = internal global ptr @zoran_probe._entry.81, section ".printk_index", align 4
@zoran_probe._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.17, ptr @.str.4, i32 1242, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s = wrong VFE\0A\00", [16 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.86 = internal global ptr @zoran_probe._entry.84, section ".printk_index", align 4
@pci_pci_problems = external dso_local local_unnamed_addr global i32, align 4
@zoran_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.17, ptr @.str.4, i32 1249, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ZR36057/Natoma bug, max. buffer size is 128K\0A\00", [50 x i8] zeroinitializer }, align 32
@zoran_probe._entry_ptr.89 = internal global ptr @zoran_probe._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpx3220a\00", [23 x i8] zeroinitializer }, align 32
@vpx3220_addrs = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 67, i16 71, i16 -2], [26 x i8] zeroinitializer }, align 32
@f50sqpixel_dc10 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 944, i16 768, i16 0, i16 880, i16 625, i16 576, i16 0 }, [18 x i8] zeroinitializer }, align 32
@f60sqpixel_dc10 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 780, i16 640, i16 0, i16 716, i16 525, i16 480, i16 12 }, [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7110\00", [24 x i8] zeroinitializer }, align 32
@saa7110_addrs = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 78, i16 79, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7175\00", [24 x i8] zeroinitializer }, align 32
@adv717x_addrs = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 106, i16 107, i16 42, i16 43, i16 -2], [22 x i8] zeroinitializer }, align 32
@f50sqpixel = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 944, i16 768, i16 83, i16 880, i16 625, i16 576, i16 16 }, [18 x i8] zeroinitializer }, align 32
@f60sqpixel = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 780, i16 640, i16 51, i16 716, i16 525, i16 480, i16 12 }, [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt819a\00", [25 x i8] zeroinitializer }, align 32
@bt819_addrs = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 69, i16 -2], [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt856\00", [26 x i8] zeroinitializer }, align 32
@bt856_addrs = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 68, i16 -2], [28 x i8] zeroinitializer }, align 32
@f50ccir601_lml33 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 864, i16 720, i16 109, i16 804, i16 625, i16 576, i16 18 }, [18 x i8] zeroinitializer }, align 32
@f60ccir601_lml33 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 858, i16 720, i16 91, i16 788, i16 525, i16 480, i16 16 }, [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7114\00", [24 x i8] zeroinitializer }, align 32
@saa7114_addrs = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 33, i16 32, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7170\00", [24 x i8] zeroinitializer }, align 32
@f50ccir601_lm33r10 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 864, i16 720, i16 128, i16 804, i16 625, i16 576, i16 18 }, [18 x i8] zeroinitializer }, align 32
@f60ccir601_lm33r10 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 858, i16 720, i16 110, i16 788, i16 525, i16 480, i16 16 }, [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7111\00", [24 x i8] zeroinitializer }, align 32
@saa7111_addrs = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 37, i16 36, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7185\00", [24 x i8] zeroinitializer }, align 32
@saa7185_addrs = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 68, i16 -2], [28 x i8] zeroinitializer }, align 32
@f50ccir601 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 864, i16 720, i16 75, i16 804, i16 625, i16 576, i16 18 }, [18 x i8] zeroinitializer }, align 32
@f60ccir601 = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 858, i16 720, i16 57, i16 788, i16 525, i16 480, i16 16 }, [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks0127\00", [25 x i8] zeroinitializer }, align 32
@ks0127_addrs = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 108, i16 109, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt866\00", [26 x i8] zeroinitializer }, align 32
@bt866_addrs = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 68, i16 -2], [28 x i8] zeroinitializer }, align 32
@f50ccir601_avs6eyes = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 864, i16 720, i16 74, i16 804, i16 625, i16 576, i16 18 }, [18 x i8] zeroinitializer }, align 32
@f60ccir601_avs6eyes = internal constant { %struct.tvnorm, [18 x i8] } { %struct.tvnorm { i16 858, i16 720, i16 56, i16 788, i16 525, i16 480, i16 16 }, [18 x i8] zeroinitializer }, align 32
@zoran_cards = internal global { <{ { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, %struct.card_info }>, [1568 x i8] } { <{ { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }, %struct.card_info }> <{ { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 0, [32 x i8] c"DC10(old)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.90, ptr @vpx3220_addrs, ptr null, ptr null, i16 3, i16 2, i16 0, i32 3, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }> <{ %struct.input { i32 1, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 2, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 0, [32 x i8] c"Internal/comp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [13 x %struct.input] zeroinitializer }>, i64 16756991, [3 x ptr] [ptr @f50sqpixel_dc10, ptr @f60sqpixel_dc10, ptr @f50sqpixel_dc10], i32 0, i32 1073741824, [8 x i8] c"\02\01\FF\03\07\00\04\05", [2 x i8] c"\FF\00", [2 x i8] undef, %struct.vfe_polarity { i8 0, [3 x i8] undef }, [8 x i8] c"\00\00\00\01\00\00\00\00", i8 0, i8 0, ptr @dc10_init }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 1, [32 x i8] c"DC10(new)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.91, ptr @saa7110_addrs, ptr @.str.92, ptr @adv717x_addrs, i16 0, i16 4, i16 0, i32 3, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }> <{ %struct.input { i32 0, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 7, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 5, [32 x i8] c"Internal/comp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [13 x %struct.input] zeroinitializer }>, i64 16756991, [3 x ptr] [ptr @f50sqpixel, ptr @f60sqpixel, ptr @f50sqpixel], i32 536870912, i32 1073741824, [8 x i8] c"\03\00\06\01\02\FF\04\05", [2 x i8] c"\FF\01", [2 x i8] undef, %struct.vfe_polarity { i8 -16, [3 x i8] undef }, [8 x i8] zeroinitializer, i8 0, i8 0, ptr @dc10plus_init }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 2, [32 x i8] c"DC10_PLUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.91, ptr @saa7110_addrs, ptr @.str.92, ptr @adv717x_addrs, i16 0, i16 4, i16 0, i32 3, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }> <{ %struct.input { i32 0, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 7, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 5, [32 x i8] c"Internal/comp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [13 x %struct.input] zeroinitializer }>, i64 16756991, [3 x ptr] [ptr @f50sqpixel, ptr @f60sqpixel, ptr @f50sqpixel], i32 536870912, i32 1073741824, [8 x i8] c"\03\00\06\01\02\FF\04\05", [2 x i8] c"\FF\01", [2 x i8] undef, %struct.vfe_polarity { i8 -16, [3 x i8] undef }, [8 x i8] zeroinitializer, i8 0, i8 0, ptr @dc10plus_init }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 3, [32 x i8] c"DC30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.90, ptr @vpx3220_addrs, ptr @.str.92, ptr @adv717x_addrs, i16 3, i16 2, i16 0, i32 3, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }> <{ %struct.input { i32 1, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 2, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 0, [32 x i8] c"Internal/comp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [13 x %struct.input] zeroinitializer }>, i64 16756991, [3 x ptr] [ptr @f50sqpixel_dc10, ptr @f60sqpixel_dc10, ptr @f50sqpixel_dc10], i32 0, i32 1073741824, [8 x i8] c"\02\01\FF\03\07\00\04\05", [2 x i8] c"\FF\00", [2 x i8] undef, %struct.vfe_polarity { i8 0, [3 x i8] undef }, [8 x i8] c"\00\00\00\01\00\00\00\00", i8 0, i8 0, ptr @dc10_init }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 4, [32 x i8] c"DC30_PLUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.90, ptr @vpx3220_addrs, ptr @.str.92, ptr @adv717x_addrs, i16 3, i16 2, i16 0, i32 3, <{ %struct.input, %struct.input, %struct.input, [13 x %struct.input] }> <{ %struct.input { i32 1, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 2, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 0, [32 x i8] c"Internal/comp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [13 x %struct.input] zeroinitializer }>, i64 16756991, [3 x ptr] [ptr @f50sqpixel_dc10, ptr @f60sqpixel_dc10, ptr @f50sqpixel_dc10], i32 0, i32 1073741824, [8 x i8] c"\02\01\FF\03\07\00\04\05", [2 x i8] c"\FF\00", [2 x i8] undef, %struct.vfe_polarity { i8 0, [3 x i8] undef }, [8 x i8] c"\00\00\00\01\00\00\00\00", i8 0, i8 0, ptr @dc10_init }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 5, [32 x i8] c"LML33\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.93, ptr @bt819_addrs, ptr @.str.94, ptr @bt856_addrs, i16 0, i16 4, i16 0, i32 2, <{ %struct.input, %struct.input, [14 x %struct.input] }> <{ %struct.input { i32 0, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 7, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [14 x %struct.input] zeroinitializer }>, i64 45311, [3 x ptr] [ptr @f50ccir601_lml33, ptr @f60ccir601_lml33, ptr null], i32 1073741824, i32 536870912, [8 x i8] c"\01\FF\03\05\07\FF\FF\FF", [2 x i8] c"\03\01", [2 x i8] undef, %struct.vfe_polarity { i8 -60, [3 x i8] undef }, [8 x i8] c"\00\00\00\00\01\00\00\00", i8 1, i8 0, ptr @lml33_init }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 6, [32 x i8] c"LML33R10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.95, ptr @saa7114_addrs, ptr @.str.96, ptr @adv717x_addrs, i16 0, i16 4, i16 0, i32 2, <{ %struct.input, %struct.input, [14 x %struct.input] }> <{ %struct.input { i32 0, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 7, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [14 x %struct.input] zeroinitializer }>, i64 45311, [3 x ptr] [ptr @f50ccir601_lm33r10, ptr @f60ccir601_lm33r10, ptr null], i32 1073741824, i32 536870912, [8 x i8] c"\01\FF\03\05\07\FF\FF\FF", [2 x i8] c"\03\01", [2 x i8] undef, %struct.vfe_polarity { i8 -60, [3 x i8] undef }, [8 x i8] c"\00\00\00\00\01\00\00\00", i8 1, i8 0, ptr @lml33_init }, { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, <{ %struct.input, %struct.input, [14 x %struct.input] }>, i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr } { i32 7, [32 x i8] c"Buz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.97, ptr @saa7111_addrs, ptr @.str.98, ptr @saa7185_addrs, i16 0, i16 4, i16 0, i32 2, <{ %struct.input, %struct.input, [14 x %struct.input] }> <{ %struct.input { i32 3, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 7, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [14 x %struct.input] zeroinitializer }>, i64 16756991, [3 x ptr] [ptr @f50ccir601, ptr @f60ccir601, ptr @f50ccir601], i32 1073741824, i32 536870912, [8 x i8] c"\01\FF\03\FF\FF\FF\FF\FF", [2 x i8] c"\03\01", [2 x i8] undef, %struct.vfe_polarity { i8 -60, [3 x i8] undef }, [8 x i8] zeroinitializer, i8 1, i8 0, ptr @buz_init }, %struct.card_info { i32 8, [32 x i8] c"6-Eyes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.99, ptr @ks0127_addrs, ptr @.str.100, ptr @bt866_addrs, i16 0, i16 4, i16 0, i32 10, [16 x %struct.input] [%struct.input { i32 0, [32 x i8] c"Composite 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 1, [32 x i8] c"Composite 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 2, [32 x i8] c"Composite 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 4, [32 x i8] c"Composite 4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 5, [32 x i8] c"Composite 5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 6, [32 x i8] c"Composite 6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 8, [32 x i8] c"S-Video 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 9, [32 x i8] c"S-Video 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 10, [32 x i8] c"S-Video 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input { i32 15, [32 x i8] c"YCbCr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.input zeroinitializer, %struct.input zeroinitializer, %struct.input zeroinitializer, %struct.input zeroinitializer, %struct.input zeroinitializer, %struct.input zeroinitializer], i64 45311, [3 x ptr] [ptr @f50ccir601_avs6eyes, ptr @f60ccir601_avs6eyes, ptr null], i32 1073741824, i32 536870912, [8 x i8] c"\01\00\03\FF\FF\FF\FF\FF", [2 x i8] c"\03\01", [2 x i8] undef, %struct.vfe_polarity { i8 -124, [3 x i8] undef }, [8 x i8] zeroinitializer, i8 1, i8 1, ptr @avs6eyes_init } }>, [1568 x i8] zeroinitializer }, align 32
@dc10_init.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.103, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dc10_init\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dc10plus_init.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.4, ptr @.str.103, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dc10plus_init\00", [18 x i8] zeroinitializer }, align 32
@lml33_init.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.4, ptr @.str.103, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lml33_init\00", [21 x i8] zeroinitializer }, align 32
@buz_init.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.4, ptr @.str.103, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buz_init\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zoran_i2c_bit_data_template = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @zoran_i2c_setsda, ptr @zoran_i2c_setscl, ptr @zoran_i2c_getsda, ptr @zoran_i2c_getscl, ptr null, ptr null, i32 10, i32 100, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zr36060\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zr36050\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zr36016\00", [24 x i8] zeroinitializer }, align 32
@zr36057_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.4, i32 845, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"initializing card[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr36057_init\00", [19 x i8] zeroinitializer }, align 32
@zr36057_init._entry_ptr = internal global ptr @zr36057_init._entry, section ".printk_index", align 4
@zr36057_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.4, i32 861, ptr @.str.114, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s - default TV standard not supported by hardware. PAL will be used.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zr36057_init._entry_ptr.115 = internal global ptr @zr36057_init._entry.112, section ".printk_index", align 4
@zr36057_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.111, ptr @.str.4, i32 868, ptr @.str.114, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"default_input value %d out of range (0-%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@zr36057_init._entry_ptr.118 = internal global ptr @zr36057_init._entry.116, section ".printk_index", align 4
@zoran_template = external dso_local local_unnamed_addr constant %struct.video_device, align 8
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@zoran_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.4, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Zoran MJPEG board driver version %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zoran_init\00", [21 x i8] zeroinitializer }, align 32
@zoran_init._entry_ptr = internal global ptr @zoran_init._entry, section ".printk_index", align 4
@zoran_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.4, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: Using supplied video memory base address @ 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@zoran_init._entry_ptr.123 = internal global ptr @zoran_init._entry.121, section ".printk_index", align 4
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ZORAN\00", [26 x i8] zeroinitializer }, align 32
@zoran_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.120, ptr @.str.4, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: chipset does not support reliable PCI-PCI DMA\0A\00", [43 x i8] zeroinitializer }, align 32
@zoran_init._entry_ptr.127 = internal global ptr @zoran_init._entry.125, section ".printk_index", align 4
@zoran_init._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.120, ptr @.str.4, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unable to register ZR36057 driver\0A\00", [59 x i8] zeroinitializer }, align 32
@zoran_init._entry_ptr.130 = internal global ptr @zoran_init._entry.128, section ".printk_index", align 4
@switch.table.zoran_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.107], [20 x i8] zeroinitializer }, align 32
@switch.table.zoran_probe.131 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.107], [20 x i8] zeroinitializer }, align 32
@switch.table.zoran_setup_videocodec = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @zr36050_read, ptr @zr36016_read, ptr @zr36060_read], [20 x i8] zeroinitializer }, align 32
@switch.table.zoran_setup_videocodec.132 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @zr36050_write, ptr @zr36016_write, ptr @zr36060_write], [20 x i8] zeroinitializer }, align 32
@switch.table.zoran_setup_videocodec.133 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 8192, i32 8193], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967280]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 25088, i64 25089]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"vidmem\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 46, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"default_input\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 52, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"default_mux\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 57, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"default_norm\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 62, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [10 x i8] c"v4l_nbufs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 71, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"v4l_bufsize\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 72, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [10 x i8] c"jpg_nbufs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 78, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"jpg_bufsize\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 79, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"pass_through\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 87, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"zr36067_debug\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 92, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 101, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 665, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 668, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 699, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 774, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 779, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 834, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [13 x i8] c"zoran_driver\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1277, i32 26 }
@___asan_gen_.221 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 35, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 67, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"zr36067_pci_tbl\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 107, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant [10 x i8] c"zoran_num\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 117, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1077, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1090, i32 51 }
@___asan_gen_.245 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1091, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant [21 x i8] c"zoran_video_ctrl_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1050, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1097, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1098, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1103, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1107, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1113, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1114, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1120, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1123, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1127, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1141, i32 51 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1150, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1157, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1159, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1162, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1172, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1178, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1181, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1194, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1201, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1209, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1224, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1228, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1238, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1242, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1249, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 317, i32 18 }
@___asan_gen_.404 = private unnamed_addr constant [14 x i8] c"vpx3220_addrs\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 302, i32 29 }
@___asan_gen_.407 = private unnamed_addr constant [16 x i8] c"f50sqpixel_dc10\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 282, i32 28 }
@___asan_gen_.410 = private unnamed_addr constant [16 x i8] c"f60sqpixel_dc10\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 283, i32 28 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 346, i32 18 }
@___asan_gen_.416 = private unnamed_addr constant [14 x i8] c"saa7110_addrs\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 303, i32 29 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 348, i32 18 }
@___asan_gen_.422 = private unnamed_addr constant [14 x i8] c"adv717x_addrs\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 306, i32 29 }
@___asan_gen_.425 = private unnamed_addr constant [11 x i8] c"f50sqpixel\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 273, i32 28 }
@___asan_gen_.428 = private unnamed_addr constant [11 x i8] c"f60sqpixel\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 274, i32 28 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 467, i32 18 }
@___asan_gen_.434 = private unnamed_addr constant [12 x i8] c"bt819_addrs\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 309, i32 29 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 469, i32 18 }
@___asan_gen_.440 = private unnamed_addr constant [12 x i8] c"bt856_addrs\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 310, i32 29 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"f50ccir601_lml33\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 278, i32 28 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"f60ccir601_lml33\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 279, i32 28 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 496, i32 18 }
@___asan_gen_.452 = private unnamed_addr constant [14 x i8] c"saa7114_addrs\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 305, i32 29 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 498, i32 18 }
@___asan_gen_.458 = private unnamed_addr constant [19 x i8] c"f50ccir601_lm33r10\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 289, i32 28 }
@___asan_gen_.461 = private unnamed_addr constant [19 x i8] c"f60ccir601_lm33r10\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 290, i32 28 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 525, i32 18 }
@___asan_gen_.467 = private unnamed_addr constant [14 x i8] c"saa7111_addrs\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 304, i32 29 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 527, i32 18 }
@___asan_gen_.473 = private unnamed_addr constant [14 x i8] c"saa7185_addrs\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 308, i32 29 }
@___asan_gen_.476 = private unnamed_addr constant [11 x i8] c"f50ccir601\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 275, i32 28 }
@___asan_gen_.479 = private unnamed_addr constant [11 x i8] c"f60ccir601\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 276, i32 28 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 555, i32 18 }
@___asan_gen_.485 = private unnamed_addr constant [13 x i8] c"ks0127_addrs\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 307, i32 29 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 557, i32 18 }
@___asan_gen_.491 = private unnamed_addr constant [12 x i8] c"bt866_addrs\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 311, i32 29 }
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c"f50ccir601_avs6eyes\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 299, i32 28 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c"f60ccir601_avs6eyes\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 300, i32 28 }
@___asan_gen_.500 = private unnamed_addr constant [12 x i8] c"zoran_cards\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 313, i32 25 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 197, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 208, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 223, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 213, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [28 x i8] c"zoran_i2c_bit_data_template\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 633, i32 39 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 256, i32 10 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 259, i32 10 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 262, i32 10 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 845, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 861, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 867, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1288, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1313, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1317, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.582 = private constant [44 x i8] c"../drivers/staging/media/zoran/zoran_card.c\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1321, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant [25 x i8] c"switch.table.zoran_probe\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [29 x i8] c"switch.table.zoran_probe.131\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [36 x i8] c"switch.table.zoran_setup_videocodec\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [40 x i8] c"switch.table.zoran_setup_videocodec.132\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [40 x i8] c"switch.table.zoran_setup_videocodec.133\00", align 1
@llvm.compiler.used = appending global [232 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_card301, ptr @__UNIQUE_ID_cardtype300, ptr @__UNIQUE_ID_debug323, ptr @__UNIQUE_ID_debugtype322, ptr @__UNIQUE_ID_default_input305, ptr @__UNIQUE_ID_default_inputtype304, ptr @__UNIQUE_ID_default_mux307, ptr @__UNIQUE_ID_default_muxtype306, ptr @__UNIQUE_ID_default_norm309, ptr @__UNIQUE_ID_default_normtype308, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_jpg_bufsize319, ptr @__UNIQUE_ID_jpg_bufsizetype318, ptr @__UNIQUE_ID_jpg_nbufs317, ptr @__UNIQUE_ID_jpg_nbufstype316, ptr @__UNIQUE_ID_license327, ptr @__UNIQUE_ID_pass_through321, ptr @__UNIQUE_ID_pass_throughtype320, ptr @__UNIQUE_ID_v4l_bufsize315, ptr @__UNIQUE_ID_v4l_bufsizetype314, ptr @__UNIQUE_ID_v4l_nbufs313, ptr @__UNIQUE_ID_v4l_nbufstype312, ptr @__UNIQUE_ID_version328, ptr @__UNIQUE_ID_video_nr311, ptr @__UNIQUE_ID_video_nrtype310, ptr @__UNIQUE_ID_vidmem303, ptr @__UNIQUE_ID_vidmemtype302, ptr @__exitcall_zoran_exit, ptr @__initcall__kmod_zr36067__360_1333_zoran_init6, ptr @__modver_attr, ptr @__param_card, ptr @__param_debug, ptr @__param_default_input, ptr @__param_default_mux, ptr @__param_default_norm, ptr @__param_jpg_bufsize, ptr @__param_jpg_nbufs, ptr @__param_pass_through, ptr @__param_v4l_bufsize, ptr @__param_v4l_nbufs, ptr @__param_video_nr, ptr @__param_vidmem, ptr @zoran_check_jpg_settings._entry, ptr @zoran_check_jpg_settings._entry.11, ptr @zoran_check_jpg_settings._entry_ptr, ptr @zoran_check_jpg_settings._entry_ptr.13, ptr @zoran_exit, ptr @zoran_init._entry, ptr @zoran_init._entry.121, ptr @zoran_init._entry.125, ptr @zoran_init._entry.128, ptr @zoran_init._entry_ptr, ptr @zoran_init._entry_ptr.123, ptr @zoran_init._entry_ptr.127, ptr @zoran_init._entry_ptr.130, ptr @zoran_open_init_params._entry, ptr @zoran_open_init_params._entry_ptr, ptr @zoran_probe._entry, ptr @zoran_probe._entry.23, ptr @zoran_probe._entry.27, ptr @zoran_probe._entry.30, ptr @zoran_probe._entry.33, ptr @zoran_probe._entry.36, ptr @zoran_probe._entry.39, ptr @zoran_probe._entry.42, ptr @zoran_probe._entry.46, ptr @zoran_probe._entry.49, ptr @zoran_probe._entry.52, ptr @zoran_probe._entry.55, ptr @zoran_probe._entry.58, ptr @zoran_probe._entry.61, ptr @zoran_probe._entry.64, ptr @zoran_probe._entry.67, ptr @zoran_probe._entry.70, ptr @zoran_probe._entry.73, ptr @zoran_probe._entry.75, ptr @zoran_probe._entry.78, ptr @zoran_probe._entry.81, ptr @zoran_probe._entry.84, ptr @zoran_probe._entry.87, ptr @zoran_probe._entry_ptr, ptr @zoran_probe._entry_ptr.26, ptr @zoran_probe._entry_ptr.29, ptr @zoran_probe._entry_ptr.32, ptr @zoran_probe._entry_ptr.35, ptr @zoran_probe._entry_ptr.38, ptr @zoran_probe._entry_ptr.41, ptr @zoran_probe._entry_ptr.44, ptr @zoran_probe._entry_ptr.48, ptr @zoran_probe._entry_ptr.51, ptr @zoran_probe._entry_ptr.54, ptr @zoran_probe._entry_ptr.57, ptr @zoran_probe._entry_ptr.60, ptr @zoran_probe._entry_ptr.63, ptr @zoran_probe._entry_ptr.66, ptr @zoran_probe._entry_ptr.69, ptr @zoran_probe._entry_ptr.72, ptr @zoran_probe._entry_ptr.74, ptr @zoran_probe._entry_ptr.77, ptr @zoran_probe._entry_ptr.80, ptr @zoran_probe._entry_ptr.83, ptr @zoran_probe._entry_ptr.86, ptr @zoran_probe._entry_ptr.89, ptr @zr36057_init._entry, ptr @zr36057_init._entry.112, ptr @zr36057_init._entry.116, ptr @zr36057_init._entry_ptr, ptr @zr36057_init._entry_ptr.115, ptr @zr36057_init._entry_ptr.118, ptr @vidmem, ptr @default_input, ptr @default_mux, ptr @default_norm, ptr @v4l_nbufs, ptr @v4l_bufsize, ptr @jpg_nbufs, ptr @jpg_bufsize, ptr @pass_through, ptr @zr36067_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @zoran_driver, ptr @card, ptr @video_nr, ptr @zr36067_pci_tbl, ptr @zoran_num, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @zoran_probe._key, ptr @.str.19, ptr @zoran_video_ctrl_ops, ptr @zoran_probe.__key, ptr @.str.20, ptr @zoran_probe.__key.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @vpx3220_addrs, ptr @f50sqpixel_dc10, ptr @f60sqpixel_dc10, ptr @.str.91, ptr @saa7110_addrs, ptr @.str.92, ptr @adv717x_addrs, ptr @f50sqpixel, ptr @f60sqpixel, ptr @.str.93, ptr @bt819_addrs, ptr @.str.94, ptr @bt856_addrs, ptr @f50ccir601_lml33, ptr @f60ccir601_lml33, ptr @.str.95, ptr @saa7114_addrs, ptr @.str.96, ptr @f50ccir601_lm33r10, ptr @f60ccir601_lm33r10, ptr @.str.97, ptr @saa7111_addrs, ptr @.str.98, ptr @saa7185_addrs, ptr @f50ccir601, ptr @f60ccir601, ptr @.str.99, ptr @ks0127_addrs, ptr @.str.100, ptr @bt866_addrs, ptr @f50ccir601_avs6eyes, ptr @f60ccir601_avs6eyes, ptr @zoran_cards, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @zoran_i2c_bit_data_template, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @switch.table.zoran_probe, ptr @switch.table.zoran_probe.131, ptr @switch.table.zoran_setup_videocodec, ptr @switch.table.zoran_setup_videocodec.132, ptr @switch.table.zoran_setup_videocodec.133], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidmem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_input to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mux to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_norm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l_nbufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpg_nbufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpg_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pass_through to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36067_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_check_jpg_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_check_jpg_settings._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_open_init_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36067_pci_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_video_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpx3220_addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f50sqpixel_dc10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f60sqpixel_dc10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv717x_addrs to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f50sqpixel to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f60sqpixel to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt819_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt856_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f50ccir601_lml33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f60ccir601_lml33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7114_addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f50ccir601_lm33r10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f60ccir601_lm33r10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7111_addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7185_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f50ccir601 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f60ccir601 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks0127_addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt866_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f50ccir601_avs6eyes to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f60ccir601_avs6eyes to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_cards to i32), i32 6336, i32 7904, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_i2c_bit_data_template to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_init._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zoran_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zoran_probe.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zoran_setup_videocodec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zoran_setup_videocodec.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zoran_setup_videocodec.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zr36016_write(ptr nocapture noundef readonly %codec, i16 noundef zeroext %reg, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %master_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data, align 4
  %data = getelementptr inbounds %struct.videocodec_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @post_office_wait(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = and i16 %reg, 3
  %and = zext i16 %4 to i32
  %and1 = and i32 %val, 255
  %call2 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 2, i32 noundef %and, i32 noundef %and1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_office_wait(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_office_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zoran_check_jpg_settings(ptr nocapture noundef readonly %zr, ptr noundef %settings, i32 noundef %try) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zoran_check_jpg_settings.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zoran_check_jpg_settings, %if.then)) #7
          to label %do.body3 [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %settings, align 4
  %hor_dcm = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  %4 = ptrtoint ptr %hor_dcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hor_dcm, align 4
  %ver_dcm = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 2
  %6 = ptrtoint ptr %ver_dcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ver_dcm, align 4
  %tmp_dcm = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 3
  %8 = ptrtoint ptr %tmp_dcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp_dcm, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zoran_check_jpg_settings.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zoran_check_jpg_settings.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zoran_check_jpg_settings, %if.then15)) #7
          to label %do.end20 [label %if.then15], !srcloc !385

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev16 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %10 = ptrtoint ptr %pci_dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev16, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %img_x = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %12 = ptrtoint ptr %img_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %img_x, align 4
  %img_y = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 7
  %14 = ptrtoint ptr %img_y to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %img_y, align 4
  %img_width = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 8
  %16 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %img_width, align 4
  %img_height = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 9
  %18 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %img_height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zoran_check_jpg_settings.__UNIQUE_ID_ddebug334, ptr noundef %dev17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body3
  %20 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %settings, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end393 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb31
    i32 4, label %sw.bb57
    i32 0, label %sw.bb110
  ]

sw.bb:                                            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %hor_dcm22 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  %23 = ptrtoint ptr %hor_dcm22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %hor_dcm22, align 4
  %ver_dcm23 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 2
  %24 = ptrtoint ptr %ver_dcm23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %ver_dcm23, align 4
  %tmp_dcm24 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 3
  %25 = ptrtoint ptr %tmp_dcm24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %tmp_dcm24, align 4
  %field_per_buff = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 4
  %26 = ptrtoint ptr %field_per_buff to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %field_per_buff, align 4
  %img_x25 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %27 = ptrtoint ptr %img_x25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %img_x25, align 4
  %img_y26 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 7
  %28 = ptrtoint ptr %img_y26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %img_y26, align 4
  %timing = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %29 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %timing, align 8
  %wa = getelementptr inbounds %struct.tvnorm, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %wa, align 2
  %conv = zext i16 %32 to i32
  %img_width27 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 8
  %33 = ptrtoint ptr %img_width27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv, ptr %img_width27, align 4
  %34 = load ptr, ptr %timing, align 8
  %ha = getelementptr inbounds %struct.tvnorm, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ha, align 2
  %37 = lshr i16 %36, 1
  %div = zext i16 %37 to i32
  %img_height30 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 9
  %38 = ptrtoint ptr %img_height30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div, ptr %img_height30, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %hor_dcm32 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  %39 = ptrtoint ptr %hor_dcm32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %hor_dcm32, align 4
  %ver_dcm33 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 2
  %40 = ptrtoint ptr %ver_dcm33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %ver_dcm33, align 4
  %tmp_dcm34 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 3
  %41 = ptrtoint ptr %tmp_dcm34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %tmp_dcm34, align 4
  %field_per_buff35 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 4
  %42 = ptrtoint ptr %field_per_buff35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %field_per_buff35, align 4
  %timing36 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %43 = ptrtoint ptr %timing36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %timing36, align 8
  %wa37 = getelementptr inbounds %struct.tvnorm, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wa37 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wa37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %46)
  %cmp = icmp eq i16 %46, 720
  %cond = select i1 %cmp, i32 8, i32 0
  %img_x40 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %47 = ptrtoint ptr %img_x40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond, ptr %img_x40, align 4
  %img_y41 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 7
  %48 = ptrtoint ptr %img_y41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %img_y41, align 4
  %49 = ptrtoint ptr %timing36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %timing36, align 8
  %wa43 = getelementptr inbounds %struct.tvnorm, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wa43 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %wa43, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %52)
  %cmp45 = icmp eq i16 %52, 720
  %narrow662 = select i1 %cmp45, i16 704, i16 %52
  %spec.select = zext i16 %narrow662 to i32
  %img_width51 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 8
  %53 = ptrtoint ptr %img_width51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.select, ptr %img_width51, align 4
  %54 = ptrtoint ptr %timing36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %timing36, align 8
  %ha53 = getelementptr inbounds %struct.tvnorm, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %ha53 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ha53, align 2
  %58 = lshr i16 %57, 1
  %div55 = zext i16 %58 to i32
  %img_height56 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 9
  %59 = ptrtoint ptr %img_height56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div55, ptr %img_height56, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.end20
  %card = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %60 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %card, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp58 = icmp eq i32 %61, 1
  br i1 %cmp58, label %do.body61, label %if.end79

do.body61:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zoran_check_jpg_settings.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zoran_check_jpg_settings, %if.then73)) #7
          to label %sw.epilog [label %if.then73], !srcloc !385

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev74 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %62 = ptrtoint ptr %pci_dev74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci_dev74, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zoran_check_jpg_settings.__UNIQUE_ID_ddebug335, ptr noundef %dev75, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3) #7
  br label %sw.epilog

if.end79:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  %hor_dcm80 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  %64 = ptrtoint ptr %hor_dcm80 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %hor_dcm80, align 4
  %ver_dcm81 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 2
  %65 = ptrtoint ptr %ver_dcm81 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %ver_dcm81, align 4
  %tmp_dcm82 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 3
  %66 = ptrtoint ptr %tmp_dcm82 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %tmp_dcm82, align 4
  %field_per_buff83 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 4
  %67 = ptrtoint ptr %field_per_buff83 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %field_per_buff83, align 4
  %timing84 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %68 = ptrtoint ptr %timing84 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %timing84, align 8
  %wa85 = getelementptr inbounds %struct.tvnorm, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wa85 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %wa85, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %71)
  %cmp87 = icmp eq i16 %71, 720
  %cond89 = select i1 %cmp87, i32 8, i32 0
  %img_x90 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %72 = ptrtoint ptr %img_x90 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cond89, ptr %img_x90, align 4
  %img_y91 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 7
  %73 = ptrtoint ptr %img_y91 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %img_y91, align 4
  %74 = ptrtoint ptr %timing84 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %timing84, align 8
  %wa93 = getelementptr inbounds %struct.tvnorm, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %wa93 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %wa93, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %77)
  %cmp95 = icmp eq i16 %77, 720
  %narrow = select i1 %cmp95, i16 704, i16 %77
  %spec.select634 = zext i16 %narrow to i32
  %img_width104 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 8
  %78 = ptrtoint ptr %img_width104 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %spec.select634, ptr %img_width104, align 4
  %79 = ptrtoint ptr %timing84 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %timing84, align 8
  %ha106 = getelementptr inbounds %struct.tvnorm, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %ha106 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ha106, align 2
  %83 = lshr i16 %82, 1
  %div108 = zext i16 %83 to i32
  %img_height109 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 9
  %84 = ptrtoint ptr %img_height109 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div108, ptr %img_height109, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %do.end20
  %hor_dcm111 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  %85 = ptrtoint ptr %hor_dcm111 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hor_dcm111, align 4
  %.off = add i32 %86, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb110.if.end143_crit_edge, label %land.lhs.true117

sw.bb110.if.end143_crit_edge:                     ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

land.lhs.true117:                                 ; preds = %sw.bb110
  %card118 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %87 = ptrtoint ptr %card118 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %card118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp120 = icmp ne i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %cmp123.not = icmp eq i32 %86, 4
  %or.cond = select i1 %cmp120, i1 %cmp123.not, i1 false
  br i1 %or.cond, label %land.lhs.true117.if.end143_crit_edge, label %if.then125

land.lhs.true117.if.end143_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then125:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  %89 = tail call i32 @llvm.smax.i32(i32 %86, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp135 = icmp ult i32 %89, 2
  %cond140 = select i1 %cmp135, i32 1, i32 2
  %90 = ptrtoint ptr %hor_dcm111 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cond140, ptr %hor_dcm111, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then125, %land.lhs.true117.if.end143_crit_edge, %sw.bb110.if.end143_crit_edge
  %err0.0 = phi i32 [ 1, %if.then125 ], [ 0, %sw.bb110.if.end143_crit_edge ], [ 0, %land.lhs.true117.if.end143_crit_edge ]
  %ver_dcm144 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 2
  %91 = ptrtoint ptr %ver_dcm144 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ver_dcm144, align 4
  %.off642 = add i32 %92, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off642)
  %switch643 = icmp ult i32 %.off642, 2
  br i1 %switch643, label %if.end143.if.end169_crit_edge, label %if.then151

if.end143.if.end169_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

if.then151:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp161 = icmp ult i32 %93, 2
  %cond166 = select i1 %cmp161, i32 1, i32 2
  %94 = ptrtoint ptr %ver_dcm144 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cond166, ptr %ver_dcm144, align 4
  %inc168 = add nuw nsw i32 %err0.0, 1
  br label %if.end169

if.end169:                                        ; preds = %if.then151, %if.end143.if.end169_crit_edge
  %err0.1 = phi i32 [ %inc168, %if.then151 ], [ %err0.0, %if.end143.if.end169_crit_edge ]
  %tmp_dcm170 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 3
  %95 = ptrtoint ptr %tmp_dcm170 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tmp_dcm170, align 4
  %.off644 = add i32 %96, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off644)
  %switch645 = icmp ult i32 %.off644, 2
  br i1 %switch645, label %if.end169.if.end195_crit_edge, label %if.then177

if.end169.if.end195_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then177:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %97 = tail call i32 @llvm.smax.i32(i32 %96, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp187 = icmp ult i32 %97, 2
  %cond192 = select i1 %cmp187, i32 1, i32 2
  %98 = ptrtoint ptr %tmp_dcm170 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %cond192, ptr %tmp_dcm170, align 4
  %inc194 = add nuw nsw i32 %err0.1, 1
  br label %if.end195

if.end195:                                        ; preds = %if.then177, %if.end169.if.end195_crit_edge
  %err0.2 = phi i32 [ %inc194, %if.then177 ], [ %err0.1, %if.end169.if.end195_crit_edge ]
  %field_per_buff196 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 4
  %99 = ptrtoint ptr %field_per_buff196 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %field_per_buff196, align 4
  %.off646 = add i32 %100, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off646)
  %switch647 = icmp ult i32 %.off646, 2
  br i1 %switch647, label %if.end195.if.end221_crit_edge, label %if.then203

if.end195.if.end221_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then203:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp213 = icmp ult i32 %101, 2
  %cond218 = select i1 %cmp213, i32 1, i32 2
  %102 = ptrtoint ptr %field_per_buff196 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond218, ptr %field_per_buff196, align 4
  %inc220 = add nuw nsw i32 %err0.2, 1
  br label %if.end221

if.end221:                                        ; preds = %if.then203, %if.end195.if.end221_crit_edge
  %err0.3 = phi i32 [ %inc220, %if.then203 ], [ %err0.2, %if.end195.if.end221_crit_edge ]
  %img_x222 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %103 = ptrtoint ptr %img_x222 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %img_x222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp223 = icmp slt i32 %104, 0
  br i1 %cmp223, label %if.then225, label %if.end221.if.end228_crit_edge

if.end221.if.end228_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end228

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %img_x222 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %img_x222, align 4
  %inc227 = add nuw nsw i32 %err0.3, 1
  br label %if.end228

if.end228:                                        ; preds = %if.then225, %if.end221.if.end228_crit_edge
  %err0.4 = phi i32 [ %inc227, %if.then225 ], [ %err0.3, %if.end221.if.end228_crit_edge ]
  %img_y229 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 7
  %106 = ptrtoint ptr %img_y229 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %img_y229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp230 = icmp slt i32 %107, 0
  br i1 %cmp230, label %if.then232, label %if.end228.if.end235_crit_edge

if.end228.if.end235_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235

if.then232:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %img_y229 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %img_y229, align 4
  %inc234 = add nuw nsw i32 %err0.4, 1
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.end228.if.end235_crit_edge
  %err0.5 = phi i32 [ %inc234, %if.then232 ], [ %err0.4, %if.end228.if.end235_crit_edge ]
  %img_width236 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 8
  %109 = ptrtoint ptr %img_width236 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %img_width236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp237 = icmp slt i32 %110, 0
  br i1 %cmp237, label %if.end235.if.then246_crit_edge, label %lor.lhs.false239

if.end235.if.then246_crit_edge:                   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then246

lor.lhs.false239:                                 ; preds = %if.end235
  %timing241 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %111 = ptrtoint ptr %timing241 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %timing241, align 8
  %wa242 = getelementptr inbounds %struct.tvnorm, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wa242 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %wa242, align 2
  %conv243 = zext i16 %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %conv243)
  %cmp244 = icmp ugt i32 %110, %conv243
  br i1 %cmp244, label %lor.lhs.false239.if.then246_crit_edge, label %lor.lhs.false239.if.end267_crit_edge

lor.lhs.false239.if.end267_crit_edge:             ; preds = %lor.lhs.false239
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

lor.lhs.false239.if.then246_crit_edge:            ; preds = %lor.lhs.false239
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then246

if.then246:                                       ; preds = %lor.lhs.false239.if.then246_crit_edge, %if.end235.if.then246_crit_edge
  %115 = tail call i32 @llvm.smax.i32(i32 %110, i32 0)
  %timing255 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %116 = ptrtoint ptr %timing255 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %timing255, align 8
  %wa256 = getelementptr inbounds %struct.tvnorm, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %wa256 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %wa256, align 2
  %conv257 = zext i16 %119 to i32
  %120 = tail call i32 @llvm.umin.i32(i32 %115, i32 %conv257)
  %121 = ptrtoint ptr %img_width236 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %img_width236, align 4
  %inc266 = add nuw nsw i32 %err0.5, 1
  br label %if.end267

if.end267:                                        ; preds = %if.then246, %lor.lhs.false239.if.end267_crit_edge
  %err0.6 = phi i32 [ %inc266, %if.then246 ], [ %err0.5, %lor.lhs.false239.if.end267_crit_edge ]
  %img_height268 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 9
  %122 = ptrtoint ptr %img_height268 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %img_height268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp269 = icmp slt i32 %123, 0
  br i1 %cmp269, label %if.end267.if.then279_crit_edge, label %lor.lhs.false271

if.end267.if.then279_crit_edge:                   ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

lor.lhs.false271:                                 ; preds = %if.end267
  %timing273 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %124 = ptrtoint ptr %timing273 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %timing273, align 8
  %ha274 = getelementptr inbounds %struct.tvnorm, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %ha274 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %ha274, align 2
  %128 = lshr i16 %127, 1
  %div276 = zext i16 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %div276)
  %cmp277 = icmp ugt i32 %123, %div276
  br i1 %cmp277, label %lor.lhs.false271.if.then279_crit_edge, label %lor.lhs.false271.if.end301_crit_edge

lor.lhs.false271.if.end301_crit_edge:             ; preds = %lor.lhs.false271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end301

lor.lhs.false271.if.then279_crit_edge:            ; preds = %lor.lhs.false271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.then279:                                       ; preds = %lor.lhs.false271.if.then279_crit_edge, %if.end267.if.then279_crit_edge
  %129 = tail call i32 @llvm.smax.i32(i32 %123, i32 0)
  %timing288 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %130 = ptrtoint ptr %timing288 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %timing288, align 8
  %ha289 = getelementptr inbounds %struct.tvnorm, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %ha289 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %ha289, align 2
  %134 = lshr i16 %133, 1
  %div291 = zext i16 %134 to i32
  %135 = tail call i32 @llvm.umin.i32(i32 %129, i32 %div291)
  %136 = ptrtoint ptr %img_height268 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %img_height268, align 4
  %inc300 = add nuw nsw i32 %err0.6, 1
  br label %if.end301

if.end301:                                        ; preds = %if.then279, %lor.lhs.false271.if.end301_crit_edge
  %err0.7 = phi i32 [ %inc300, %if.then279 ], [ %err0.6, %lor.lhs.false271.if.end301_crit_edge ]
  %137 = ptrtoint ptr %img_x222 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %img_x222, align 4
  %139 = ptrtoint ptr %img_width236 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %img_width236, align 4
  %add = add i32 %140, %138
  %timing304 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %141 = ptrtoint ptr %timing304 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %timing304, align 8
  %wa305 = getelementptr inbounds %struct.tvnorm, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %wa305 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %wa305, align 2
  %conv306 = zext i16 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv306)
  %cmp307 = icmp sgt i32 %add, %conv306
  br i1 %cmp307, label %if.then309, label %if.end301.if.end316_crit_edge

if.end301.if.end316_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end316

if.then309:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %conv306, %140
  %145 = ptrtoint ptr %img_x222 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub, ptr %img_x222, align 4
  %inc315 = add nuw nsw i32 %err0.7, 1
  br label %if.end316

if.end316:                                        ; preds = %if.then309, %if.end301.if.end316_crit_edge
  %err0.8 = phi i32 [ %inc315, %if.then309 ], [ %err0.7, %if.end301.if.end316_crit_edge ]
  %146 = ptrtoint ptr %img_y229 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %img_y229, align 4
  %148 = ptrtoint ptr %img_height268 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %img_height268, align 4
  %add319 = add i32 %149, %147
  %150 = ptrtoint ptr %timing304 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %timing304, align 8
  %ha321 = getelementptr inbounds %struct.tvnorm, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %ha321 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %ha321, align 2
  %154 = lshr i16 %153, 1
  %div323 = zext i16 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add319, i32 %div323)
  %cmp324 = icmp sgt i32 %add319, %div323
  br i1 %cmp324, label %if.then326, label %if.end316.if.end335_crit_edge

if.end316.if.end335_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end335

if.then326:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  %sub332 = sub i32 %div323, %149
  %155 = ptrtoint ptr %img_y229 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %sub332, ptr %img_y229, align 4
  %inc334 = add nuw nsw i32 %err0.8, 1
  br label %if.end335

if.end335:                                        ; preds = %if.then326, %if.end316.if.end335_crit_edge
  %err0.9 = phi i32 [ %inc334, %if.then326 ], [ %err0.8, %if.end316.if.end335_crit_edge ]
  %156 = ptrtoint ptr %hor_dcm111 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hor_dcm111, align 4
  %mul = shl i32 %157, 4
  %rem = srem i32 %140, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp338.not = icmp eq i32 %rem, 0
  br i1 %cmp338.not, label %if.end335.if.end356_crit_edge, label %if.then340

if.end335.if.end356_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end356

if.then340:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #9
  %sub346 = sub i32 %140, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %rem)
  %cmp348 = icmp eq i32 %140, %rem
  %spec.store.select = select i1 %cmp348, i32 %mul, i32 %sub346
  %158 = ptrtoint ptr %img_width236 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %spec.store.select, ptr %img_width236, align 4
  %inc355 = add nuw nsw i32 %err0.9, 1
  br label %if.end356

if.end356:                                        ; preds = %if.then340, %if.end335.if.end356_crit_edge
  %err0.10 = phi i32 [ %inc355, %if.then340 ], [ %err0.9, %if.end335.if.end356_crit_edge ]
  %159 = ptrtoint ptr %ver_dcm144 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ver_dcm144, align 4
  %mul359 = shl i32 %160, 3
  %rem360 = srem i32 %149, %mul359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem360)
  %cmp361.not = icmp eq i32 %rem360, 0
  br i1 %cmp361.not, label %if.end356.if.end379_crit_edge, label %if.then363

if.end356.if.end379_crit_edge:                    ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end379

if.then363:                                       ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #9
  %sub369 = sub i32 %149, %rem360
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %rem360)
  %cmp371 = icmp eq i32 %149, %rem360
  %spec.store.select661 = select i1 %cmp371, i32 %mul359, i32 %sub369
  %161 = ptrtoint ptr %img_height268 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %spec.store.select661, ptr %img_height268, align 4
  %inc378 = add nuw nsw i32 %err0.10, 1
  br label %if.end379

if.end379:                                        ; preds = %if.then363, %if.end356.if.end379_crit_edge
  %err0.11 = phi i32 [ %inc378, %if.then363 ], [ %err0.10, %if.end356.if.end379_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try)
  %tobool380.not = icmp ne i32 %try, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err0.11)
  %tobool382.not = icmp eq i32 %err0.11, 0
  %or.cond640 = select i1 %tobool380.not, i1 true, i1 %tobool382.not
  br i1 %or.cond640, label %if.end379.sw.epilog_crit_edge, label %do.end386

if.end379.sw.epilog_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end386:                                        ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev387 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %162 = ptrtoint ptr %pci_dev387 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pci_dev387, align 8
  %dev388 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev388, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #10
  br label %sw.epilog

do.end393:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev394 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %164 = ptrtoint ptr %pci_dev394 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pci_dev394, align 8
  %dev395 = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev395, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef %21) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end393, %do.end386, %if.end379.sw.epilog_crit_edge, %if.end79, %if.then73, %do.body61, %sw.bb31, %sw.bb
  %tobool457.not = phi i32 [ 0, %if.end379.sw.epilog_crit_edge ], [ -22, %do.end386 ], [ -22, %do.end393 ], [ 0, %if.end79 ], [ 0, %sw.bb31 ], [ 0, %sw.bb ], [ 0, %if.then73 ], [ 0, %do.body61 ]
  %jpg_comp = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 10
  %166 = ptrtoint ptr %jpg_comp to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %jpg_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %167)
  %cmp398 = icmp sgt i32 %167, 100
  br i1 %cmp398, label %sw.epilog.if.end411.sink.split_crit_edge, label %if.end403

sw.epilog.if.end411.sink.split_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end411.sink.split

if.end403:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %167)
  %cmp406 = icmp slt i32 %167, 5
  br i1 %cmp406, label %if.end403.if.end411.sink.split_crit_edge, label %if.end403.if.end411_crit_edge

if.end403.if.end411_crit_edge:                    ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end411

if.end403.if.end411.sink.split_crit_edge:         ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end411.sink.split

if.end411.sink.split:                             ; preds = %if.end403.if.end411.sink.split_crit_edge, %sw.epilog.if.end411.sink.split_crit_edge
  %.sink = phi i32 [ 100, %sw.epilog.if.end411.sink.split_crit_edge ], [ 5, %if.end403.if.end411.sink.split_crit_edge ]
  %168 = ptrtoint ptr %jpg_comp to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %.sink, ptr %jpg_comp, align 4
  br label %if.end411

if.end411:                                        ; preds = %if.end411.sink.split, %if.end403.if.end411_crit_edge
  %APPn = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 10, i32 1
  %169 = ptrtoint ptr %APPn to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %APPn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp413 = icmp slt i32 %170, 0
  br i1 %cmp413, label %if.end411.if.end426.sink.split_crit_edge, label %if.end418

if.end411.if.end426.sink.split_crit_edge:         ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.end418:                                        ; preds = %if.end411
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %170)
  %cmp421 = icmp ugt i32 %170, 15
  br i1 %cmp421, label %if.end418.if.end426.sink.split_crit_edge, label %if.end418.if.end426_crit_edge

if.end418.if.end426_crit_edge:                    ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426

if.end418.if.end426.sink.split_crit_edge:         ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end426.sink.split

if.end426.sink.split:                             ; preds = %if.end418.if.end426.sink.split_crit_edge, %if.end411.if.end426.sink.split_crit_edge
  %.sink663 = phi i32 [ 0, %if.end411.if.end426.sink.split_crit_edge ], [ 15, %if.end418.if.end426.sink.split_crit_edge ]
  %171 = ptrtoint ptr %APPn to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %.sink663, ptr %APPn, align 4
  br label %if.end426

if.end426:                                        ; preds = %if.end426.sink.split, %if.end418.if.end426_crit_edge
  %APP_len = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 10, i32 2
  %172 = ptrtoint ptr %APP_len to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %APP_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp428 = icmp slt i32 %173, 0
  br i1 %cmp428, label %if.end426.if.end441.sink.split_crit_edge, label %if.end433

if.end426.if.end441.sink.split_crit_edge:         ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end441.sink.split

if.end433:                                        ; preds = %if.end426
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %173)
  %cmp436 = icmp ugt i32 %173, 60
  br i1 %cmp436, label %if.end433.if.end441.sink.split_crit_edge, label %if.end433.if.end441_crit_edge

if.end433.if.end441_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end441

if.end433.if.end441.sink.split_crit_edge:         ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end441.sink.split

if.end441.sink.split:                             ; preds = %if.end433.if.end441.sink.split_crit_edge, %if.end426.if.end441.sink.split_crit_edge
  %.sink664 = phi i32 [ 0, %if.end426.if.end441.sink.split_crit_edge ], [ 60, %if.end433.if.end441.sink.split_crit_edge ]
  %174 = ptrtoint ptr %APP_len to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %.sink664, ptr %APP_len, align 4
  br label %if.end441

if.end441:                                        ; preds = %if.end441.sink.split, %if.end433.if.end441_crit_edge
  %COM_len = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 10, i32 4
  %175 = ptrtoint ptr %COM_len to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %COM_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp443 = icmp slt i32 %176, 0
  br i1 %cmp443, label %if.end441.if.end456.sink.split_crit_edge, label %if.end448

if.end441.if.end456.sink.split_crit_edge:         ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end456.sink.split

if.end448:                                        ; preds = %if.end441
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %176)
  %cmp451 = icmp ugt i32 %176, 60
  br i1 %cmp451, label %if.end448.if.end456.sink.split_crit_edge, label %if.end448.if.end456_crit_edge

if.end448.if.end456_crit_edge:                    ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end456

if.end448.if.end456.sink.split_crit_edge:         ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end456.sink.split

if.end456.sink.split:                             ; preds = %if.end448.if.end456.sink.split_crit_edge, %if.end441.if.end456.sink.split_crit_edge
  %.sink665 = phi i32 [ 0, %if.end441.if.end456.sink.split_crit_edge ], [ 60, %if.end448.if.end456.sink.split_crit_edge ]
  %177 = ptrtoint ptr %COM_len to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %.sink665, ptr %COM_len, align 4
  br label %if.end456

if.end456:                                        ; preds = %if.end456.sink.split, %if.end448.if.end456_crit_edge
  ret i32 %tobool457.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zoran_open_init_params(ptr noundef %zr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l_settings = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24
  %0 = ptrtoint ptr %v4l_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 192, ptr %v4l_settings, align 4
  %height = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 1
  %1 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 144, ptr %height, align 4
  %format = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 3
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr getelementptr inbounds ([0 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 7), ptr %format, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 7, i32 3) to i32))
  %3 = load i32, ptr getelementptr inbounds ([0 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 7, i32 3), align 4
  %add = add i32 %3, 7
  %div = sdiv i32 %add, 8
  %mul = mul i32 %div, 192
  %bytesperline = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %bytesperline, align 4
  %jpg_settings = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26
  %5 = ptrtoint ptr %jpg_settings to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %jpg_settings, align 8
  %jpg_comp = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10
  %6 = ptrtoint ptr %jpg_comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50, ptr %jpg_comp, align 8
  %card = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %card, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp.not = icmp ne i32 %8, 7
  %spec.select = zext i1 %cmp.not to i32
  %9 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 4
  %APPn = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 1
  %jpeg_markers = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 6
  %11 = call ptr @memset(ptr %APPn, i32 0, i32 132)
  %12 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 24, ptr %jpeg_markers, align 8
  %call = tail call i32 @zoran_check_jpg_settings(ptr noundef %zr, ptr noundef %jpg_settings, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %do.end

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end, %entry.if.end27_crit_edge
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytesperline, align 4
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %mul32 = mul i32 %18, %16
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 23
  %19 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul32, ptr %buffer_size, align 8
  tail call void @clear_interrupt_counters(ptr noundef %zr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_interrupt_counters(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zoran_vdev_release(ptr noundef %vdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zoran_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @zoran_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2) #10
  %0 = load i32, ptr @v4l_nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %entry.if.end3.sink.split_crit_edge, label %if.end

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp1 = icmp ugt i32 %0, 32
  br i1 %cmp1, label %if.end.if.end3.sink.split_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.end.if.end3.sink.split_crit_edge, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 2, %entry.if.end3.sink.split_crit_edge ], [ 32, %if.end.if.end3.sink.split_crit_edge ]
  store i32 %.sink, ptr @v4l_nbufs, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.end.if.end3_crit_edge
  %1 = load i32, ptr @v4l_bufsize, align 4
  %mul = shl i32 %1, 10
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %2 = tail call i32 @llvm.smax.i32(i32 %and, i32 32768)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 2097152)
  store i32 %3, ptr @v4l_bufsize, align 4
  %4 = load i32, ptr @jpg_nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp10 = icmp slt i32 %4, 4
  br i1 %cmp10, label %if.end3.if.end15.sink.split_crit_edge, label %if.end12

if.end3.if.end15.sink.split_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp13 = icmp ugt i32 %4, 256
  br i1 %cmp13, label %if.end12.if.end15.sink.split_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end12.if.end15.sink.split_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.end12.if.end15.sink.split_crit_edge, %if.end3.if.end15.sink.split_crit_edge
  %.sink56 = phi i32 [ 4, %if.end3.if.end15.sink.split_crit_edge ], [ 256, %if.end12.if.end15.sink.split_crit_edge ]
  store i32 %.sink56, ptr @jpg_nbufs, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.end12.if.end15_crit_edge
  %5 = load i32, ptr @jpg_bufsize, align 4
  %mul16 = shl i32 %5, 10
  %add17 = add i32 %mul16, 4095
  %and18 = and i32 %add17, -4096
  %6 = tail call i32 @llvm.smax.i32(i32 %and18, i32 8192)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 524288)
  store i32 %7, ptr @jpg_bufsize, align 4
  %8 = load i32, ptr @vidmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end15.if.end31_crit_edge, label %do.end28

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end28:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124, i32 noundef %8) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end15.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %9 = load i32, ptr @pci_pci_problems, align 4
  %and32 = and i32 %9, 97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end40_crit_edge, label %do.end37

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.124) #10
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end31.if.end40_crit_edge
  %call41 = tail call i32 @__pci_register_driver(ptr noundef nonnull @zoran_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %do.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end40.cleanup_crit_edge
  ret i32 %call41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #1 align 64 {
entry:
  %latency = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %latency) #7
  %0 = ptrtoint ptr %latency to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %latency, align 1, !annotation !386
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #7
  %call2 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev, i32 noundef -1) #7
  %1 = load i32, ptr @zoran_num, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @zoran_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 4) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i534 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3608, i32 noundef 3520) #7
  %tobool8.not = icmp eq ptr %call.i534, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %notify = getelementptr inbounds %struct.v4l2_device, ptr %call.i534, i32 0, i32 5
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @zoran_subdev_notify, ptr %notify, align 8
  %call13 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i534) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 17
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pci_dev, align 8
  %conv = trunc i32 %1 to i16
  %id = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 15
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %id, align 4
  %name = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 16
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %1)
  %hdl = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 1
  %call20 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 10, ptr noundef nonnull @zoran_probe._key, ptr noundef nonnull @.str.19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.zr_unreg_crit_edge

if.end16.zr_unreg_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %zr_unreg

if.end23:                                         ; preds = %if.end16
  %ctrl_handler = getelementptr inbounds %struct.v4l2_device, ptr %call.i534, i32 0, i32 6
  %5 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @zoran_video_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 100, i64 noundef 1, i64 noundef 50) #7
  %spinlock = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.20, ptr noundef nonnull @zoran_probe.__key, i16 noundef signext 3) #7
  %lock = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @zoran_probe.__key.21) #7
  %call35 = tail call i32 @pci_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end23.zr_unreg_crit_edge

if.end23.zr_unreg_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %zr_unreg

if.end38:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  %revision40 = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 18
  %10 = ptrtoint ptr %revision40 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %revision40, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %conv47 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp48 = icmp ult i8 %9, 2
  %cond = select i1 %cmp48, i32 53, i32 54
  %irq = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 47
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 8
  %conv54 = zext i32 %14 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45, ptr noundef nonnull @.str.24, i32 noundef %cond, i32 noundef %conv47, i32 noundef %12, i64 noundef %conv54) #10
  %15 = ptrtoint ptr %revision40 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %revision40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp57 = icmp ugt i8 %16, 1
  br i1 %cmp57, label %do.end62, label %if.end38.if.end69_crit_edge

if.end38.if.end69_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

do.end62:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_vendor, align 4
  %conv66 = zext i16 %20 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subsystem_device, align 2
  %conv68 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64, ptr noundef nonnull @.str.28, i32 noundef %conv66, i32 noundef %conv68) #10
  br label %if.end69

if.end69:                                         ; preds = %do.end62, %if.end38.if.end69_crit_edge
  %arrayidx70 = getelementptr [4 x i32], ptr @card, i32 0, i32 %1
  %23 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp71 = icmp eq i32 %24, -1
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end69
  %25 = ptrtoint ptr %revision40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp76 = icmp ult i8 %26, 2
  br i1 %cmp76, label %do.end81, label %if.end87

do.end81:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  br label %zr_unreg

if.end87:                                         ; preds = %if.then73
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp88 = icmp sgt i32 %28, 8
  br i1 %cmp88, label %do.end93, label %do.end98

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %zr_unreg

do.end98:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %name102 = getelementptr [9 x %struct.card_info], ptr @zoran_cards, i32 0, i32 %28, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev100, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.17, ptr noundef %name102) #10
  br label %if.end115

if.else:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %31 = icmp ugt i32 %24, 8
  br i1 %31, label %do.end112, label %if.else.if.end115_crit_edge

if.else.if.end115_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

do.end112:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %24, i32 noundef 8) #10
  br label %zr_unreg

if.end115:                                        ; preds = %if.else.if.end115_crit_edge, %do.end98
  %card_num.0 = phi i32 [ %28, %do.end98 ], [ %24, %if.else.if.end115_crit_edge ]
  %card = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13
  %arrayidx116 = getelementptr [9 x %struct.card_info], ptr @zoran_cards, i32 0, i32 %card_num.0
  %32 = call ptr @memcpy(ptr %card, ptr %arrayidx116, i32 704)
  %name120 = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13, i32 1
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %id, align 4
  %conv123 = zext i16 %34 to i32
  %call124 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.45, ptr noundef %name120, i32 noundef %conv123)
  %call127 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.end115.zr_unreg_crit_edge

if.end115.zr_unreg_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %zr_unreg

if.end130:                                        ; preds = %if.end115
  %resource132 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %35 = ptrtoint ptr %resource132 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resource132, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %37 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp137 = icmp eq i32 %38, 0
  %sub = sub i32 1, %36
  %add = add i32 %sub, %38
  %cond145 = select i1 %cmp137, i32 0, i32 %add
  %call146 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %36, i32 noundef %cond145) #7
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 19
  %39 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call146, ptr %zr36057_mem, align 8
  %tobool148.not = icmp eq ptr %call146, null
  br i1 %tobool148.not, label %do.end152, label %if.end154

do.end152:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.17) #10
  br label %zr_pci_release

if.end154:                                        ; preds = %if.end130
  %call157 = tail call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @zoran_irq, ptr noundef null, ptr noundef nonnull %call.i534, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.end185

if.then160:                                       ; preds = %if.end154
  %40 = zext i32 %call157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call157, label %do.end181 [
    i32 -22, label %do.end166
    i32 -16, label %do.end174
  ]

do.end166:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.17) #10
  br label %zr_pci_release

do.end174:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev, align 8
  %irq177 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %irq177 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq177, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.17, i32 noundef %44) #10
  br label %zr_pci_release

do.end181:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.17, i32 noundef %call157) #10
  br label %zr_pci_release

if.end185:                                        ; preds = %if.end154
  %45 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci_dev, align 8
  %call187 = call i32 @pci_read_config_byte(ptr noundef %46, i32 noundef 13, ptr noundef nonnull %latency) #7
  %47 = ptrtoint ptr %revision40 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %revision40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp190 = icmp ugt i8 %48, 1
  %conv193 = select i1 %cmp190, i8 32, i8 48
  %49 = ptrtoint ptr %latency to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %latency, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %conv193)
  %cmp196.not = icmp eq i8 %50, %conv193
  br i1 %cmp196.not, label %if.end185.if.end208_crit_edge, label %do.end201

if.end185.if.end208_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208

do.end201:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  %conv195 = zext i8 %conv193 to i32
  %conv194 = zext i8 %50 to i32
  %51 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci_dev, align 8
  %dev203 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev203, ptr noundef nonnull @.str.59, i32 noundef %conv194, i32 noundef %conv195) #10
  %53 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev, align 8
  %call207 = call i32 @pci_write_config_byte(ptr noundef %54, i32 noundef 13, i8 noundef zeroext %conv193) #7
  br label %if.end208

if.end208:                                        ; preds = %do.end201, %if.end185.if.end208_crit_edge
  call void @zr36057_restart(ptr noundef nonnull %call.i534) #7
  %55 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci_dev, align 8
  %dev213 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev213, ptr noundef nonnull @.str.62) #10
  %call214 = call fastcc i32 @zoran_register_i2c(ptr noundef nonnull %call.i534)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %do.end220, label %if.end222

do.end220:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.17) #10
  br label %do.body372

if.end222:                                        ; preds = %if.end208
  %i2c_adapter = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 4
  %i2c_decoder = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13, i32 2
  %57 = ptrtoint ptr %i2c_decoder to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_decoder, align 4
  %addrs_decoder = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13, i32 3
  %59 = ptrtoint ptr %addrs_decoder to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %addrs_decoder, align 8
  %call226 = call ptr @v4l2_i2c_new_subdev(ptr noundef nonnull %call.i534, ptr noundef %i2c_adapter, ptr noundef %58, i8 noundef zeroext 0, ptr noundef %60) #7
  %decoder = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 7
  %61 = ptrtoint ptr %decoder to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call226, ptr %decoder, align 4
  %i2c_encoder = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13, i32 4
  %62 = ptrtoint ptr %i2c_encoder to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_encoder, align 4
  %tobool228.not = icmp eq ptr %63, null
  br i1 %tobool228.not, label %if.end222.do.end239_crit_edge, label %if.then229

if.end222.do.end239_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end239

if.then229:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  %addrs_encoder = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13, i32 5
  %64 = ptrtoint ptr %addrs_encoder to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addrs_encoder, align 8
  %call235 = call ptr @v4l2_i2c_new_subdev(ptr noundef nonnull %call.i534, ptr noundef %i2c_adapter, ptr noundef nonnull %63, i8 noundef zeroext 0, ptr noundef %65) #7
  %encoder = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 8
  %66 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call235, ptr %encoder, align 8
  br label %do.end239

do.end239:                                        ; preds = %if.then229, %if.end222.do.end239_crit_edge
  %67 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev, align 8
  %dev241 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev241, ptr noundef nonnull @.str.68) #10
  %video_codec = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13, i32 7
  %69 = ptrtoint ptr %video_codec to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %video_codec, align 2
  %switch.tableidx = add i16 %70, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %71 = icmp ult i16 %switch.tableidx, 3
  br i1 %71, label %switch.lookup, label %do.end239.if.end259_crit_edge

do.end239.if.end259_crit_edge:                    ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end259

switch.lookup:                                    ; preds = %do.end239
  %72 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.zoran_probe, i32 0, i32 %72
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call250 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %switch.load) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %switch.lookup.if.end259_crit_edge, label %do.end255

switch.lookup.if.end259_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end259

do.end255:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull %switch.load, i32 noundef %call250) #10
  br label %if.end259

if.end259:                                        ; preds = %do.end255, %switch.lookup.if.end259_crit_edge, %do.end239.if.end259_crit_edge
  %video_vfe = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 13, i32 6
  %74 = ptrtoint ptr %video_vfe to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %video_vfe, align 4
  %switch.tableidx547 = add i16 %75, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx547)
  %76 = icmp ult i16 %switch.tableidx547, 3
  br i1 %76, label %switch.lookup546, label %if.end259.if.end278_crit_edge

if.end259.if.end278_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end278

switch.lookup546:                                 ; preds = %if.end259
  %77 = sext i16 %switch.tableidx547 to i32
  %switch.gep548 = getelementptr inbounds [3 x ptr], ptr @switch.table.zoran_probe.131, i32 0, i32 %77
  %78 = ptrtoint ptr %switch.gep548 to i32
  call void @__asan_load4_noabort(i32 %78)
  %switch.load549 = load ptr, ptr %switch.gep548, align 4
  %call268 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %switch.load549) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %cmp269 = icmp slt i32 %call268, 0
  br i1 %cmp269, label %do.end274, label %switch.lookup546.if.end278_crit_edge

switch.lookup546.if.end278_crit_edge:             ; preds = %switch.lookup546
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end278

do.end274:                                        ; preds = %switch.lookup546
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull %switch.load549, i32 noundef %call268) #10
  br label %if.end278

if.end278:                                        ; preds = %do.end274, %switch.lookup546.if.end278_crit_edge, %if.end259.if.end278_crit_edge
  call void @jpeg_codec_sleep(ptr noundef nonnull %call.i534, i32 noundef 1) #7
  %call279 = call i32 @jpeg_codec_reset(ptr noundef nonnull %call.i534) #7
  %79 = ptrtoint ptr %video_codec to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %video_codec, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp283.not = icmp eq i16 %80, 0
  br i1 %cmp283.not, label %if.end278.if.end314_crit_edge, label %if.then285

if.end278.if.end314_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end314

if.then285:                                       ; preds = %if.end278
  %conv282 = zext i16 %80 to i32
  %call289 = call fastcc ptr @zoran_setup_videocodec(ptr noundef nonnull %call.i534, i32 noundef %conv282)
  %tobool290.not = icmp eq ptr %call289, null
  br i1 %tobool290.not, label %if.then285.zr_unreg_i2c_crit_edge, label %if.end292

if.then285.zr_unreg_i2c_crit_edge:                ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #9
  br label %zr_unreg_i2c

if.end292:                                        ; preds = %if.then285
  %call293 = call ptr @videocodec_attach(ptr noundef nonnull %call289) #7
  %codec = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 9
  %81 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call293, ptr %codec, align 4
  %tobool295.not = icmp eq ptr %call293, null
  br i1 %tobool295.not, label %do.end299, label %if.end301

do.end299:                                        ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.17) #10
  br label %zr_unreg_i2c

if.end301:                                        ; preds = %if.end292
  %type = getelementptr inbounds %struct.videocodec, ptr %call293, i32 0, i32 4
  %82 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type, align 4
  %84 = ptrtoint ptr %video_codec to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %video_codec, align 2
  %conv305 = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv305)
  %cmp306.not = icmp eq i32 %83, %conv305
  br i1 %cmp306.not, label %if.end301.if.end314_crit_edge, label %do.end311

if.end301.if.end314_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end314

do.end311:                                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.17) #10
  br label %zr_detach_codec

if.end314:                                        ; preds = %if.end301.if.end314_crit_edge, %if.end278.if.end314_crit_edge
  %86 = ptrtoint ptr %video_vfe to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %video_vfe, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp318.not = icmp eq i16 %87, 0
  br i1 %cmp318.not, label %if.end314.if.end350_crit_edge, label %if.then320

if.end314.if.end350_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end350

if.then320:                                       ; preds = %if.end314
  %conv317 = zext i16 %87 to i32
  %call324 = call fastcc ptr @zoran_setup_videocodec(ptr noundef nonnull %call.i534, i32 noundef %conv317)
  %tobool325.not = icmp eq ptr %call324, null
  br i1 %tobool325.not, label %if.then320.zr_detach_codec_crit_edge, label %if.end327

if.then320.zr_detach_codec_crit_edge:             ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #9
  br label %zr_detach_codec

if.end327:                                        ; preds = %if.then320
  %call328 = call ptr @videocodec_attach(ptr noundef nonnull %call324) #7
  %vfe = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 10
  %88 = ptrtoint ptr %vfe to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call328, ptr %vfe, align 8
  %tobool330.not = icmp eq ptr %call328, null
  br i1 %tobool330.not, label %do.end334, label %if.end336

do.end334:                                        ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.17) #10
  br label %zr_detach_codec

if.end336:                                        ; preds = %if.end327
  %type338 = getelementptr inbounds %struct.videocodec, ptr %call328, i32 0, i32 4
  %89 = ptrtoint ptr %type338 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type338, align 4
  %91 = ptrtoint ptr %video_vfe to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %video_vfe, align 4
  %conv341 = zext i16 %92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %conv341)
  %cmp342.not = icmp eq i32 %90, %conv341
  br i1 %cmp342.not, label %if.end336.if.end350_crit_edge, label %do.end347

if.end336.if.end350_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end350

do.end347:                                        ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.17) #10
  br label %zr_detach_vfe

if.end350:                                        ; preds = %if.end336.if.end350_crit_edge, %if.end314.if.end350_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %93 = load i32, ptr @pci_pci_problems, align 4
  %and = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool351.not = icmp eq i32 %and, 0
  br i1 %tobool351.not, label %if.end350.if.end362_crit_edge, label %land.lhs.true

if.end350.if.end362_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end362

land.lhs.true:                                    ; preds = %if.end350
  %94 = ptrtoint ptr %revision40 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %revision40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp354 = icmp ult i8 %95, 2
  br i1 %cmp354, label %do.end359, label %land.lhs.true.if.end362_crit_edge

land.lhs.true.if.end362_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end362

do.end359:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_dev, align 8
  %dev361 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev361, ptr noundef nonnull @.str.88) #10
  br label %if.end362

if.end362:                                        ; preds = %do.end359, %land.lhs.true.if.end362_crit_edge, %if.end350.if.end362_crit_edge
  %call363 = call fastcc i32 @zr36057_init(ptr noundef nonnull %call.i534)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %cmp364 = icmp slt i32 %call363, 0
  br i1 %cmp364, label %if.end362.zr_detach_vfe_crit_edge, label %if.end367

if.end362.zr_detach_vfe_crit_edge:                ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #9
  br label %zr_detach_vfe

if.end367:                                        ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #9
  %map_mode = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 64
  %98 = ptrtoint ptr %map_mode to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %map_mode, align 8
  br label %cleanup

zr_detach_vfe:                                    ; preds = %if.end362.zr_detach_vfe_crit_edge, %do.end347
  %vfe368 = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 10
  %99 = ptrtoint ptr %vfe368 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vfe368, align 8
  %call369 = call i32 @videocodec_detach(ptr noundef %100) #7
  br label %zr_detach_codec

zr_detach_codec:                                  ; preds = %zr_detach_vfe, %do.end334, %if.then320.zr_detach_codec_crit_edge, %do.end311
  %codec370 = getelementptr inbounds %struct.zoran, ptr %call.i534, i32 0, i32 9
  %101 = ptrtoint ptr %codec370 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %codec370, align 4
  %call371 = call i32 @videocodec_detach(ptr noundef %102) #7
  br label %zr_unreg_i2c

zr_unreg_i2c:                                     ; preds = %zr_detach_codec, %do.end299, %if.then285.zr_unreg_i2c_crit_edge
  call void @i2c_del_adapter(ptr noundef %i2c_adapter) #7
  br label %do.body372

do.body372:                                       ; preds = %zr_unreg_i2c, %do.end220
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !387
  call void @arm_heavy_mb() #7
  %103 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %104, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !388
  %105 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pci_dev, align 8
  call void @pci_free_irq(ptr noundef %106, i32 noundef 0, ptr noundef nonnull %call.i534) #7
  br label %zr_pci_release

zr_pci_release:                                   ; preds = %do.body372, %do.end181, %do.end174, %do.end166, %do.end152
  call void @pci_release_regions(ptr noundef %pdev) #7
  br label %zr_unreg

zr_unreg:                                         ; preds = %zr_pci_release, %if.end115.zr_unreg_crit_edge, %do.end112, %do.end93, %do.end81, %if.end23.zr_unreg_crit_edge, %if.end16.zr_unreg_crit_edge
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i534) #7
  br label %cleanup

cleanup:                                          ; preds = %zr_unreg, %if.end367, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %if.end367 ], [ -12, %if.end5.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ -19, %zr_unreg ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %latency) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zoran_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %initialized = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.exit_free_crit_edge, label %if.end

entry.exit_free_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free

if.end:                                           ; preds = %entry
  tail call void @zoran_queue_exit(ptr noundef %1) #7
  %codec = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @videocodec_detach(ptr noundef nonnull %5) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %vfe = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfe, align 8
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @videocodec_detach(ptr noundef nonnull %7) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %i2c_adapter.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter.i) #7
  tail call void @zoran_set_pci_master(ptr noundef %1, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !389
  tail call void @arm_heavy_mb() #7
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !388
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 8
  tail call void @pci_free_irq(ptr noundef %11, i32 noundef 0, ptr noundef %1) #7
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %stat_com = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %stat_com to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stat_com, align 8
  %p_sc = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 61
  %16 = ptrtoint ptr %p_sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_sc, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 16, ptr noundef %15, i32 noundef %17, i32 noundef 0) #7
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %stat_comb = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 62
  %20 = ptrtoint ptr %stat_comb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stat_comb, align 8
  %p_scb = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 63
  %22 = ptrtoint ptr %p_scb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_scb, align 4
  tail call void @dma_free_attrs(ptr noundef %dev15, i32 noundef 32, ptr noundef %21, i32 noundef %23, i32 noundef 0) #7
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 8
  tail call void @pci_disable_device(ptr noundef %25) #7
  %video_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %video_dev, align 8
  tail call void @video_unregister_device(ptr noundef %27) #7
  br label %exit_free

exit_free:                                        ; preds = %if.end11, %entry.exit_free_crit_edge
  %hdl = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zoran_subdev_notify(ptr nocapture noundef readonly %sd, i32 noundef %cmd, ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %cmd, label %entry.if.end3_crit_edge [
    i32 25088, label %entry.if.end3.sink.split_crit_edge
    i32 25089, label %if.then2
  ]

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.sink.split

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.then2, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then2 ], [ 0, %entry.if.end3.sink.split_crit_edge ]
  tail call void @GPIO(ptr noundef %1, i32 noundef 7, i32 noundef %.sink) #7
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zoran_irq(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zr36057_restart(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zoran_register_i2c(ptr noundef %zr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_algo = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %i2c_algo, ptr @zoran_i2c_bit_data_template, i32 40)
  %1 = ptrtoint ptr %i2c_algo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %zr, ptr %i2c_algo, align 8
  %i2c_adapter = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 4
  %name = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 4, i32 12
  %name2 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 16
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name2, i32 noundef 48) #7
  %driver_data.i.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 4, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %zr, ptr %driver_data.i.i, align 4
  %algo_data = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c_algo, ptr %algo_data, align 4
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %parent = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 4, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %call10 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_adapter) #7
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_codec_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jpeg_codec_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @zoran_setup_videocodec(ptr noundef %zr, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.videocodec_master, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %magic, align 4
  %type1 = getelementptr inbounds %struct.videocodec_master, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type1, align 4
  %flags = getelementptr inbounds %struct.videocodec_master, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 49152, ptr %flags, align 4
  %name2 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 16
  %call4 = tail call i32 @strscpy(ptr noundef nonnull %call, ptr noundef %name2, i32 noundef 32) #7
  %data = getelementptr inbounds %struct.videocodec_master, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %zr, ptr %data, align 4
  %switch.tableidx = add i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.zoran_setup_videocodec, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep35 = getelementptr inbounds [3 x ptr], ptr @switch.table.zoran_setup_videocodec.132, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load36 = load ptr, ptr %switch.gep35, align 4
  %switch.gep37 = getelementptr inbounds [3 x i32], ptr @switch.table.zoran_setup_videocodec.133, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load38 = load i32, ptr %switch.gep37, align 4
  %readreg = getelementptr inbounds %struct.videocodec_master, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %readreg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %switch.load, ptr %readreg, align 4
  %writereg = getelementptr inbounds %struct.videocodec_master, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %writereg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %switch.load36, ptr %writereg, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, %switch.load38
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videocodec_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zr36057_init(ptr noundef %zr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %id = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 15
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.110, i32 noundef %conv) #10
  %4 = load i32, ptr @default_norm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ugt i32 %4, 2
  br i1 %5, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @default_norm, align 4
  br label %if.then6

if.end:                                           ; preds = %entry
  %6 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %4, label %if.else15 [
    i32 0, label %if.end.if.then6_crit_edge
    i32 1, label %if.then9
  ]

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.thread
  %norm = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %7 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 255, ptr %norm, align 8
  %tvn = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 12
  br label %if.end22

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %norm10 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %8 = ptrtoint ptr %norm10 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 45056, ptr %norm10, align 8
  %arrayidx13 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 12, i32 1
  br label %if.end22

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %norm16 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %9 = ptrtoint ptr %norm16 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 16711680, ptr %norm16, align 8
  %arrayidx19 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 12, i32 2
  br label %if.end22

if.end22:                                         ; preds = %if.else15, %if.then9, %if.then6
  %.sink.in = phi ptr [ %arrayidx13, %if.then9 ], [ %arrayidx19, %if.else15 ], [ %tvn, %if.then6 ]
  %10 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink = load ptr, ptr %.sink.in, align 4
  %timing14 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %11 = ptrtoint ptr %timing14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink, ptr %timing14, align 8
  %tobool.not = icmp eq ptr %.sink, null
  br i1 %tobool.not, label %do.end27, label %if.end22.if.end35_crit_edge

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111) #10
  %norm30 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %14 = ptrtoint ptr %norm30 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 255, ptr %norm30, align 8
  %tvn32 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 12
  %15 = ptrtoint ptr %tvn32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tvn32, align 8
  %17 = ptrtoint ptr %timing14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %timing14, align 8
  br label %if.end35

if.end35:                                         ; preds = %do.end27, %if.end22.if.end35_crit_edge
  %18 = load i32, ptr @default_input, align 4
  %inputs = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 9
  %19 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inputs, align 4
  %sub = add i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub)
  %cmp37 = icmp ugt i32 %18, %sub
  br i1 %cmp37, label %do.end42, label %if.end35.if.end48_crit_edge

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev44, ptr noundef nonnull @.str.117, i32 noundef %18, i32 noundef %sub) #10
  store i32 0, ptr @default_input, align 4
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end35.if.end48_crit_edge
  %23 = load i32, ptr @default_input, align 4
  %input = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 21
  %24 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %input, align 8
  %v4l_settings.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24
  %25 = ptrtoint ptr %v4l_settings.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 192, ptr %v4l_settings.i, align 4
  %height.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 1
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 144, ptr %height.i, align 4
  %format.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 3
  %27 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr getelementptr inbounds ([0 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 7), ptr %format.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 7, i32 3) to i32))
  %28 = load i32, ptr getelementptr inbounds ([0 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 7, i32 3), align 4
  %add.i = add i32 %28, 7
  %div.i = sdiv i32 %add.i, 8
  %mul.i = mul i32 %div.i, 192
  %bytesperline.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 2
  %29 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %jpg_settings.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26
  %30 = ptrtoint ptr %jpg_settings.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %jpg_settings.i, align 8
  %jpg_comp.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10
  %31 = ptrtoint ptr %jpg_comp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 50, ptr %jpg_comp.i, align 8
  %card.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %32 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %card.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp.not.i = icmp ne i32 %33, 7
  %spec.select.i = zext i1 %cmp.not.i to i32
  %34 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select.i, ptr %34, align 4
  %APPn.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 1
  %jpeg_markers.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 6
  %36 = call ptr @memset(ptr %APPn.i, i32 0, i32 132)
  %37 = ptrtoint ptr %jpeg_markers.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 24, ptr %jpeg_markers.i, align 8
  %call.i = tail call i32 @zoran_check_jpg_settings(ptr noundef %zr, ptr noundef %jpg_settings.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end48.zoran_open_init_params.exit_crit_edge, label %do.end.i

if.end48.zoran_open_init_params.exit_crit_edge:   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %zoran_open_init_params.exit

do.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci_dev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  br label %zoran_open_init_params.exit

zoran_open_init_params.exit:                      ; preds = %do.end.i, %if.end48.zoran_open_init_params.exit_crit_edge
  %40 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytesperline.i, align 4
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i, align 4
  %mul32.i = mul i32 %43, %41
  %buffer_size.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 23
  %44 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul32.i, ptr %buffer_size.i, align 8
  tail call void @clear_interrupt_counters(ptr noundef %zr) #7
  %call = tail call ptr @video_device_alloc() #7
  %video_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 2
  %45 = ptrtoint ptr %video_dev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call, ptr %video_dev, align 8
  %tobool50.not = icmp eq ptr %call, null
  br i1 %tobool50.not, label %zoran_open_init_params.exit.cleanup_crit_edge, label %if.end52

zoran_open_init_params.exit.cleanup_crit_edge:    ; preds = %zoran_open_init_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %zoran_open_init_params.exit
  %46 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci_dev, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %p_sc = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 61
  %call.i239 = tail call ptr @dma_alloc_attrs(ptr noundef %dev54, i32 noundef 16, ptr noundef %p_sc, i32 noundef 3264, i32 noundef 0) #7
  %stat_com = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 36
  %48 = ptrtoint ptr %stat_com to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i239, ptr %stat_com, align 8
  %tobool57.not = icmp eq ptr %call.i239, null
  br i1 %tobool57.not, label %if.end52.exit_video_crit_edge, label %for.body.preheader

if.end52.exit_video_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_video

for.body.preheader:                               ; preds = %if.end52
  %49 = ptrtoint ptr %call.i239 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16777216, ptr %call.i239, align 4
  %50 = ptrtoint ptr %stat_com to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stat_com, align 8
  %arrayidx63.1 = getelementptr i32, ptr %51, i32 1
  %52 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16777216, ptr %arrayidx63.1, align 4
  %53 = load ptr, ptr %stat_com, align 8
  %arrayidx63.2 = getelementptr i32, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx63.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16777216, ptr %arrayidx63.2, align 4
  %55 = load ptr, ptr %stat_com, align 8
  %arrayidx63.3 = getelementptr i32, ptr %55, i32 3
  %56 = ptrtoint ptr %arrayidx63.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16777216, ptr %arrayidx63.3, align 4
  %57 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %p_scb = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 63
  %call.i240 = tail call ptr @dma_alloc_attrs(ptr noundef %dev65, i32 noundef 32, ptr noundef %p_scb, i32 noundef 3264, i32 noundef 0) #7
  %stat_comb = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 62
  %59 = ptrtoint ptr %stat_comb to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i240, ptr %stat_comb, align 8
  %tobool68.not = icmp eq ptr %call.i240, null
  br i1 %tobool68.not, label %for.body.preheader.exit_statcom_crit_edge, label %if.end70

for.body.preheader.exit_statcom_crit_edge:        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_statcom

if.end70:                                         ; preds = %for.body.preheader
  %60 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %video_dev, align 8
  %62 = call ptr @memcpy(ptr %61, ptr @zoran_template, i32 1352)
  %63 = load ptr, ptr %video_dev, align 8
  %v4l2_dev73 = getelementptr inbounds %struct.video_device, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %v4l2_dev73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %zr, ptr %v4l2_dev73, align 4
  %lock = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 11
  %65 = load ptr, ptr %video_dev, align 8
  %lock75 = getelementptr inbounds %struct.video_device, ptr %65, i32 0, i32 26
  %66 = ptrtoint ptr %lock75 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %lock, ptr %lock75, align 8
  %67 = load ptr, ptr %video_dev, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 67108865, ptr %device_caps, align 8
  %69 = load ptr, ptr %video_dev, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %69, i32 0, i32 12
  %name78 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 16
  %call80 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name78, i32 noundef 32) #7
  %70 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %video_dev, align 8
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %vfl_dir, align 4
  %vq = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 3
  %call82 = tail call i32 @zoran_queue_init(ptr noundef %zr, ptr noundef %vq) #7
  %73 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %video_dev, align 8
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %id, align 4
  %idxprom = zext i16 %76 to i32
  %arrayidx85 = getelementptr [4 x i32], ptr @video_nr, i32 0, i32 %idxprom
  %77 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx85, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %74, i32 0, i32 3
  %79 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fops.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %call.i241 = tail call i32 @__video_register_device(ptr noundef %74, i32 noundef 0, i32 noundef %78, i32 noundef 1, ptr noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp87 = icmp slt i32 %call.i241, 0
  br i1 %cmp87, label %exit_statcomb, label %if.end90

if.end90:                                         ; preds = %if.end70
  %83 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %video_dev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %84, i32 0, i32 5, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %zr, ptr %driver_data.i.i, align 4
  tail call void @zoran_init_hardware(ptr noundef %zr) #7
  %86 = load i32, ptr @pass_through, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool92.not = icmp eq i32 %86, 0
  br i1 %tobool92.not, label %if.then93, label %if.end90.if.end148_crit_edge

if.end90.if.end148_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then93:                                        ; preds = %if.end90
  %decoder = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 7
  %87 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %decoder, align 4
  %tobool94.not = icmp eq ptr %88, null
  br i1 %tobool94.not, label %if.then93.if.end117_crit_edge, label %if.else96

if.then93.if.end117_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.else96:                                        ; preds = %if.then93
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %video, align 4
  %tobool97.not = icmp eq ptr %92, null
  br i1 %tobool97.not, label %if.else96.if.end117_crit_edge, label %land.lhs.true

if.else96.if.end117_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

land.lhs.true:                                    ; preds = %if.else96
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %92, i32 0, i32 10
  %93 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_stream, align 4
  %tobool100.not = icmp eq ptr %94, null
  br i1 %tobool100.not, label %land.lhs.true.if.end117_crit_edge, label %if.else102

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.else102:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool103.not = icmp eq ptr %95, null
  br i1 %tobool103.not, label %if.else102.if.else110_crit_edge, label %land.lhs.true104

if.else102.if.else110_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else110

land.lhs.true104:                                 ; preds = %if.else102
  %s_stream105 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %s_stream105 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_stream105, align 4
  %tobool106.not = icmp eq ptr %97, null
  br i1 %tobool106.not, label %land.lhs.true104.if.else110_crit_edge, label %land.lhs.true104.if.end117.sink.split_crit_edge

land.lhs.true104.if.end117.sink.split_crit_edge:  ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.sink.split

land.lhs.true104.if.else110_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else110

if.else110:                                       ; preds = %land.lhs.true104.if.else110_crit_edge, %if.else102.if.else110_crit_edge
  br label %if.end117.sink.split

if.end117.sink.split:                             ; preds = %if.else110, %land.lhs.true104.if.end117.sink.split_crit_edge
  %.sink243 = phi ptr [ %94, %if.else110 ], [ %97, %land.lhs.true104.if.end117.sink.split_crit_edge ]
  %call114 = tail call i32 %.sink243(ptr noundef nonnull %88, i32 noundef 0) #7
  br label %if.end117

if.end117:                                        ; preds = %if.end117.sink.split, %land.lhs.true.if.end117_crit_edge, %if.else96.if.end117_crit_edge, %if.then93.if.end117_crit_edge
  %encoder = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 8
  %98 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %encoder, align 8
  %tobool120.not = icmp eq ptr %99, null
  br i1 %tobool120.not, label %if.end117.if.end148_crit_edge, label %if.else122

if.end117.if.end148_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.else122:                                       ; preds = %if.end117
  %ops123 = getelementptr inbounds %struct.v4l2_subdev, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %ops123 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops123, align 4
  %video124 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %video124 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %video124, align 4
  %tobool125.not = icmp eq ptr %103, null
  br i1 %tobool125.not, label %if.else122.if.end148_crit_edge, label %land.lhs.true126

if.else122.if.end148_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

land.lhs.true126:                                 ; preds = %if.else122
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %tobool129.not = icmp eq ptr %105, null
  br i1 %tobool129.not, label %land.lhs.true126.if.end148_crit_edge, label %if.else131

land.lhs.true126.if.end148_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.else131:                                       ; preds = %land.lhs.true126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool132.not = icmp eq ptr %106, null
  br i1 %tobool132.not, label %if.else131.if.else139_crit_edge, label %land.lhs.true133

if.else131.if.else139_crit_edge:                  ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else139

land.lhs.true133:                                 ; preds = %if.else131
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %tobool135.not = icmp eq ptr %108, null
  br i1 %tobool135.not, label %land.lhs.true133.if.else139_crit_edge, label %land.lhs.true133.if.end148.sink.split_crit_edge

land.lhs.true133.if.end148.sink.split_crit_edge:  ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.sink.split

land.lhs.true133.if.else139_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else139

if.else139:                                       ; preds = %land.lhs.true133.if.else139_crit_edge, %if.else131.if.else139_crit_edge
  br label %if.end148.sink.split

if.end148.sink.split:                             ; preds = %if.else139, %land.lhs.true133.if.end148.sink.split_crit_edge
  %.sink244 = phi ptr [ %105, %if.else139 ], [ %108, %land.lhs.true133.if.end148.sink.split_crit_edge ]
  %call138 = tail call i32 %.sink244(ptr noundef nonnull %99, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  br label %if.end148

if.end148:                                        ; preds = %if.end148.sink.split, %land.lhs.true126.if.end148_crit_edge, %if.else122.if.end148_crit_edge, %if.end117.if.end148_crit_edge, %if.end90.if.end148_crit_edge
  %initialized = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 12
  %109 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %initialized, align 8
  br label %cleanup

exit_statcomb:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pci_dev, align 8
  %dev150 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %112 = ptrtoint ptr %stat_comb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %stat_comb, align 8
  %114 = ptrtoint ptr %p_scb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %p_scb, align 4
  tail call void @dma_free_attrs(ptr noundef %dev150, i32 noundef 32, ptr noundef %113, i32 noundef %115, i32 noundef 0) #7
  br label %exit_statcom

exit_statcom:                                     ; preds = %exit_statcomb, %for.body.preheader.exit_statcom_crit_edge
  %err.0 = phi i32 [ %call.i241, %exit_statcomb ], [ -12, %for.body.preheader.exit_statcom_crit_edge ]
  %116 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pci_dev, align 8
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %118 = ptrtoint ptr %stat_com to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %stat_com, align 8
  %120 = ptrtoint ptr %p_sc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %p_sc, align 4
  tail call void @dma_free_attrs(ptr noundef %dev154, i32 noundef 16, ptr noundef %119, i32 noundef %121, i32 noundef 0) #7
  br label %exit_video

exit_video:                                       ; preds = %exit_statcom, %if.end52.exit_video_crit_edge
  %err.1 = phi i32 [ %err.0, %exit_statcom ], [ -12, %if.end52.exit_video_crit_edge ]
  %122 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %video_dev, align 8
  tail call void @kfree(ptr noundef %123) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_video, %if.end148, %zoran_open_init_params.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end148 ], [ %err.1, %exit_video ], [ -12, %zoran_open_init_params.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videocodec_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @GPIO(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_video_set_ctrl(ptr nocapture noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10291459, i32 %1)
  %cond = icmp eq i32 %1, 10291459
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -128
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %jpg_settings = getelementptr i8, ptr %3, i32 3064
  %jpg_comp = getelementptr i8, ptr %3, i32 3104
  %6 = ptrtoint ptr %jpg_comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %jpg_comp, align 8
  %call = tail call i32 @zoran_check_jpg_settings(ptr noundef %add.ptr, ptr noundef %jpg_settings, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dc10_init(ptr noundef %zr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dc10_init.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dc10_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dc10_init.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @GPIO(ptr noundef %zr, i32 noundef 4, i32 noundef 0) #7
  tail call void @GPIO(ptr noundef %zr, i32 noundef 5, i32 noundef 1) #7
  tail call void @GPIO(ptr noundef %zr, i32 noundef 7, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dc10plus_init(ptr nocapture noundef readonly %zr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dc10plus_init.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dc10plus_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dc10plus_init.__UNIQUE_ID_ddebug330, ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lml33_init(ptr noundef %zr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lml33_init.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lml33_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lml33_init.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.105) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @GPIO(ptr noundef %zr, i32 noundef 2, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buz_init(ptr nocapture noundef readonly %zr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buz_init.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buz_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @buz_init.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.106) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pci_dev3 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %2 = ptrtoint ptr %pci_dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev3, align 8
  %call4 = tail call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 252, i32 noundef -1872228587) #7
  %4 = ptrtoint ptr %pci_dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev3, align 8
  %call6 = tail call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 12, i32 noundef 73760) #7
  %6 = ptrtoint ptr %pci_dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev3, align 8
  %call8 = tail call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef 232, i32 noundef -1071644672) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avs6eyes_init(ptr noundef %zr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @default_mux, align 4
  tail call void @GPIO(ptr noundef %zr, i32 noundef 4, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 429496) #7
  tail call void @GPIO(ptr noundef %zr, i32 noundef 0, i32 noundef 1) #7
  tail call void @GPIO(ptr noundef %zr, i32 noundef 1, i32 noundef 0) #7
  %and = and i32 %0, 1
  tail call void @GPIO(ptr noundef %zr, i32 noundef 2, i32 noundef %and) #7
  tail call void @GPIO(ptr noundef %zr, i32 noundef 3, i32 noundef 0) #7
  tail call void @GPIO(ptr noundef %zr, i32 noundef 4, i32 noundef 0) #7
  %and1 = and i32 %0, 2
  tail call void @GPIO(ptr noundef %zr, i32 noundef 5, i32 noundef %and1) #7
  tail call void @GPIO(ptr noundef %zr, i32 noundef 6, i32 noundef 0) #7
  %and2 = and i32 %0, 4
  tail call void @GPIO(ptr noundef %zr, i32 noundef 7, i32 noundef %and2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zoran_i2c_setsda(ptr nocapture noundef %data, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %i2cbr1 = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %i2cbr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2cbr1, align 8
  %and = and i32 %1, -3
  %masksel = select i1 %tobool.not, i32 0, i32 2
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2cbr1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !390
  tail call void @arm_heavy_mb() #7
  %i2cbr2 = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %i2cbr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2cbr2, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 19
  %5 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !388
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zoran_i2c_setscl(ptr nocapture noundef %data, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp ne i32 %state, 0
  %i2cbr1 = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %i2cbr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2cbr1, align 8
  %and = and i32 %1, -2
  %masksel = zext i1 %tobool.not to i32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2cbr1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !391
  tail call void @arm_heavy_mb() #7
  %i2cbr2 = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %i2cbr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2cbr2, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 19
  %5 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !388
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_i2c_getsda(ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !392
  %3 = lshr i32 %2, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !393
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_i2c_getscl(ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !392
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !394
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36060_read(ptr nocapture noundef readonly %codec, i16 noundef zeroext %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %master_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data, align 4
  %data = getelementptr inbounds %struct.videocodec_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @post_office_wait(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %reg to i32
  %4 = lshr i32 %conv, 8
  %call2 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %and = and i32 %conv, 255
  %call6 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 0, i32 noundef 2, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @post_office_read(ptr noundef %3, i32 noundef 0, i32 noundef 3) #7
  %and9 = and i32 %call8, 255
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and9, %if.end ], [ -1, %lor.lhs.false4.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zr36060_write(ptr nocapture noundef readonly %codec, i16 noundef zeroext %reg, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %master_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data, align 4
  %data = getelementptr inbounds %struct.videocodec_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @post_office_wait(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %reg to i32
  %4 = lshr i32 %conv, 8
  %call1 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %and = and i32 %conv, 255
  %call5 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 0, i32 noundef 2, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %val, 255
  %call8 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 0, i32 noundef 3, i32 noundef %and7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36050_read(ptr nocapture noundef readonly %codec, i16 noundef zeroext %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %master_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data, align 4
  %data = getelementptr inbounds %struct.videocodec_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @post_office_wait(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %reg to i32
  %4 = lshr i32 %conv, 2
  %call2 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %conv, 3
  %call5 = tail call i32 @post_office_read(ptr noundef %3, i32 noundef 0, i32 noundef %and) #7
  %and6 = and i32 %call5, 255
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and6, %if.end ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zr36050_write(ptr nocapture noundef readonly %codec, i16 noundef zeroext %reg, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %master_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data, align 4
  %data = getelementptr inbounds %struct.videocodec_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @post_office_wait(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %reg to i32
  %4 = lshr i32 %conv, 2
  %call1 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %conv, 3
  %and4 = and i32 %val, 255
  %call5 = tail call i32 @post_office_write(ptr noundef %3, i32 noundef 0, i32 noundef %and, i32 noundef %and4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36016_read(ptr nocapture noundef readonly %codec, i16 noundef zeroext %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %master_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data, align 4
  %data = getelementptr inbounds %struct.videocodec_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @post_office_wait(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = and i16 %reg, 3
  %and = zext i16 %4 to i32
  %call2 = tail call i32 @post_office_read(ptr noundef %3, i32 noundef 2, i32 noundef %and) #7
  %and3 = and i32 %call2, 255
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and3, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_office_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zoran_queue_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zoran_init_hardware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zoran_queue_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zoran_set_pci_master(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !51, !53, !55, !56, !58, !60, !61, !63, !65, !67, !68, !70, !72, !74, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !139, !140, !141, !143, !145, !147, !148, !149, !150, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !288, !289, !291, !293, !295, !297, !299, !300, !302, !304, !306, !308, !310, !311, !313, !315, !317, !319, !321, !323, !325, !327, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !347, !348, !349, !351, !352, !353, !354, !356, !357, !358, !360, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375}
!llvm.module.flags = !{!376, !377, !378, !379, !380, !381, !382, !383}
!llvm.ident = !{!384}

!0 = !{ptr @__param_card, !1, !"__param_card", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_cardtype300, !1, !"__UNIQUE_ID_cardtype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_card301, !4, !"__UNIQUE_ID_card301", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 37, i32 1}
!5 = !{ptr @__param_vidmem, !6, !"__param_vidmem", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 47, i32 1}
!7 = !{ptr @__UNIQUE_ID_vidmemtype302, !6, !"__UNIQUE_ID_vidmemtype302", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_vidmem303, !9, !"__UNIQUE_ID_vidmem303", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 48, i32 1}
!10 = !{ptr @__param_default_input, !11, !"__param_default_input", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 53, i32 1}
!12 = !{ptr @__UNIQUE_ID_default_inputtype304, !11, !"__UNIQUE_ID_default_inputtype304", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_default_input305, !14, !"__UNIQUE_ID_default_input305", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 54, i32 1}
!15 = !{ptr @__param_default_mux, !16, !"__param_default_mux", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 58, i32 1}
!17 = !{ptr @__UNIQUE_ID_default_muxtype306, !16, !"__UNIQUE_ID_default_muxtype306", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_default_mux307, !19, !"__UNIQUE_ID_default_mux307", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 59, i32 1}
!20 = !{ptr @__param_default_norm, !21, !"__param_default_norm", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 63, i32 1}
!22 = !{ptr @__UNIQUE_ID_default_normtype308, !21, !"__UNIQUE_ID_default_normtype308", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_default_norm309, !24, !"__UNIQUE_ID_default_norm309", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 64, i32 1}
!25 = !{ptr @__param_video_nr, !26, !"__param_video_nr", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 68, i32 1}
!27 = !{ptr @__UNIQUE_ID_video_nrtype310, !26, !"__UNIQUE_ID_video_nrtype310", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_video_nr311, !29, !"__UNIQUE_ID_video_nr311", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 69, i32 1}
!30 = !{ptr @v4l_nbufs, !31, !"v4l_nbufs", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 71, i32 5}
!32 = !{ptr @v4l_bufsize, !33, !"v4l_bufsize", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 72, i32 5}
!34 = !{ptr @__param_v4l_nbufs, !35, !"__param_v4l_nbufs", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 73, i32 1}
!36 = !{ptr @__UNIQUE_ID_v4l_nbufstype312, !35, !"__UNIQUE_ID_v4l_nbufstype312", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_v4l_nbufs313, !38, !"__UNIQUE_ID_v4l_nbufs313", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 74, i32 1}
!39 = !{ptr @__param_v4l_bufsize, !40, !"__param_v4l_bufsize", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 75, i32 1}
!41 = !{ptr @__UNIQUE_ID_v4l_bufsizetype314, !40, !"__UNIQUE_ID_v4l_bufsizetype314", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_v4l_bufsize315, !43, !"__UNIQUE_ID_v4l_bufsize315", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 76, i32 1}
!44 = !{ptr @jpg_nbufs, !45, !"jpg_nbufs", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 78, i32 5}
!46 = !{ptr @jpg_bufsize, !47, !"jpg_bufsize", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 79, i32 5}
!48 = !{ptr @__param_jpg_nbufs, !49, !"__param_jpg_nbufs", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 80, i32 1}
!50 = !{ptr @__UNIQUE_ID_jpg_nbufstype316, !49, !"__UNIQUE_ID_jpg_nbufstype316", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_jpg_nbufs317, !52, !"__UNIQUE_ID_jpg_nbufs317", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 81, i32 1}
!53 = !{ptr @__param_jpg_bufsize, !54, !"__param_jpg_bufsize", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 82, i32 1}
!55 = !{ptr @__UNIQUE_ID_jpg_bufsizetype318, !54, !"__UNIQUE_ID_jpg_bufsizetype318", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_jpg_bufsize319, !57, !"__UNIQUE_ID_jpg_bufsize319", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 83, i32 1}
!58 = !{ptr @__param_pass_through, !59, !"__param_pass_through", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 88, i32 1}
!60 = !{ptr @__UNIQUE_ID_pass_throughtype320, !59, !"__UNIQUE_ID_pass_throughtype320", i1 false, i1 false}
!61 = !{ptr @__UNIQUE_ID_pass_through321, !62, !"__UNIQUE_ID_pass_through321", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 89, i32 1}
!63 = !{ptr @zr36067_debug, !64, !"zr36067_debug", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 92, i32 5}
!65 = !{ptr @__param_debug, !66, !"__param_debug", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 93, i32 1}
!67 = !{ptr @__UNIQUE_ID_debugtype322, !66, !"__UNIQUE_ID_debugtype322", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_debug323, !69, !"__UNIQUE_ID_debug323", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 94, i32 1}
!70 = !{ptr @__UNIQUE_ID_description324, !71, !"__UNIQUE_ID_description324", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 98, i32 1}
!72 = !{ptr @__UNIQUE_ID_author325, !73, !"__UNIQUE_ID_author325", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 99, i32 1}
!74 = !{ptr @__UNIQUE_ID_file326, !75, !"__UNIQUE_ID_file326", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 100, i32 1}
!76 = !{ptr @__UNIQUE_ID_license327, !75, !"__UNIQUE_ID_license327", i1 false, i1 false}
!77 = !{ptr @__UNIQUE_ID_version328, !78, !"__UNIQUE_ID_version328", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 101, i32 1}
!79 = !{ptr @.str, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.1, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.2, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__modver_attr, !78, !"__modver_attr", i1 false, i1 false}
!83 = !{ptr @.str.3, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 665, i32 2}
!85 = !{ptr @.str.4, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.5, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @zoran_check_jpg_settings.__UNIQUE_ID_ddebug333, !84, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!88 = !{ptr @.str.6, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 668, i32 2}
!90 = !{ptr @zoran_check_jpg_settings.__UNIQUE_ID_ddebug334, !89, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!91 = !{ptr @.str.7, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 699, i32 4}
!93 = !{ptr @zoran_check_jpg_settings.__UNIQUE_ID_ddebug335, !92, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!94 = !{ptr @.str.8, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 774, i32 4}
!96 = !{ptr @.str.9, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.10, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @zoran_check_jpg_settings._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @zoran_check_jpg_settings._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.12, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 779, i32 3}
!102 = !{ptr @zoran_check_jpg_settings._entry.11, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @zoran_check_jpg_settings._entry_ptr.13, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.14, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 834, i32 3}
!106 = !{ptr @.str.15, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @zoran_open_init_params._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @zoran_open_init_params._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @__initcall__kmod_zr36067__360_1333_zoran_init6, !110, !"__initcall__kmod_zr36067__360_1333_zoran_init6", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1333, i32 1}
!111 = !{ptr @__exitcall_zoran_exit, !112, !"__exitcall_zoran_exit", i1 false, i1 false}
!112 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1334, i32 1}
!113 = !{ptr @vidmem, !114, !"vidmem", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 46, i32 22}
!115 = !{ptr @default_input, !116, !"default_input", i1 false, i1 false}
!116 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 52, i32 21}
!117 = !{ptr @default_norm, !118, !"default_norm", i1 false, i1 false}
!118 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 62, i32 12}
!119 = !{ptr @pass_through, !120, !"pass_through", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 87, i32 5}
!121 = !{ptr @__param_str_card, !1, !"__param_str_card", i1 false, i1 false}
!122 = !{ptr @__param_arr_card, !1, !"__param_arr_card", i1 false, i1 false}
!123 = !{ptr @card, !124, !"card", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 35, i32 12}
!125 = !{ptr @__param_str_vidmem, !6, !"__param_str_vidmem", i1 false, i1 false}
!126 = !{ptr @__param_str_default_input, !11, !"__param_str_default_input", i1 false, i1 false}
!127 = !{ptr @__param_str_default_mux, !16, !"__param_str_default_mux", i1 false, i1 false}
!128 = !{ptr @default_mux, !129, !"default_mux", i1 false, i1 false}
!129 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 57, i32 12}
!130 = !{ptr @__param_str_default_norm, !21, !"__param_str_default_norm", i1 false, i1 false}
!131 = !{ptr @__param_str_video_nr, !26, !"__param_str_video_nr", i1 false, i1 false}
!132 = !{ptr @__param_arr_video_nr, !26, !"__param_arr_video_nr", i1 false, i1 false}
!133 = !{ptr @video_nr, !134, !"video_nr", i1 false, i1 false}
!134 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 67, i32 12}
!135 = !{ptr @__param_str_v4l_nbufs, !35, !"__param_str_v4l_nbufs", i1 false, i1 false}
!136 = !{ptr @__param_str_v4l_bufsize, !40, !"__param_str_v4l_bufsize", i1 false, i1 false}
!137 = !{ptr @__param_str_jpg_nbufs, !49, !"__param_str_jpg_nbufs", i1 false, i1 false}
!138 = !{ptr @__param_str_jpg_bufsize, !54, !"__param_str_jpg_bufsize", i1 false, i1 false}
!139 = !{ptr @__param_str_pass_through, !59, !"__param_str_pass_through", i1 false, i1 false}
!140 = !{ptr @__param_str_debug, !66, !"__param_str_debug", i1 false, i1 false}
!141 = !{ptr @zoran_driver, !142, !"zoran_driver", i1 false, i1 false}
!142 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1277, i32 26}
!143 = !{ptr @zr36067_pci_tbl, !144, !"zr36067_pci_tbl", i1 false, i1 false}
!144 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 107, i32 35}
!145 = !{ptr @.str.16, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1077, i32 3}
!147 = !{ptr @.str.17, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @zoran_probe._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @zoran_probe._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.18, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1090, i32 51}
!152 = !{ptr @zoran_probe._key, !153, !"_key", i1 false, i1 false}
!153 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1091, i32 6}
!154 = !{ptr @.str.19, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @zoran_probe.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1097, i32 2}
!157 = !{ptr @.str.20, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @zoran_probe.__key.21, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1098, i32 2}
!160 = !{ptr @.str.22, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.24, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1103, i32 2}
!163 = !{ptr @.str.25, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @zoran_probe._entry.23, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @zoran_probe._entry_ptr.26, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.28, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1107, i32 3}
!168 = !{ptr @zoran_probe._entry.27, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @zoran_probe._entry_ptr.29, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.31, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1113, i32 4}
!172 = !{ptr @zoran_probe._entry.30, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @zoran_probe._entry_ptr.32, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.34, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1114, i32 4}
!176 = !{ptr @zoran_probe._entry.33, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @zoran_probe._entry_ptr.35, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.37, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1120, i32 4}
!180 = !{ptr @zoran_probe._entry.36, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @zoran_probe._entry_ptr.38, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.40, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1123, i32 3}
!184 = !{ptr @zoran_probe._entry.39, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @zoran_probe._entry_ptr.41, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.43, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1127, i32 4}
!188 = !{ptr @zoran_probe._entry.42, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @zoran_probe._entry_ptr.44, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.45, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1141, i32 51}
!192 = !{ptr @.str.47, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1150, i32 3}
!194 = !{ptr @zoran_probe._entry.46, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @zoran_probe._entry_ptr.48, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.50, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1157, i32 4}
!198 = !{ptr @zoran_probe._entry.49, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @zoran_probe._entry_ptr.51, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1159, i32 4}
!202 = !{ptr @zoran_probe._entry.52, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @zoran_probe._entry_ptr.54, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.56, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1162, i32 4}
!206 = !{ptr @zoran_probe._entry.55, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @zoran_probe._entry_ptr.57, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.59, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1172, i32 3}
!210 = !{ptr @zoran_probe._entry.58, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @zoran_probe._entry_ptr.60, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.62, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1178, i32 2}
!214 = !{ptr @zoran_probe._entry.61, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @zoran_probe._entry_ptr.63, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.65, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1181, i32 3}
!218 = !{ptr @zoran_probe._entry.64, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @zoran_probe._entry_ptr.66, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.68, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1194, i32 2}
!222 = !{ptr @zoran_probe._entry.67, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @zoran_probe._entry_ptr.69, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.71, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1201, i32 5}
!226 = !{ptr @zoran_probe._entry.70, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @zoran_probe._entry_ptr.72, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @zoran_probe._entry.73, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1209, i32 5}
!230 = !{ptr @zoran_probe._entry_ptr.74, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.76, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1224, i32 4}
!233 = !{ptr @zoran_probe._entry.75, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @zoran_probe._entry_ptr.77, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.79, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1228, i32 4}
!237 = !{ptr @zoran_probe._entry.78, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @zoran_probe._entry_ptr.80, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.82, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1238, i32 4}
!241 = !{ptr @zoran_probe._entry.81, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @zoran_probe._entry_ptr.83, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.85, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1242, i32 4}
!245 = !{ptr @zoran_probe._entry.84, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @zoran_probe._entry_ptr.86, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.88, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1249, i32 3}
!249 = !{ptr @zoran_probe._entry.87, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @zoran_probe._entry_ptr.89, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @zoran_num, !252, !"zoran_num", i1 false, i1 false}
!252 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 117, i32 21}
!253 = !{ptr @zoran_video_ctrl_ops, !254, !"zoran_video_ctrl_ops", i1 false, i1 false}
!254 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1050, i32 35}
!255 = !{ptr @.str.90, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 317, i32 18}
!257 = !{ptr @.str.91, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 346, i32 18}
!259 = !{ptr @.str.92, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 348, i32 18}
!261 = !{ptr @.str.93, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 467, i32 18}
!263 = !{ptr @.str.94, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 469, i32 18}
!265 = !{ptr @.str.95, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 496, i32 18}
!267 = !{ptr @.str.96, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 498, i32 18}
!269 = !{ptr @.str.97, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 525, i32 18}
!271 = !{ptr @.str.98, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 527, i32 18}
!273 = !{ptr @.str.99, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 555, i32 18}
!275 = !{ptr @.str.100, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 557, i32 18}
!277 = !{ptr @zoran_cards, !278, !"zoran_cards", i1 false, i1 false}
!278 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 313, i32 25}
!279 = !{ptr @vpx3220_addrs, !280, !"vpx3220_addrs", i1 false, i1 false}
!280 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 302, i32 29}
!281 = !{ptr @f50sqpixel_dc10, !282, !"f50sqpixel_dc10", i1 false, i1 false}
!282 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 282, i32 28}
!283 = !{ptr @f60sqpixel_dc10, !284, !"f60sqpixel_dc10", i1 false, i1 false}
!284 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 283, i32 28}
!285 = !{ptr @.str.102, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 197, i32 2}
!287 = !{ptr @.str.103, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @dc10_init.__UNIQUE_ID_ddebug329, !286, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!289 = !{ptr @saa7110_addrs, !290, !"saa7110_addrs", i1 false, i1 false}
!290 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 303, i32 29}
!291 = !{ptr @adv717x_addrs, !292, !"adv717x_addrs", i1 false, i1 false}
!292 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 306, i32 29}
!293 = !{ptr @f50sqpixel, !294, !"f50sqpixel", i1 false, i1 false}
!294 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 273, i32 28}
!295 = !{ptr @f60sqpixel, !296, !"f60sqpixel", i1 false, i1 false}
!296 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 274, i32 28}
!297 = !{ptr @.str.104, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 208, i32 2}
!299 = !{ptr @dc10plus_init.__UNIQUE_ID_ddebug330, !298, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!300 = !{ptr @bt819_addrs, !301, !"bt819_addrs", i1 false, i1 false}
!301 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 309, i32 29}
!302 = !{ptr @bt856_addrs, !303, !"bt856_addrs", i1 false, i1 false}
!303 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 310, i32 29}
!304 = !{ptr @f50ccir601_lml33, !305, !"f50ccir601_lml33", i1 false, i1 false}
!305 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 278, i32 28}
!306 = !{ptr @f60ccir601_lml33, !307, !"f60ccir601_lml33", i1 false, i1 false}
!307 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 279, i32 28}
!308 = !{ptr @.str.105, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 223, i32 2}
!310 = !{ptr @lml33_init.__UNIQUE_ID_ddebug332, !309, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!311 = !{ptr @saa7114_addrs, !312, !"saa7114_addrs", i1 false, i1 false}
!312 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 305, i32 29}
!313 = !{ptr @f50ccir601_lm33r10, !314, !"f50ccir601_lm33r10", i1 false, i1 false}
!314 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 289, i32 28}
!315 = !{ptr @f60ccir601_lm33r10, !316, !"f60ccir601_lm33r10", i1 false, i1 false}
!316 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 290, i32 28}
!317 = !{ptr @saa7111_addrs, !318, !"saa7111_addrs", i1 false, i1 false}
!318 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 304, i32 29}
!319 = !{ptr @saa7185_addrs, !320, !"saa7185_addrs", i1 false, i1 false}
!320 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 308, i32 29}
!321 = !{ptr @f50ccir601, !322, !"f50ccir601", i1 false, i1 false}
!322 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 275, i32 28}
!323 = !{ptr @f60ccir601, !324, !"f60ccir601", i1 false, i1 false}
!324 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 276, i32 28}
!325 = !{ptr @.str.106, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 213, i32 2}
!327 = !{ptr @buz_init.__UNIQUE_ID_ddebug331, !326, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!328 = !{ptr @ks0127_addrs, !329, !"ks0127_addrs", i1 false, i1 false}
!329 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 307, i32 29}
!330 = !{ptr @bt866_addrs, !331, !"bt866_addrs", i1 false, i1 false}
!331 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 311, i32 29}
!332 = !{ptr @f50ccir601_avs6eyes, !333, !"f50ccir601_avs6eyes", i1 false, i1 false}
!333 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 299, i32 28}
!334 = !{ptr @f60ccir601_avs6eyes, !335, !"f60ccir601_avs6eyes", i1 false, i1 false}
!335 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 300, i32 28}
!336 = !{ptr @zoran_i2c_bit_data_template, !337, !"zoran_i2c_bit_data_template", i1 false, i1 false}
!337 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 633, i32 39}
!338 = !{ptr @.str.107, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 256, i32 10}
!340 = !{ptr @.str.108, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 259, i32 10}
!342 = !{ptr @.str.109, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 262, i32 10}
!344 = !{ptr @.str.110, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 845, i32 2}
!346 = !{ptr @.str.111, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @zr36057_init._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @zr36057_init._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.113, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 861, i32 3}
!351 = !{ptr @.str.114, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @zr36057_init._entry.112, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @zr36057_init._entry_ptr.115, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.117, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 867, i32 3}
!356 = !{ptr @zr36057_init._entry.116, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @zr36057_init._entry_ptr.118, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.119, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1288, i32 2}
!360 = !{ptr @.str.120, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @zoran_init._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @zoran_init._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.122, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1313, i32 3}
!365 = !{ptr @zoran_init._entry.121, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @zoran_init._entry_ptr.123, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.124, !364, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.126, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1317, i32 3}
!370 = !{ptr @zoran_init._entry.125, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @zoran_init._entry_ptr.127, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.129, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/staging/media/zoran/zoran_card.c", i32 1321, i32 3}
!374 = !{ptr @zoran_init._entry.128, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @zoran_init._entry_ptr.130, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{i32 1, !"wchar_size", i32 2}
!377 = !{i32 1, !"min_enum_size", i32 4}
!378 = !{i32 8, !"branch-target-enforcement", i32 0}
!379 = !{i32 8, !"sign-return-address", i32 0}
!380 = !{i32 8, !"sign-return-address-all", i32 0}
!381 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!382 = !{i32 7, !"uwtable", i32 1}
!383 = !{i32 7, !"frame-pointer", i32 2}
!384 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!385 = !{i64 2148792526, i64 2148792531, i64 2148792544, i64 2148792588, i64 2148792622, i64 2148792643}
!386 = !{!"auto-init"}
!387 = !{i64 2156945807}
!388 = !{i64 6866756}
!389 = !{i64 2156898529}
!390 = !{i64 2156805757}
!391 = !{i64 2156806267}
!392 = !{i64 6867174}
!393 = !{i64 2156804893}
!394 = !{i64 2156805462}
