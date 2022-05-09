; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7146/hexium_gemini.c_pt.bc'
source_filename = "../drivers/media/pci/saa7146/hexium_gemini.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
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
%struct.saa7146_pci_extension_data = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hexium_data = type { i8, i8 }
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7146_dma = type { i32, ptr }
%struct.hexium = type { i32, %struct.video_device, %struct.i2c_adapter, i32, i64 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }

@__param_str_debug = internal constant [20 x i8] c"hexium_gemini.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [33 x i8] c"hexium_gemini.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [41 x i8] c"hexium_gemini.parm=debug:debug verbosity\00", section ".modinfo", align 1
@hexium_extension = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"hexium gemini\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr null, ptr @hexium_attach, ptr @hexium_detach, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_hexium_gemini__309_420_hexium_init_module6 = internal global ptr @hexium_init_module, section ".initcall6.init", align 4
@__exitcall_hexium_cleanup_module = internal global ptr @hexium_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [85 x i8] c"hexium_gemini.description=video4linux-2 driver for Hexium Gemini frame grabber cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [54 x i8] c"hexium_gemini.author=Michael Hunold <michael@mihu.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [59 x i8] c"hexium_gemini.file=drivers/media/pci/saa7146/hexium_gemini\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [26 x i8] c"hexium_gemini.license=GPL\00", section ".modinfo", align 1
@pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 6088, i32 9217, i32 0, i32 0, i32 ptrtoint (ptr @hexium_gemini_4bnc to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6088, i32 9218, i32 0, i32 0, i32 ptrtoint (ptr @hexium_gemini_dual_4bnc to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hexium_gemini_4bnc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @hexium_extension, ptr @.str }, [24 x i8] zeroinitializer }, align 32
@hexium_gemini_dual_4bnc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @hexium_extension, ptr @.str.1 }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hexium Gemini (4 BNC)\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hexium Gemini Dual (4 BNC)\00", [37 x i8] zeroinitializer }, align 32
@hexium_attach.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hexium_gemini\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hexium_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/saa7146/hexium_gemini.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(): \0A\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hexium_gemini: %s(): \0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hexium gemini\00", [18 x i8] zeroinitializer }, align 32
@hexium_attach.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): cannot register i2c-device. skipping.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"hexium_gemini: %s(): cannot register i2c-device. skipping.\0A\00", [36 x i8] zeroinitializer }, align 32
@hexium_pal = internal constant { [5 x %struct.hexium_data], [22 x i8] } { [5 x %struct.hexium_data] [%struct.hexium_data { i8 1, i8 82 }, %struct.hexium_data { i8 18, i8 100 }, %struct.hexium_data { i8 45, i8 44 }, %struct.hexium_data { i8 46, i8 -101 }, %struct.hexium_data { i8 -1, i8 -1 }], [22 x i8] zeroinitializer }, align 32
@vv_data = internal global { %struct.saa7146_ext_vv, [268 x i8] } { %struct.saa7146_ext_vv { i32 9, i32 0, i32 0, i32 0, ptr @hexium_standards, i32 3, ptr @std_callback, %struct.v4l2_ioctl_ops zeroinitializer, %struct.v4l2_ioctl_ops zeroinitializer, ptr null, %struct.v4l2_file_operations zeroinitializer }, [268 x i8] zeroinitializer }, align 32
@hexium_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013hexium_gemini: cannot register capture v4l2 device. skipping.\0A\00", [63 x i8] zeroinitializer }, align 32
@hexium_attach._entry_ptr = internal global ptr @hexium_attach._entry, section ".printk_index", align 4
@hexium_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016hexium_gemini: found 'hexium gemini' frame grabber-%d\0A\00", [39 x i8] zeroinitializer }, align 32
@hexium_attach._entry_ptr.13 = internal global ptr @hexium_attach._entry.11, section ".printk_index", align 4
@hexium_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hexium_init_done.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hexium_init_done\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): hexium_init_done called\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hexium_gemini: %s(): hexium_init_done called\0A\00", [50 x i8] zeroinitializer }, align 32
@hexium_init_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013hexium_gemini: hexium_init_done() failed for address 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@hexium_init_done._entry_ptr = internal global ptr @hexium_init_done._entry, section ".printk_index", align 4
@hexium_ks0127b = internal constant { <{ [63 x i8], [193 x i8] }>, [64 x i8] } { <{ [63 x i8], [193 x i8] }> <{ [63 x i8] c"\00R0@\01\0C*\10\00\00\00`\00\00\0F\06\00\00\E4\C0\00\00\00\00\14\9B\FE\FF\FC\FF\03\22\00\00\00\00\00\00\00\00\00\00\00\00\00,\9B\00\00\00\10\80\80\10\80\80\01\04\00\00\00)\C0", [193 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@hexium_set_standard.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str.4, ptr @.str.5, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hexium_set_standard\00", [44 x i8] zeroinitializer }, align 32
@hexium_set_standard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.19, ptr @.str.4, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013hexium_gemini: hexium_init_done: hexium_set_standard() failed for address 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@hexium_set_standard._entry_ptr = internal global ptr @hexium_set_standard._entry, section ".printk_index", align 4
@hexium_set_input.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str.4, ptr @.str.5, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hexium_set_input\00", [47 x i8] zeroinitializer }, align 32
@hexium_input_select = internal constant { [9 x %struct.hexium_data], [46 x i8] } { [9 x %struct.hexium_data] [%struct.hexium_data { i8 2, i8 96 }, %struct.hexium_data { i8 2, i8 100 }, %struct.hexium_data { i8 2, i8 97 }, %struct.hexium_data { i8 2, i8 101 }, %struct.hexium_data { i8 2, i8 98 }, %struct.hexium_data { i8 2, i8 102 }, %struct.hexium_data { i8 2, i8 104 }, %struct.hexium_data { i8 2, i8 105 }, %struct.hexium_data { i8 2, i8 106 }], [46 x i8] zeroinitializer }, align 32
@hexium_standards = internal global { [3 x %struct.saa7146_standard], [40 x i8] } { [3 x %struct.saa7146_standard] [%struct.saa7146_standard { ptr @.str.22, i64 255, i32 28, i32 288, i32 1, i32 680, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.23, i64 45056, i32 28, i32 240, i32 1, i32 640, i32 480, i32 640 }, %struct.saa7146_standard { ptr @.str.24, i64 16711680, i32 28, i32 288, i32 1, i32 720, i32 576, i32 768 }], [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@hexium_ntsc = internal constant { [5 x %struct.hexium_data], [22 x i8] } { [5 x %struct.hexium_data] [%struct.hexium_data { i8 1, i8 83 }, %struct.hexium_data { i8 18, i8 4 }, %struct.hexium_data { i8 45, i8 35 }, %struct.hexium_data { i8 46, i8 -127 }, %struct.hexium_data { i8 -1, i8 -1 }], [22 x i8] zeroinitializer }, align 32
@hexium_secam = internal constant { [5 x %struct.hexium_data], [22 x i8] } { [5 x %struct.hexium_data] [%struct.hexium_data { i8 1, i8 82 }, %struct.hexium_data { i8 18, i8 100 }, %struct.hexium_data { i8 45, i8 44 }, %struct.hexium_data { i8 46, i8 -101 }, %struct.hexium_data { i8 -1, i8 -1 }], [22 x i8] zeroinitializer }, align 32
@vidioc_enum_input.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): VIDIOC_ENUMINPUT %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hexium_gemini: %s(): VIDIOC_ENUMINPUT %d\0A\00", [54 x i8] zeroinitializer }, align 32
@hexium_inputs = internal constant { [9 x %struct.v4l2_input], [176 x i8] } { [9 x %struct.v4l2_input] [%struct.v4l2_input { i32 0, [32 x i8] c"CVBS 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 1, [32 x i8] c"CVBS 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 2, [32 x i8] c"CVBS 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 3, [32 x i8] c"CVBS 4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 4, [32 x i8] c"CVBS 5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 5, [32 x i8] c"CVBS 6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 6, [32 x i8] c"Y/C 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 7, [32 x i8] c"Y/C 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 8, [32 x i8] c"Y/C 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 4, [3 x i32] zeroinitializer }], [176 x i8] zeroinitializer }, align 32
@vidioc_enum_input.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.25, ptr @.str.4, ptr @.str.28, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): v4l2_ioctl: VIDIOC_ENUMINPUT %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"hexium_gemini: %s(): v4l2_ioctl: VIDIOC_ENUMINPUT %d\0A\00", [42 x i8] zeroinitializer }, align 32
@vidioc_g_input.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_input\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): VIDIOC_G_INPUT: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hexium_gemini: %s(): VIDIOC_G_INPUT: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@vidioc_s_input.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_input\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): VIDIOC_S_INPUT %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hexium_gemini: %s(): VIDIOC_S_INPUT %d\0A\00", [56 x i8] zeroinitializer }, align 32
@hexium_detach.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hexium_detach\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): dev:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hexium_gemini: %s(): dev:%p\0A\00", [35 x i8] zeroinitializer }, align 32
@hexium_init_module.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hexium_init_module\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): failed to register extension\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"hexium_gemini: %s(): failed to register extension\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 64, i64 255, i64 45056, i64 16711680]
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 20, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"hexium_extension\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 391, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 361, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"hexium_gemini_4bnc\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 351, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"hexium_gemini_dual_4bnc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 356, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 352, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 357, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 250, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 261, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 265, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"hexium_pal\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 101, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"vv_data\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 383, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 299, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 306, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"hexium_num\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 25, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 156, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 162, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"hexium_ks0127b\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 66, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 189, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 194, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 174, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"hexium_input_select\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 113, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"hexium_standards\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 127, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 129, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 134, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 139, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"hexium_ntsc\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 105, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"hexium_secam\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 109, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 205, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"hexium_inputs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 31, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 212, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 223, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 232, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 316, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [45 x i8] c"../drivers/media/pci/saa7146/hexium_gemini.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 408, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_hexium_cleanup_module, ptr @__initcall__kmod_hexium_gemini__309_420_hexium_init_module6, ptr @__param_debug, ptr @hexium_attach._entry, ptr @hexium_attach._entry.11, ptr @hexium_attach._entry_ptr, ptr @hexium_attach._entry_ptr.13, ptr @hexium_cleanup_module, ptr @hexium_init_done._entry, ptr @hexium_init_done._entry_ptr, ptr @hexium_set_standard._entry, ptr @hexium_set_standard._entry_ptr, ptr @debug, ptr @hexium_extension, ptr @pci_tbl, ptr @hexium_gemini_4bnc, ptr @hexium_gemini_dual_4bnc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hexium_pal, ptr @vv_data, ptr @.str.10, ptr @.str.12, ptr @hexium_num, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @hexium_ks0127b, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @hexium_input_select, ptr @hexium_standards, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @hexium_ntsc, ptr @hexium_secam, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @hexium_inputs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_extension to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_gemini_4bnc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_gemini_dual_4bnc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_pal to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv_data to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_init_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_ks0127b to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_set_standard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_input_select to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_standards to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_ntsc to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_secam to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexium_inputs to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hexium_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @hexium_extension) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hexium_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @hexium_extension) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.body2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_init_module.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_init_module, %if.then7)) #6
          to label %return [label %if.then7], !srcloc !133

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_init_module.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #6
  br label %return

return:                                           ; preds = %if.then7, %do.body2, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.body.return_crit_edge ], [ -19, %if.then7 ], [ 0, %entry.return_crit_edge ], [ -19, %do.body2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hexium_attach(ptr noundef %dev, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %data.i127 = alloca %union.i2c_smbus_data, align 2
  %data.i118 = alloca %union.i2c_smbus_data, align 2
  %data.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_attach.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_attach, %if.then5)) #6
          to label %do.end8 [label %if.then5], !srcloc !133

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_attach.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2736) #9
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %ext_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 327685) #6, !srcloc !135
  %i2c_adapter = getelementptr inbounds %struct.hexium, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.hexium, ptr %call7.i.i, i32 0, i32 2, i32 12
  %call16 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef 48) #6
  %call18 = tail call i32 @saa7146_i2c_adapter_prepare(ptr noundef %dev, ptr noundef %i2c_adapter, i32 noundef 1024) #6
  %call20 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.body22, label %if.end45

do.body22:                                        ; preds = %if.end12
  %5 = load i32, ptr @debug, align 4
  %and23 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.end44_crit_edge, label %do.body26

do.body22.do.end44_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_attach.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_attach, %if.then38)) #6
          to label %do.end44 [label %if.then38], !srcloc !133

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_attach.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %do.body26, %do.body22.do.end44_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end12
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 2, i32 noundef 80) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %add.ptr50 = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 458759) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %add.ptr55 = getelementptr i8, ptr %9, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %add.ptr60 = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 393222) #6, !srcloc !135
  %cur_input = getelementptr inbounds %struct.hexium, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cur_input, align 8
  %13 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ext_priv, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #6
  %15 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %16 = load i32, ptr @debug, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end45.do.end8.i_crit_edge, label %do.body1.i

if.end45.do.end8.i_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

do.body1.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_init_done.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_attach, %if.then5.i)) #6
          to label %do.end8.i [label %if.then5.i], !srcloc !133

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_init_done.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #6
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %if.end45.do.end8.i_crit_edge
  %i2c_adapter.i = getelementptr inbounds %struct.hexium, ptr %14, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end8.i
  %i.02.i = phi i32 [ 0, %do.end8.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x i8], ptr @hexium_ks0127b, i32 0, i32 %i.02.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %data.i, align 2
  %conv.i = trunc i32 %i.02.i to i8
  %call9.i = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %conv.i, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end15.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %i.02.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end15.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %hexium_init_done.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hexium_init_done.exit:                            ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #6
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i118) #6
  %20 = call ptr @memset(ptr %data.i118, i32 255, i32 34)
  %21 = load i32, ptr @debug, align 4
  %and.i119 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %hexium_init_done.exit.while.body.i_crit_edge, label %do.body1.i121

hexium_init_done.exit.while.body.i_crit_edge:     ; preds = %hexium_init_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.body1.i121:                                    ; preds = %hexium_init_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_standard.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_attach, %if.then5.i122)) #6
          to label %while.body.i [label %if.then5.i122], !srcloc !133

if.then5.i122:                                    ; preds = %do.body1.i121
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_standard.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19) #6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %if.then5.i122, %do.body1.i121, %hexium_init_done.exit.while.body.i_crit_edge
  %22 = phi i8 [ %27, %if.end22.i.while.body.i_crit_edge ], [ 1, %hexium_init_done.exit.while.body.i_crit_edge ], [ 1, %do.body1.i121 ], [ 1, %if.then5.i122 ]
  %i.04.i = phi i32 [ %inc.i125, %if.end22.i.while.body.i_crit_edge ], [ 0, %hexium_init_done.exit.while.body.i_crit_edge ], [ 0, %do.body1.i121 ], [ 0, %if.then5.i122 ]
  %byte.i = getelementptr %struct.hexium_data, ptr @hexium_pal, i32 %i.04.i, i32 1
  %23 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %byte.i, align 1
  %25 = ptrtoint ptr %data.i118 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %data.i118, align 2
  %call13.i = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %22, i32 noundef 2, ptr noundef nonnull %data.i118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.not.i, label %if.end22.i, label %do.end19.i

do.end19.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.04.i) #10
  br label %hexium_set_standard.exit

if.end22.i:                                       ; preds = %while.body.i
  %inc.i125 = add i32 %i.04.i, 1
  %arrayidx.i126 = getelementptr %struct.hexium_data, ptr @hexium_pal, i32 %inc.i125
  %26 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i126, align 1
  %cmp.not.i = icmp eq i8 %27, -1
  br i1 %cmp.not.i, label %if.end22.i.hexium_set_standard.exit_crit_edge, label %if.end22.i.while.body.i_crit_edge

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end22.i.hexium_set_standard.exit_crit_edge:    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexium_set_standard.exit

hexium_set_standard.exit:                         ; preds = %if.end22.i.hexium_set_standard.exit_crit_edge, %do.end19.i
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i118) #6
  %cur_std = getelementptr inbounds %struct.hexium, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %cur_std to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 255, ptr %cur_std, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i127) #6
  %29 = call ptr @memset(ptr %data.i127, i32 255, i32 34)
  %30 = load i32, ptr @debug, align 4
  %and.i128 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %hexium_set_standard.exit.hexium_set_input.exit_crit_edge, label %do.body1.i130

hexium_set_standard.exit.hexium_set_input.exit_crit_edge: ; preds = %hexium_set_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexium_set_input.exit

do.body1.i130:                                    ; preds = %hexium_set_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_input.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_attach, %if.then5.i131)) #6
          to label %hexium_set_input.exit [label %if.then5.i131], !srcloc !133

if.then5.i131:                                    ; preds = %do.body1.i130
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_input.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21) #6
  br label %hexium_set_input.exit

hexium_set_input.exit:                            ; preds = %if.then5.i131, %do.body1.i130, %hexium_set_standard.exit.hexium_set_input.exit_crit_edge
  %31 = ptrtoint ptr %data.i127 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 96, ptr %data.i127, align 2
  %call10.i = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 2, ptr noundef nonnull %data.i127) #6
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i127) #6
  %32 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %cur_input, align 8
  %call65 = call i32 @saa7146_vv_init(ptr noundef %dev, ptr noundef nonnull @vv_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %hexium_set_input.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_del_adapter(ptr noundef %i2c_adapter) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end69:                                         ; preds = %hexium_set_input.exit
  store ptr @vidioc_enum_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 65), align 4
  store ptr @vidioc_g_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 66), align 4
  store ptr @vidioc_s_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 67), align 4
  %video_dev = getelementptr inbounds %struct.hexium, ptr %call7.i.i, i32 0, i32 1
  %call70 = call i32 @saa7146_register_device(ptr noundef %video_dev, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %do.end83

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %call78 = call i32 @saa7146_vv_release(ptr noundef %dev) #6
  call void @i2c_del_adapter(ptr noundef %i2c_adapter) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

do.end83:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %33 = load i32, ptr @hexium_num, align 4
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %33) #10
  %34 = load i32, ptr @hexium_num, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr @hexium_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %do.end75, %if.then67, %do.end44, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end44 ], [ %call65, %if.then67 ], [ %call70, %do.end75 ], [ 0, %do.end83 ], [ -12, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hexium_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_detach.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hexium_detach, %if.then5)) #6
          to label %do.end8 [label %if.then5], !srcloc !133

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_detach.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef %dev) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %video_dev = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 1
  %call9 = tail call i32 @saa7146_unregister_device(ptr noundef %video_dev, ptr noundef %dev) #6
  %call10 = tail call i32 @saa7146_vv_release(ptr noundef %dev) #6
  %3 = load i32, ptr @hexium_num, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr @hexium_num, align 4
  %i2c_adapter = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_i2c_adapter_prepare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_enum_input.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_enum_input, %if.then5)) #6
          to label %do.end7 [label %if.then5], !srcloc !133

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_enum_input.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %2) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp ugt i32 %4, 8
  br i1 %cmp, label %do.end7.return_crit_edge, label %if.end10

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end10:                                         ; preds = %do.end7
  %arrayidx = getelementptr [9 x %struct.v4l2_input], ptr @hexium_inputs, i32 0, i32 %4
  %5 = call ptr @memcpy(ptr %i, ptr %arrayidx, i32 80)
  %6 = load i32, ptr @debug, align 4
  %and13 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.return_crit_edge, label %do.body16

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_enum_input.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_enum_input, %if.then28)) #6
          to label %return [label %if.then28], !srcloc !133

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_enum_input.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, i32 noundef %8) #6
  br label %return

return:                                           ; preds = %if.then28, %do.body16, %if.end10.return_crit_edge, %do.end7.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7.return_crit_edge ], [ 0, %if.end10.return_crit_edge ], [ 0, %if.then28 ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %cur_input = getelementptr inbounds %struct.hexium, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_input, align 8
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %input, align 4
  %7 = load i32, ptr @debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_g_input.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_g_input, %if.then6)) #6
          to label %do.end9 [label %if.then6], !srcloc !133

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_g_input.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %9) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %input) #2 align 64 {
entry:
  %data.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_s_input.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_input, %if.then6)) #6
          to label %do.end9 [label %if.then6], !srcloc !133

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_s_input.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %input) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %input)
  %cmp = icmp ugt i32 %input, 8
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end11

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end9
  %cur_input = getelementptr inbounds %struct.hexium, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %input, ptr %cur_input, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #6
  %6 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %7 = load i32, ptr @debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.hexium_set_input.exit_crit_edge, label %do.body1.i

if.end11.hexium_set_input.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexium_set_input.exit

do.body1.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_input.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_s_input, %if.then5.i)) #6
          to label %hexium_set_input.exit [label %if.then5.i], !srcloc !133

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_input.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21) #6
  br label %hexium_set_input.exit

hexium_set_input.exit:                            ; preds = %if.then5.i, %do.body1.i, %if.end11.hexium_set_input.exit_crit_edge
  %arrayidx.i = getelementptr [9 x %struct.hexium_data], ptr @hexium_input_select, i32 0, i32 %input
  %byte.i = getelementptr [9 x %struct.hexium_data], ptr @hexium_input_select, i32 0, i32 %input, i32 1
  %8 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %byte.i, align 1
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data.i, align 2
  %i2c_adapter.i = getelementptr inbounds %struct.hexium, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %call10.i = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %12, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #6
  br label %cleanup

cleanup:                                          ; preds = %hexium_set_input.exit, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hexium_set_input.exit ], [ -22, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @std_callback(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %std) #2 align 64 {
entry:
  %data.i42 = alloca %union.i2c_smbus_data, align 2
  %data.i21 = alloca %union.i2c_smbus_data, align 2
  %data.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %id = getelementptr inbounds %struct.saa7146_standard, ptr %std, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i64 %3, label %entry.cleanup_crit_edge [
    i64 255, label %if.then
    i64 45056, label %if.then3
    i64 16711680, label %if.then9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #6
  %4 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %5 = load i32, ptr @debug, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.while.body.lr.ph.i_crit_edge, label %do.body1.i

if.then.while.body.lr.ph.i_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_standard.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@std_callback, %if.then5.i)) #6
          to label %while.body.lr.ph.i [label %if.then5.i], !srcloc !133

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_standard.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19) #6
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then5.i, %do.body1.i, %if.then.while.body.lr.ph.i_crit_edge
  %i2c_adapter.i = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 82, ptr %data.i, align 2
  %call13.i = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.not.i, label %if.end22.i, label %while.body.lr.ph.i.do.end19.i_crit_edge

while.body.lr.ph.i.do.end19.i_crit_edge:          ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.end22.i.2.do.end19.i_crit_edge, %if.end22.i.1.do.end19.i_crit_edge, %if.end22.i.do.end19.i_crit_edge, %while.body.lr.ph.i.do.end19.i_crit_edge
  %i.04.i.lcssa = phi i32 [ 0, %while.body.lr.ph.i.do.end19.i_crit_edge ], [ 1, %if.end22.i.do.end19.i_crit_edge ], [ 2, %if.end22.i.1.do.end19.i_crit_edge ], [ 3, %if.end22.i.2.do.end19.i_crit_edge ]
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.04.i.lcssa) #10
  br label %hexium_set_standard.exit

if.end22.i:                                       ; preds = %while.body.lr.ph.i
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 100, ptr %data.i, align 2
  %call13.i.1 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 18, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.1)
  %cmp14.not.i.1 = icmp eq i32 %call13.i.1, 0
  br i1 %cmp14.not.i.1, label %if.end22.i.1, label %if.end22.i.do.end19.i_crit_edge

if.end22.i.do.end19.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

if.end22.i.1:                                     ; preds = %if.end22.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 44, ptr %data.i, align 2
  %call13.i.2 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 45, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.2)
  %cmp14.not.i.2 = icmp eq i32 %call13.i.2, 0
  br i1 %cmp14.not.i.2, label %if.end22.i.2, label %if.end22.i.1.do.end19.i_crit_edge

if.end22.i.1.do.end19.i_crit_edge:                ; preds = %if.end22.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

if.end22.i.2:                                     ; preds = %if.end22.i.1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -101, ptr %data.i, align 2
  %call13.i.3 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 46, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.3)
  %cmp14.not.i.3 = icmp eq i32 %call13.i.3, 0
  br i1 %cmp14.not.i.3, label %if.end22.i.2.hexium_set_standard.exit_crit_edge, label %if.end22.i.2.do.end19.i_crit_edge

if.end22.i.2.do.end19.i_crit_edge:                ; preds = %if.end22.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

if.end22.i.2.hexium_set_standard.exit_crit_edge:  ; preds = %if.end22.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexium_set_standard.exit

hexium_set_standard.exit:                         ; preds = %if.end22.i.2.hexium_set_standard.exit_crit_edge, %do.end19.i
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #6
  br label %cleanup.sink.split

if.then3:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i21) #6
  %10 = call ptr @memset(ptr %data.i21, i32 255, i32 34)
  %11 = load i32, ptr @debug, align 4
  %and.i22 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool.not.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool.not.i23, label %if.then3.while.body.lr.ph.i29_crit_edge, label %do.body1.i24

if.then3.while.body.lr.ph.i29_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i29

do.body1.i24:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_standard.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@std_callback, %if.then5.i25)) #6
          to label %while.body.lr.ph.i29 [label %if.then5.i25], !srcloc !133

if.then5.i25:                                     ; preds = %do.body1.i24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_standard.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19) #6
  br label %while.body.lr.ph.i29

while.body.lr.ph.i29:                             ; preds = %if.then5.i25, %do.body1.i24, %if.then3.while.body.lr.ph.i29_crit_edge
  %i2c_adapter.i28 = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 83, ptr %data.i21, align 2
  %call13.i32 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i28, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i32)
  %cmp14.not.i33 = icmp eq i32 %call13.i32, 0
  br i1 %cmp14.not.i33, label %if.end22.i40, label %while.body.lr.ph.i29.do.end19.i36_crit_edge

while.body.lr.ph.i29.do.end19.i36_crit_edge:      ; preds = %while.body.lr.ph.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i36

do.end19.i36:                                     ; preds = %if.end22.i40.2.do.end19.i36_crit_edge, %if.end22.i40.1.do.end19.i36_crit_edge, %if.end22.i40.do.end19.i36_crit_edge, %while.body.lr.ph.i29.do.end19.i36_crit_edge
  %i.04.i30.lcssa = phi i32 [ 0, %while.body.lr.ph.i29.do.end19.i36_crit_edge ], [ 1, %if.end22.i40.do.end19.i36_crit_edge ], [ 2, %if.end22.i40.1.do.end19.i36_crit_edge ], [ 3, %if.end22.i40.2.do.end19.i36_crit_edge ]
  %call21.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.04.i30.lcssa) #10
  br label %hexium_set_standard.exit41

if.end22.i40:                                     ; preds = %while.body.lr.ph.i29
  %13 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %data.i21, align 2
  %call13.i32.1 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i28, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 18, i32 noundef 2, ptr noundef nonnull %data.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i32.1)
  %cmp14.not.i33.1 = icmp eq i32 %call13.i32.1, 0
  br i1 %cmp14.not.i33.1, label %if.end22.i40.1, label %if.end22.i40.do.end19.i36_crit_edge

if.end22.i40.do.end19.i36_crit_edge:              ; preds = %if.end22.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i36

if.end22.i40.1:                                   ; preds = %if.end22.i40
  %14 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 35, ptr %data.i21, align 2
  %call13.i32.2 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i28, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 45, i32 noundef 2, ptr noundef nonnull %data.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i32.2)
  %cmp14.not.i33.2 = icmp eq i32 %call13.i32.2, 0
  br i1 %cmp14.not.i33.2, label %if.end22.i40.2, label %if.end22.i40.1.do.end19.i36_crit_edge

if.end22.i40.1.do.end19.i36_crit_edge:            ; preds = %if.end22.i40.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i36

if.end22.i40.2:                                   ; preds = %if.end22.i40.1
  %15 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -127, ptr %data.i21, align 2
  %call13.i32.3 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i28, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 46, i32 noundef 2, ptr noundef nonnull %data.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i32.3)
  %cmp14.not.i33.3 = icmp eq i32 %call13.i32.3, 0
  br i1 %cmp14.not.i33.3, label %if.end22.i40.2.hexium_set_standard.exit41_crit_edge, label %if.end22.i40.2.do.end19.i36_crit_edge

if.end22.i40.2.do.end19.i36_crit_edge:            ; preds = %if.end22.i40.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i36

if.end22.i40.2.hexium_set_standard.exit41_crit_edge: ; preds = %if.end22.i40.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexium_set_standard.exit41

hexium_set_standard.exit41:                       ; preds = %if.end22.i40.2.hexium_set_standard.exit41_crit_edge, %do.end19.i36
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i21) #6
  br label %cleanup.sink.split

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i42) #6
  %16 = call ptr @memset(ptr %data.i42, i32 255, i32 34)
  %17 = load i32, ptr @debug, align 4
  %and.i43 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %if.then9.while.body.lr.ph.i50_crit_edge, label %do.body1.i45

if.then9.while.body.lr.ph.i50_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i50

do.body1.i45:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hexium_set_standard.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@std_callback, %if.then5.i46)) #6
          to label %while.body.lr.ph.i50 [label %if.then5.i46], !srcloc !133

if.then5.i46:                                     ; preds = %do.body1.i45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hexium_set_standard.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19) #6
  br label %while.body.lr.ph.i50

while.body.lr.ph.i50:                             ; preds = %if.then5.i46, %do.body1.i45, %if.then9.while.body.lr.ph.i50_crit_edge
  %i2c_adapter.i49 = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %data.i42 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 82, ptr %data.i42, align 2
  %call13.i53 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i49, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %data.i42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i53)
  %cmp14.not.i54 = icmp eq i32 %call13.i53, 0
  br i1 %cmp14.not.i54, label %if.end22.i61, label %while.body.lr.ph.i50.do.end19.i57_crit_edge

while.body.lr.ph.i50.do.end19.i57_crit_edge:      ; preds = %while.body.lr.ph.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i57

do.end19.i57:                                     ; preds = %if.end22.i61.2.do.end19.i57_crit_edge, %if.end22.i61.1.do.end19.i57_crit_edge, %if.end22.i61.do.end19.i57_crit_edge, %while.body.lr.ph.i50.do.end19.i57_crit_edge
  %i.04.i51.lcssa = phi i32 [ 0, %while.body.lr.ph.i50.do.end19.i57_crit_edge ], [ 1, %if.end22.i61.do.end19.i57_crit_edge ], [ 2, %if.end22.i61.1.do.end19.i57_crit_edge ], [ 3, %if.end22.i61.2.do.end19.i57_crit_edge ]
  %call21.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.04.i51.lcssa) #10
  br label %hexium_set_standard.exit62

if.end22.i61:                                     ; preds = %while.body.lr.ph.i50
  %19 = ptrtoint ptr %data.i42 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 100, ptr %data.i42, align 2
  %call13.i53.1 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i49, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 18, i32 noundef 2, ptr noundef nonnull %data.i42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i53.1)
  %cmp14.not.i54.1 = icmp eq i32 %call13.i53.1, 0
  br i1 %cmp14.not.i54.1, label %if.end22.i61.1, label %if.end22.i61.do.end19.i57_crit_edge

if.end22.i61.do.end19.i57_crit_edge:              ; preds = %if.end22.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i57

if.end22.i61.1:                                   ; preds = %if.end22.i61
  %20 = ptrtoint ptr %data.i42 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 44, ptr %data.i42, align 2
  %call13.i53.2 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i49, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 45, i32 noundef 2, ptr noundef nonnull %data.i42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i53.2)
  %cmp14.not.i54.2 = icmp eq i32 %call13.i53.2, 0
  br i1 %cmp14.not.i54.2, label %if.end22.i61.2, label %if.end22.i61.1.do.end19.i57_crit_edge

if.end22.i61.1.do.end19.i57_crit_edge:            ; preds = %if.end22.i61.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i57

if.end22.i61.2:                                   ; preds = %if.end22.i61.1
  %21 = ptrtoint ptr %data.i42 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -101, ptr %data.i42, align 2
  %call13.i53.3 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter.i49, i16 noundef zeroext 108, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 46, i32 noundef 2, ptr noundef nonnull %data.i42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i53.3)
  %cmp14.not.i54.3 = icmp eq i32 %call13.i53.3, 0
  br i1 %cmp14.not.i54.3, label %if.end22.i61.2.hexium_set_standard.exit62_crit_edge, label %if.end22.i61.2.do.end19.i57_crit_edge

if.end22.i61.2.do.end19.i57_crit_edge:            ; preds = %if.end22.i61.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i57

if.end22.i61.2.hexium_set_standard.exit62_crit_edge: ; preds = %if.end22.i61.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexium_set_standard.exit62

hexium_set_standard.exit62:                       ; preds = %if.end22.i61.2.hexium_set_standard.exit62_crit_edge, %do.end19.i57
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i42) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %hexium_set_standard.exit62, %hexium_set_standard.exit41, %hexium_set_standard.exit
  %cur_std11 = getelementptr inbounds %struct.hexium, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %cur_std11 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %3, ptr %cur_std11, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !68, !69, !70, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype296, !1, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug297, !4, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 22, i32 1}
!5 = !{ptr @__initcall__kmod_hexium_gemini__309_420_hexium_init_module6, !6, !"__initcall__kmod_hexium_gemini__309_420_hexium_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 420, i32 1}
!7 = !{ptr @__exitcall_hexium_cleanup_module, !8, !"__exitcall_hexium_cleanup_module", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 421, i32 1}
!9 = !{ptr @__UNIQUE_ID_description310, !10, !"__UNIQUE_ID_description310", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 423, i32 1}
!11 = !{ptr @__UNIQUE_ID_author311, !12, !"__UNIQUE_ID_author311", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 424, i32 1}
!13 = !{ptr @__UNIQUE_ID_file312, !14, !"__UNIQUE_ID_file312", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 425, i32 1}
!15 = !{ptr @__UNIQUE_ID_license313, !14, !"__UNIQUE_ID_license313", i1 false, i1 false}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 20, i32 12}
!18 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!19 = !{ptr @hexium_extension, !20, !"hexium_extension", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 391, i32 33}
!21 = !{ptr @pci_tbl, !22, !"pci_tbl", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 361, i32 35}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 352, i32 14}
!25 = !{ptr @hexium_gemini_4bnc, !26, !"hexium_gemini_4bnc", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 351, i32 42}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 357, i32 14}
!29 = !{ptr @hexium_gemini_dual_4bnc, !30, !"hexium_gemini_dual_4bnc", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 356, i32 42}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 250, i32 2}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hexium_attach.__UNIQUE_ID_ddebug305, !32, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!37 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 261, i32 36}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 265, i32 3}
!42 = !{ptr @hexium_attach.__UNIQUE_ID_ddebug306, !41, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!43 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 299, i32 3}
!46 = !{ptr @hexium_attach._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hexium_attach._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 306, i32 2}
!50 = !{ptr @hexium_attach._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hexium_attach._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 156, i32 2}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @hexium_init_done.__UNIQUE_ID_ddebug298, !53, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!56 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 162, i32 4}
!59 = !{ptr @hexium_init_done._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hexium_init_done._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @hexium_ks0127b, !62, !"hexium_ks0127b", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 66, i32 11}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 189, i32 2}
!65 = !{ptr @hexium_set_standard.__UNIQUE_ID_ddebug300, !64, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 194, i32 4}
!68 = !{ptr @hexium_set_standard._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hexium_set_standard._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @hexium_pal, !71, !"hexium_pal", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 101, i32 27}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 174, i32 2}
!74 = !{ptr @hexium_set_input.__UNIQUE_ID_ddebug299, !73, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!75 = !{ptr @hexium_input_select, !76, !"hexium_input_select", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 113, i32 27}
!77 = !{ptr @vv_data, !78, !"vv_data", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 383, i32 30}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 129, i32 11}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 134, i32 11}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 139, i32 11}
!85 = !{ptr @hexium_standards, !86, !"hexium_standards", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 127, i32 32}
!87 = !{ptr @hexium_ntsc, !88, !"hexium_ntsc", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 105, i32 27}
!89 = !{ptr @hexium_secam, !90, !"hexium_secam", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 109, i32 27}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 205, i32 2}
!93 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @vidioc_enum_input.__UNIQUE_ID_ddebug301, !92, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!95 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 212, i32 2}
!98 = !{ptr @vidioc_enum_input.__UNIQUE_ID_ddebug302, !97, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!99 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @hexium_inputs, !101, !"hexium_inputs", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 31, i32 26}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 223, i32 2}
!104 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vidioc_g_input.__UNIQUE_ID_ddebug303, !103, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!106 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 232, i32 2}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @vidioc_s_input.__UNIQUE_ID_ddebug304, !108, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!111 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hexium_num, !113, !"hexium_num", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 25, i32 12}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 316, i32 2}
!116 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @hexium_detach.__UNIQUE_ID_ddebug307, !115, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!118 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/saa7146/hexium_gemini.c", i32 408, i32 3}
!121 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hexium_init_module.__UNIQUE_ID_ddebug308, !120, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!123 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148820295, i64 2148820300, i64 2148820313, i64 2148820357, i64 2148820391, i64 2148820412}
!134 = !{i64 2156646624}
!135 = !{i64 7160175}
!136 = !{i64 2156650037}
!137 = !{i64 2156650534}
!138 = !{i64 2156651164}
