; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/comedi_test.c_pt.bc'
source_filename = "../drivers/comedi/drivers/comedi_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.waveform_private = type { %struct.timer_list, i64, i32, i32, i32, i32, i32, %struct.timer_list, ptr, i64, i32, [8 x i16] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }

@__param_str_noauto = internal constant [19 x i8] c"comedi_test.noauto\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@config_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noauto = internal constant %struct.kernel_param { ptr @__param_str_noauto, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @config_mode } }, section "__param", align 4
@__UNIQUE_ID_noautotype229 = internal constant [33 x i8] c"comedi_test.parmtype=noauto:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noauto230 = internal constant [85 x i8] c"comedi_test.parm=noauto:Disable auto-configuration: (1=disable [defaults to enable])\00", section ".modinfo", align 1
@__param_str_amplitude = internal constant [22 x i8] c"comedi_test.amplitude\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@set_amplitude = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_amplitude = internal constant %struct.kernel_param { ptr @__param_str_amplitude, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @set_amplitude } }, section "__param", align 4
@__UNIQUE_ID_amplitudetype231 = internal constant [36 x i8] c"comedi_test.parmtype=amplitude:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_amplitude232 = internal constant [92 x i8] c"comedi_test.parm=amplitude:Set auto mode wave amplitude in microvolts: (defaults to 1 volt)\00", section ".modinfo", align 1
@__param_str_period = internal constant [19 x i8] c"comedi_test.period\00", align 1
@set_period = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_period = internal constant %struct.kernel_param { ptr @__param_str_period, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @set_period } }, section "__param", align 4
@__UNIQUE_ID_periodtype233 = internal constant [33 x i8] c"comedi_test.parmtype=period:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_period234 = internal constant [89 x i8] c"comedi_test.parm=period:Set auto mode wave period in microseconds: (defaults to 0.1 sec)\00", section ".modinfo", align 1
@__initcall__kmod_comedi_test__245_829_comedi_test_init6 = internal global ptr @comedi_test_init, section ".initcall6.init", align 4
@ctdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ctcls = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@waveform_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str.3, ptr null, ptr @waveform_attach, ptr @waveform_detach, ptr @waveform_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_comedi_test_exit = internal global ptr @comedi_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [49 x i8] c"comedi_test.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [48 x i8] c"comedi_test.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [52 x i8] c"comedi_test.file=drivers/comedi/drivers/comedi_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [24 x i8] c"comedi_test.license=GPL\00", section ".modinfo", align 1
@comedi_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013comedi_test: unable to register driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"comedi_test_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/comedi_test.c\00", [59 x i8] zeroinitializer }, align 32
@comedi_test_init._entry_ptr = internal global ptr @comedi_test_init._entry, section ".printk_index", align 4
@comedi_test_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comedi_test\00", [20 x i8] zeroinitializer }, align 32
@comedi_test_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014comedi_test: unable to create class\0A\00", [57 x i8] zeroinitializer }, align 32
@comedi_test_init._entry_ptr.6 = internal global ptr @comedi_test_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"comedi_testd\00", [19 x i8] zeroinitializer }, align 32
@comedi_test_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014comedi_test: unable to create device\0A\00", [56 x i8] zeroinitializer }, align 32
@comedi_test_init._entry_ptr.10 = internal global ptr @comedi_test_init._entry.8, section ".printk_index", align 4
@comedi_test_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014comedi_test: unable to auto-configure device\0A\00", [48 x i8] zeroinitializer }, align 32
@comedi_test_init._entry_ptr.13 = internal global ptr @comedi_test_init._entry.11, section ".printk_index", align 4
@waveform_common_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&devpriv->ai_timer)\00", [43 x i8] zeroinitializer }, align 32
@waveform_common_attach.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&devpriv->ao_timer)\00", [43 x i8] zeroinitializer }, align 32
@waveform_common_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 730, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: %u microvolt, %u microsecond waveform attached\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"waveform_common_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@waveform_common_attach._entry_ptr = internal global ptr @waveform_common_attach._entry, section ".printk_index", align 4
@waveform_ai_ranges = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@waveform_ai_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 356, ptr @.str.24, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"commands at RT priority not supported in this driver\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"waveform_ai_cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@waveform_ai_cmd._entry_ptr = internal global ptr @waveform_ai_cmd._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@waveform_ao_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.25, ptr @.str.2, i32 590, ptr @.str.24, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"waveform_ao_cmd\00", [16 x i8] zeroinitializer }, align 32
@waveform_ao_cmd._entry_ptr = internal global ptr @waveform_ao_cmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"config_mode\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 60, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"set_amplitude\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 61, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"set_period\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 62, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"ctdev\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 64, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"ctcls\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 63, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"waveform_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 775, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 793, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 798, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 800, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 804, i32 57 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 806, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 812, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 724, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 725, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 727, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"waveform_ai_ranges\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 92, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 355, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [40 x i8] c"../drivers/comedi/drivers/comedi_test.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 589, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_amplitude232, ptr @__UNIQUE_ID_amplitudetype231, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__UNIQUE_ID_noauto230, ptr @__UNIQUE_ID_noautotype229, ptr @__UNIQUE_ID_period234, ptr @__UNIQUE_ID_periodtype233, ptr @__exitcall_comedi_test_exit, ptr @__initcall__kmod_comedi_test__245_829_comedi_test_init6, ptr @__param_amplitude, ptr @__param_noauto, ptr @__param_period, ptr @comedi_test_exit, ptr @comedi_test_init._entry, ptr @comedi_test_init._entry.11, ptr @comedi_test_init._entry.4, ptr @comedi_test_init._entry.8, ptr @comedi_test_init._entry_ptr, ptr @comedi_test_init._entry_ptr.10, ptr @comedi_test_init._entry_ptr.13, ptr @comedi_test_init._entry_ptr.6, ptr @waveform_ai_cmd._entry, ptr @waveform_ai_cmd._entry_ptr, ptr @waveform_ao_cmd._entry, ptr @waveform_ao_cmd._entry_ptr, ptr @waveform_common_attach._entry, ptr @waveform_common_attach._entry_ptr, ptr @config_mode, ptr @set_amplitude, ptr @set_period, ptr @ctdev, ptr @ctcls, ptr @waveform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @comedi_test_init.__key, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @waveform_common_attach.__key, ptr @.str.14, ptr @waveform_common_attach.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @waveform_ai_ranges, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_amplitude to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_period to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctcls to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waveform_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_test_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_test_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_test_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_test_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waveform_common_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waveform_common_attach.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waveform_common_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waveform_ai_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waveform_ai_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waveform_ao_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_test_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @waveform_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @config_mode, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool2.not = icmp eq i8 %0, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call5 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @comedi_test_init.__key) #10
  store ptr %call5, ptr @ctcls, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %clean3

if.end13:                                         ; preds = %if.then3
  %call14 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %call5, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.7) #10
  store ptr %call14, ptr @ctdev, align 4
  %cmp.i35 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %clean2

if.end22:                                         ; preds = %if.end13
  %call23 = tail call i32 @comedi_auto_config(ptr noundef %call14, ptr noundef nonnull @waveform_driver, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %do.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  %1 = load ptr, ptr @ctcls, align 4
  tail call void @device_destroy(ptr noundef %1, i32 noundef 0) #10
  br label %clean2

clean2:                                           ; preds = %do.end28, %do.end19
  %2 = load ptr, ptr @ctcls, align 4
  tail call void @class_destroy(ptr noundef %2) #10
  store ptr null, ptr @ctdev, align 4
  br label %clean3

clean3:                                           ; preds = %clean2, %do.end10
  store ptr null, ptr @ctcls, align 4
  br label %cleanup

cleanup:                                          ; preds = %clean3, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @comedi_test_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @ctdev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @comedi_auto_unconfig(ptr noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @ctcls, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @device_destroy(ptr noundef nonnull %1, i32 noundef 0) #10
  %2 = load ptr, ptr @ctcls, align 4
  tail call void @class_destroy(ptr noundef %2) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @comedi_driver_unregister(ptr noundef nonnull @waveform_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_auto_unconfig(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %arrayidx2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  %spec.store.select = select i1 %cmp, i32 1000000, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp slt i32 %3, 1
  %spec.store.select6 = select i1 %cmp3, i32 100000, i32 %3
  %call = tail call fastcc i32 @waveform_common_attach(ptr noundef %dev, i32 noundef %spec.store.select, i32 noundef %spec.store.select6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @waveform_detach(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull %1) #10
  %ao_timer = getelementptr inbounds %struct.waveform_private, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @del_timer_sync(ptr noundef %ao_timer) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @set_amplitude, align 4
  %1 = load i32, ptr @set_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %spec.store.select = select i1 %tobool.not, i32 1000000, i32 %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %spec.store.select4 = select i1 %tobool1.not, i32 100000, i32 %1
  %call = tail call fastcc i32 @waveform_common_attach(ptr noundef %dev, i32 noundef %spec.store.select, i32 noundef %spec.store.select4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @waveform_common_attach(ptr noundef %dev, i32 noundef %amplitude, i32 noundef %period) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 160) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wf_amplitude = getelementptr inbounds %struct.waveform_private, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %wf_amplitude to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %amplitude, ptr %wf_amplitude, align 8
  %wf_period = getelementptr inbounds %struct.waveform_private, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %wf_period to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %period, ptr %wf_period, align 4
  %call1 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %read_subdev, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1146880, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @waveform_ai_ranges, ptr %range_table, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %len_chanlist, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @waveform_ai_insn_read, ptr %insn_read, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 22
  %12 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @waveform_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 23
  %13 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @waveform_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 25
  %14 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @waveform_ai_cancel, ptr %cancel, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 21
  %15 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @waveform_ai_insn_config, ptr %insn_config, align 4
  %16 = load ptr, ptr %subdevices, align 4
  %arrayidx7 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %17 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx7, ptr %write_subdev, align 4
  %type8 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 2
  %18 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %type8, align 4
  %subdev_flags9 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 4
  %19 = ptrtoint ptr %subdev_flags9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1196032, ptr %subdev_flags9, align 4
  %n_chan10 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 3
  %20 = ptrtoint ptr %n_chan10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %n_chan10, align 4
  %maxdata11 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 13
  %21 = ptrtoint ptr %maxdata11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %maxdata11, align 4
  %range_table12 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 15
  %22 = ptrtoint ptr %range_table12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @waveform_ai_ranges, ptr %range_table12, align 4
  %len_chanlist14 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 5
  %23 = ptrtoint ptr %len_chanlist14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %len_chanlist14, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 19
  %24 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @waveform_ao_insn_write, ptr %insn_write, align 4
  %insn_read15 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 18
  %25 = ptrtoint ptr %insn_read15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @waveform_ai_insn_read, ptr %insn_read15, align 4
  %do_cmd16 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 22
  %26 = ptrtoint ptr %do_cmd16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @waveform_ao_cmd, ptr %do_cmd16, align 4
  %do_cmdtest17 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 23
  %27 = ptrtoint ptr %do_cmdtest17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @waveform_ao_cmdtest, ptr %do_cmdtest17, align 4
  %cancel18 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 25
  %28 = ptrtoint ptr %cancel18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @waveform_ao_cancel, ptr %cancel18, align 4
  %insn_config19 = getelementptr %struct.comedi_subdevice, ptr %16, i32 1, i32 21
  %29 = ptrtoint ptr %insn_config19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @waveform_ao_insn_config, ptr %insn_config19, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.084 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %30 = ptrtoint ptr %maxdata11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxdata11, align 4
  %div82 = lshr i32 %31, 1
  %conv = trunc i32 %div82 to i16
  %arrayidx22 = getelementptr %struct.waveform_private, ptr %call, i32 0, i32 11, i32 %i.084
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %arrayidx22, align 2
  %inc = add nuw nsw i32 %i.084, 1
  %33 = ptrtoint ptr %n_chan10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_chan10, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.waveform_private, ptr %call, i32 0, i32 8
  %35 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %dev23, align 4
  tail call void @init_timer_key(ptr noundef nonnull %call, ptr noundef nonnull @waveform_ai_timer, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @waveform_common_attach.__key) #10
  %ao_timer = getelementptr inbounds %struct.waveform_private, ptr %call, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %ao_timer, ptr noundef nonnull @waveform_ao_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @waveform_common_attach.__key.15) #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %36 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %38 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %board_name, align 4
  %40 = ptrtoint ptr %wf_amplitude to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wf_amplitude, align 8
  %42 = ptrtoint ptr %wf_period to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wf_period, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.17, ptr noundef %39, i32 noundef %41, i32 noundef %43) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_ai_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %arrayidx = getelementptr %struct.waveform_private, ptr %5, i32 0, i32 11, i32 %and
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.08
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx1, align 4
  %inc = add nuw i32 %i.08, 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %10, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %8 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.end.if.end4_crit_edge, label %if.else

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %10 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %convert_arg, align 4
  %div = udiv i32 %11, 1000
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end.if.end4_crit_edge
  %div.sink = phi i32 [ %div, %if.else ], [ 0, %if.end.if.end4_crit_edge ]
  %12 = getelementptr inbounds %struct.waveform_private, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.sink, ptr %12, align 8
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %14 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp5 = icmp eq i32 %15, 4
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 8
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 9
  %18 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %19, %17
  br label %if.end11

if.else8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  %div9 = udiv i32 %21, 1000
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then6
  %div9.sink = phi i32 [ %mul, %if.then6 ], [ %div9, %if.else8 ]
  %22 = getelementptr inbounds %struct.waveform_private, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div9.sink, ptr %22, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %12, align 8
  %26 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %cmp14 = icmp eq i32 %27, 16
  br i1 %cmp14, label %if.then15, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %22, align 4
  %add = add i32 %29, %25
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11.if.end17_crit_edge
  %first_convert_time.0 = phi i32 [ %add, %if.then15 ], [ %25, %if.end11.if.end17_crit_edge ]
  %call = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %30 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #10
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #14, !srcloc !100
  %asmresult.i.i.i = extractvalue { i64, i32 } %31, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %31, 1
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !101
  %asmresult10.i.i.i = extractvalue { i64, i32 } %32, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %conv = zext i32 %first_convert_time.0 to i64
  %add19 = add nsw i64 %cond213.i.i, %conv
  %ai_convert_time = getelementptr inbounds %struct.waveform_private, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %ai_convert_time to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add19, ptr %ai_convert_time, align 8
  %wf_period = getelementptr inbounds %struct.waveform_private, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %wf_period to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wf_period, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add19)
  %cmp196 = icmp ult i64 %add19, 4294967296
  br i1 %cmp196, label %if.then200, label %if.else206, !prof !102

if.then200:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %conv201 = trunc i64 %add19 to i32
  %rem202 = urem i32 %conv201, %35
  br label %if.end210

if.else206:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %add19) #14, !srcloc !103
  %asmresult.i324 = extractvalue { i64, i64 } %36, 0
  %shr.i = lshr i64 %asmresult.i324, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end210

if.end210:                                        ; preds = %if.else206, %if.then200
  %__rem.0 = phi i32 [ %rem202, %if.then200 ], [ %conv.i, %if.else206 ]
  %wf_current212 = getelementptr inbounds %struct.waveform_private, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %wf_current212 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %__rem.0, ptr %wf_current212, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %12, align 8
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %40) #10
  %add215 = add i32 %38, 1
  %add216 = add i32 %add215, %call3.i
  %expires = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add216, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end210 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @waveform_ai_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i221 = and i32 %3, 20
  store i32 %and.i221, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %cmp.i222 = icmp ne i32 %and.i221, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i221, i32 %3)
  %cmp1.not.i223 = icmp eq i32 %and.i221, %3
  %or.cond.i224 = and i1 %cmp.i222, %cmp1.not.i223
  %4 = select i1 %or.cond.i, i1 %or.cond.i224, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i226 = and i32 %6, 18
  store i32 %and.i226, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226)
  %cmp.i227 = icmp ne i32 %and.i226, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i226, i32 %6)
  %cmp1.not.i228 = icmp eq i32 %and.i226, %6
  %or.cond.i229 = and i1 %cmp.i227, %cmp1.not.i228
  %7 = select i1 %4, i1 %or.cond.i229, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i231 = and i32 %9, 32
  store i32 %and.i231, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %cmp.i232 = icmp ne i32 %and.i231, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i231, i32 %9)
  %cmp1.not.i233 = icmp eq i32 %and.i231, %9
  %or.cond.i234 = and i1 %cmp.i232, %cmp1.not.i233
  %10 = select i1 %7, i1 %or.cond.i234, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i236 = and i32 %12, 33
  store i32 %and.i236, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i236)
  %cmp.i237 = icmp ne i32 %and.i236, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i236, i32 %12)
  %cmp1.not.i238 = icmp eq i32 %and.i236, %12
  %or.cond.i239 = and i1 %cmp.i237, %cmp1.not.i238
  %13 = select i1 %10, i1 %or.cond.i239, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %6) #10, !range !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #10, !range !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i241 = icmp ult i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp17 = icmp ne i32 %6, 2
  %not.cmp = xor i1 %cmp, true
  %or.cond = select i1 %not.cmp, i1 true, i1 %cmp17
  %16 = select i1 %or.cond, i1 %cmp.not.i, i1 false
  %or.cond292 = select i1 %16, i1 %cmp.not.i241, i1 false
  br i1 %or.cond292, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i243 = icmp eq i32 %18, 0
  br i1 %cmp.not.i243, label %if.end23.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end23.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end23.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i244 = phi i32 [ -22, %if.then.i ], [ 0, %if.end23.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp27 = icmp eq i32 %6, 2
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %20 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i245 = icmp eq i32 %21, 0
  br i1 %cmp.not.i245, label %if.then28.if.end38_crit_edge, label %if.then.i246

if.then28.if.end38_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then.i246:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %convert_arg, align 4
  br label %if.end38

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit
  br i1 %cmp, label %if.then33, label %if.else.if.else44_crit_edge

if.else.if.else44_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else44

if.then33:                                        ; preds = %if.else
  %convert_arg34 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %24)
  %cmp.i249 = icmp ult i32 %24, 1000
  br i1 %cmp.i249, label %if.then.i250, label %if.then33.if.end38.thread_crit_edge

if.then33.if.end38.thread_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread

if.then.i250:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %convert_arg34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1000, ptr %convert_arg34, align 4
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %if.then.i250, %if.then33.if.end38.thread_crit_edge
  %retval.0.i251 = phi i32 [ -22, %if.then.i250 ], [ 0, %if.then33.if.end38.thread_crit_edge ]
  %or36 = or i32 %retval.0.i251, %retval.0.i244
  br label %if.then41

if.end38:                                         ; preds = %if.then.i246, %if.then28.if.end38_crit_edge
  %retval.0.i247 = phi i32 [ -22, %if.then.i246 ], [ 0, %if.then28.if.end38_crit_edge ]
  %or30 = or i32 %retval.0.i247, %retval.0.i244
  br i1 %cmp, label %if.end38.if.then41_crit_edge, label %if.end38.if.else44_crit_edge

if.end38.if.else44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else44

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then41:                                        ; preds = %if.end38.if.then41_crit_edge, %if.end38.thread
  %err.1288 = phi i32 [ %or36, %if.end38.thread ], [ %or30, %if.end38.if.then41_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i252 = icmp eq i32 %27, 0
  br i1 %cmp.not.i252, label %if.then41.if.end48_crit_edge, label %if.then.i253

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then.i253:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %if.end48

if.else44:                                        ; preds = %if.end38.if.else44_crit_edge, %if.else.if.else44_crit_edge
  %err.1291 = phi i32 [ %or30, %if.end38.if.else44_crit_edge ], [ %retval.0.i244, %if.else.if.else44_crit_edge ]
  %scan_begin_arg45 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %29 = ptrtoint ptr %scan_begin_arg45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_begin_arg45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %30)
  %cmp.i256 = icmp ult i32 %30, 1000
  br i1 %cmp.i256, label %if.then.i257, label %if.else44.if.end48_crit_edge

if.else44.if.end48_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then.i257:                                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %scan_begin_arg45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1000, ptr %scan_begin_arg45, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then.i257, %if.else44.if.end48_crit_edge, %if.then.i253, %if.then41.if.end48_crit_edge
  %err.1287 = phi i32 [ %err.1288, %if.then41.if.end48_crit_edge ], [ %err.1288, %if.then.i253 ], [ %err.1291, %if.else44.if.end48_crit_edge ], [ %err.1291, %if.then.i257 ]
  %call42.pn = phi i32 [ 0, %if.then41.if.end48_crit_edge ], [ -22, %if.then.i253 ], [ 0, %if.else44.if.end48_crit_edge ], [ -22, %if.then.i257 ]
  %err.2 = or i32 %call42.pn, %err.1287
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %32 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i260 = icmp eq i32 %33, 0
  br i1 %cmp.i260, label %if.then.i261, label %if.end48.comedi_check_trigger_arg_min.exit263_crit_edge

if.end48.comedi_check_trigger_arg_min.exit263_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_min.exit263

if.then.i261:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit263

comedi_check_trigger_arg_min.exit263:             ; preds = %if.then.i261, %if.end48.comedi_check_trigger_arg_min.exit263_crit_edge
  %retval.0.i262 = phi i32 [ -22, %if.then.i261 ], [ 0, %if.end48.comedi_check_trigger_arg_min.exit263_crit_edge ]
  %or50 = or i32 %err.2, %retval.0.i262
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %35 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chanlist_len, align 4
  %37 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i264 = icmp eq i32 %38, %36
  br i1 %cmp.not.i264, label %comedi_check_trigger_arg_min.exit263.comedi_check_trigger_arg_is.exit267_crit_edge, label %if.then.i265

comedi_check_trigger_arg_min.exit263.comedi_check_trigger_arg_is.exit267_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit263
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit267

if.then.i265:                                     ; preds = %comedi_check_trigger_arg_min.exit263
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit267

comedi_check_trigger_arg_is.exit267:              ; preds = %if.then.i265, %comedi_check_trigger_arg_min.exit263.comedi_check_trigger_arg_is.exit267_crit_edge
  %retval.0.i266 = phi i32 [ -22, %if.then.i265 ], [ 0, %comedi_check_trigger_arg_min.exit263.comedi_check_trigger_arg_is.exit267_crit_edge ]
  %or53 = or i32 %or50, %retval.0.i266
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp55 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %40 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i268 = icmp eq i32 %41, 0
  br i1 %cmp55, label %if.then56, label %if.else59

if.then56:                                        ; preds = %comedi_check_trigger_arg_is.exit267
  br i1 %cmp.i268, label %if.then56.if.end63.sink.split_crit_edge, label %if.then56.if.end63_crit_edge

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then56.if.end63.sink.split_crit_edge:          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.sink.split

if.else59:                                        ; preds = %comedi_check_trigger_arg_is.exit267
  br i1 %cmp.i268, label %if.else59.if.end63_crit_edge, label %if.else59.if.end63.sink.split_crit_edge

if.else59.if.end63.sink.split_crit_edge:          ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.sink.split

if.else59.if.end63_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.end63.sink.split:                              ; preds = %if.else59.if.end63.sink.split_crit_edge, %if.then56.if.end63.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then56.if.end63.sink.split_crit_edge ], [ 0, %if.else59.if.end63.sink.split_crit_edge ]
  %42 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.else59.if.end63_crit_edge, %if.then56.if.end63_crit_edge
  %call57.pn = phi i32 [ 0, %if.then56.if.end63_crit_edge ], [ 0, %if.else59.if.end63_crit_edge ], [ -22, %if.end63.sink.split ]
  %err.3 = or i32 %or53, %call57.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool64.not = icmp eq i32 %err.3, 0
  br i1 %tobool64.not, label %if.end66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp68 = icmp eq i32 %6, 16
  br i1 %cmp68, label %if.then69, label %if.end66.if.end95_crit_edge

if.end66.if.end95_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then69:                                        ; preds = %if.end66
  %convert_arg70 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %43 = ptrtoint ptr %convert_arg70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %convert_arg70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -296, i32 %44)
  %cmp72 = icmp ult i32 %44, -296
  %phi.bo218 = add i32 %44, 500
  %45 = urem i32 %phi.bo218, 1000
  %phi.bo220 = sub i32 %phi.bo218, %45
  %cond = select i1 %cmp72, i32 %phi.bo220, i32 0
  %scan_begin_arg76 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %46 = ptrtoint ptr %scan_begin_arg76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scan_begin_arg76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %47)
  %cmp77 = icmp eq i32 %47, 16
  br i1 %cmp77, label %if.then78, label %if.then69.if.end91_crit_edge

if.then69.if.end91_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then78:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %scan_end_arg, align 4
  %div80 = udiv i32 -1, %49
  %rem83 = urem i32 %div80, 1000000000
  %sub84 = sub i32 %div80, %rem83
  %50 = tail call i32 @llvm.umin.i32(i32 %cond, i32 %sub84)
  br label %if.end91

if.end91:                                         ; preds = %if.then78, %if.then69.if.end91_crit_edge
  %arg.0 = phi i32 [ %50, %if.then78 ], [ %cond, %if.then69.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %arg.0)
  %cmp.not.i276 = icmp eq i32 %44, %arg.0
  br i1 %cmp.not.i276, label %if.end91.if.end95_crit_edge, label %if.then.i277

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then.i277:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %convert_arg70 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %arg.0, ptr %convert_arg70, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then.i277, %if.end91.if.end95_crit_edge, %if.end66.if.end95_crit_edge
  %err.4 = phi i32 [ 0, %if.end66.if.end95_crit_edge ], [ -22, %if.then.i277 ], [ 0, %if.end91.if.end95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp97 = icmp eq i32 %3, 16
  br i1 %cmp97, label %if.then98, label %if.end95.if.end133_crit_edge

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then98:                                        ; preds = %if.end95
  %scan_begin_arg99 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %52 = ptrtoint ptr %scan_begin_arg99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scan_begin_arg99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -296, i32 %53)
  %cmp105 = icmp ult i32 %53, -296
  %phi.bo = add i32 %53, 500
  %54 = urem i32 %phi.bo, 1000
  %phi.bo217 = sub i32 %phi.bo, %54
  %cond109 = select i1 %cmp105, i32 %phi.bo217, i32 0
  br i1 %cmp68, label %if.then119, label %if.then98.if.end129_crit_edge

if.then98.if.end129_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then119:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %convert_arg120 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %55 = ptrtoint ptr %convert_arg120 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %convert_arg120, align 4
  %57 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scan_end_arg, align 4
  %mul122 = mul i32 %58, %56
  %59 = tail call i32 @llvm.umax.i32(i32 %cond109, i32 %mul122)
  br label %if.end129

if.end129:                                        ; preds = %if.then119, %if.then98.if.end129_crit_edge
  %arg.1 = phi i32 [ %59, %if.then119 ], [ %cond109, %if.then98.if.end129_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %arg.1)
  %cmp.not.i280 = icmp eq i32 %53, %arg.1
  br i1 %cmp.not.i280, label %if.end129.comedi_check_trigger_arg_is.exit283_crit_edge, label %if.then.i281

if.end129.comedi_check_trigger_arg_is.exit283_crit_edge: ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit283

if.then.i281:                                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %scan_begin_arg99 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %arg.1, ptr %scan_begin_arg99, align 4
  br label %comedi_check_trigger_arg_is.exit283

comedi_check_trigger_arg_is.exit283:              ; preds = %if.then.i281, %if.end129.comedi_check_trigger_arg_is.exit283_crit_edge
  %retval.0.i282 = phi i32 [ -22, %if.then.i281 ], [ 0, %if.end129.comedi_check_trigger_arg_is.exit283_crit_edge ]
  %or132 = or i32 %retval.0.i282, %err.4
  br label %if.end133

if.end133:                                        ; preds = %comedi_check_trigger_arg_is.exit283, %if.end95.if.end133_crit_edge
  %err.5 = phi i32 [ %or132, %comedi_check_trigger_arg_is.exit283 ], [ %err.4, %if.end95.if.end133_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool134.not = icmp eq i32 %err.5, 0
  %. = select i1 %tobool134.not, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.end63.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end63.cleanup_crit_edge ], [ %., %if.end133 ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !89) #10
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @del_timer(ptr noundef %1) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @del_timer_sync(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @waveform_ai_insn_config(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, ptr nocapture noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5005, i32 %1)
  %cmp = icmp eq i32 %1, 5005
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx1, align 4
  %arrayidx5 = getelementptr i32, ptr %data, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000, ptr %arrayidx5, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %arrayidx1, align 4
  %arrayidx7 = getelementptr i32, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1000, ptr %arrayidx7, align 4
  br label %return

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx7, align 4
  br label %return

return:                                           ; preds = %if.else10, %if.then8, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.else10 ], [ 0, %if.then3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %arrayidx1 = getelementptr %struct.waveform_private, ptr %5, i32 0, i32 11, i32 %and
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %arrayidx1, align 2
  %inc = add nuw i32 %i.08, 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %10, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_ao_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 5
  %8 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_begin_arg, align 4
  %div = udiv i32 %9, 1000
  %ao_scan_period = getelementptr inbounds %struct.waveform_private, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %ao_scan_period to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %ao_scan_period, align 8
  %11 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @waveform_ao_inttrig_start, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @waveform_ao_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 128
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i87 = and i32 %3, 16
  store i32 %and.i87, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %cmp.i88 = icmp ne i32 %and.i87, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i87, i32 %3)
  %cmp1.not.i89 = icmp eq i32 %and.i87, %3
  %or.cond.i90 = and i1 %cmp.i88, %cmp1.not.i89
  %4 = select i1 %or.cond.i, i1 %or.cond.i90, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i92 = and i32 %6, 2
  store i32 %and.i92, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %cmp.i93 = icmp ne i32 %and.i92, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i92, i32 %6)
  %cmp1.not.i94 = icmp eq i32 %and.i92, %6
  %or.cond.i95 = and i1 %cmp.i93, %cmp1.not.i94
  %7 = select i1 %4, i1 %or.cond.i95, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i97 = and i32 %9, 32
  store i32 %and.i97, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %cmp.i98 = icmp ne i32 %and.i97, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i97, i32 %9)
  %cmp1.not.i99 = icmp eq i32 %and.i97, %9
  %or.cond.i100 = and i1 %cmp.i98, %cmp1.not.i99
  %10 = select i1 %7, i1 %or.cond.i100, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i102 = and i32 %12, 33
  store i32 %and.i102, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %cmp.i103 = icmp ne i32 %and.i102, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i102, i32 %12)
  %cmp1.not.i104 = icmp eq i32 %and.i102, %12
  %or.cond.i105 = and i1 %cmp.i103, %cmp1.not.i104
  %13 = select i1 %10, i1 %or.cond.i105, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %12) #10, !range !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  br i1 %cmp.not.i, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %15 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %16)
  %cmp.i107 = icmp ult i32 %16, 1000
  br i1 %cmp.i107, label %if.then.i, label %if.end14.comedi_check_trigger_arg_min.exit_crit_edge

if.end14.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_min.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1000, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i, %if.end14.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i108 = phi i32 [ -22, %if.then.i ], [ 0, %if.end14.comedi_check_trigger_arg_min.exit_crit_edge ]
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %18 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i109 = icmp eq i32 %19, 0
  br i1 %cmp.not.i109, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i110

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit

if.then.i110:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i110, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i111 = phi i32 [ -22, %if.then.i110 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit_crit_edge ]
  %or18 = or i32 %retval.0.i111, %retval.0.i108
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %21 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i112 = icmp eq i32 %22, 0
  br i1 %cmp.i112, label %if.then.i113, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit115_crit_edge

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit115_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_min.exit115

if.then.i113:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit115

comedi_check_trigger_arg_min.exit115:             ; preds = %if.then.i113, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit115_crit_edge
  %retval.0.i114 = phi i32 [ -22, %if.then.i113 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit115_crit_edge ]
  %or20 = or i32 %or18, %retval.0.i114
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i116 = icmp eq i32 %27, %25
  br i1 %cmp.not.i116, label %comedi_check_trigger_arg_min.exit115.comedi_check_trigger_arg_is.exit119_crit_edge, label %if.then.i117

comedi_check_trigger_arg_min.exit115.comedi_check_trigger_arg_is.exit119_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit119

if.then.i117:                                     ; preds = %comedi_check_trigger_arg_min.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit119

comedi_check_trigger_arg_is.exit119:              ; preds = %if.then.i117, %comedi_check_trigger_arg_min.exit115.comedi_check_trigger_arg_is.exit119_crit_edge
  %retval.0.i118 = phi i32 [ -22, %if.then.i117 ], [ 0, %comedi_check_trigger_arg_min.exit115.comedi_check_trigger_arg_is.exit119_crit_edge ]
  %or23 = or i32 %or20, %retval.0.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i120 = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %comedi_check_trigger_arg_is.exit119
  br i1 %cmp.i120, label %if.then25.if.end31.sink.split_crit_edge, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then25.if.end31.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit119
  br i1 %cmp.i120, label %if.else.if.end31_crit_edge, label %if.else.if.end31.sink.split_crit_edge

if.else.if.end31.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31.sink.split:                              ; preds = %if.else.if.end31.sink.split_crit_edge, %if.then25.if.end31.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then25.if.end31.sink.split_crit_edge ], [ 0, %if.else.if.end31.sink.split_crit_edge ]
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else.if.end31_crit_edge, %if.then25.if.end31_crit_edge
  %call26.pn = phi i32 [ 0, %if.then25.if.end31_crit_edge ], [ 0, %if.else.if.end31_crit_edge ], [ -22, %if.end31.sink.split ]
  %err.0 = or i32 %or23, %call26.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool32.not = icmp eq i32 %err.0, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %32 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -296, i32 %33)
  %cmp37 = icmp ult i32 %33, -296
  %phi.bo = add i32 %33, 500
  %34 = urem i32 %phi.bo, 1000
  %phi.bo86 = sub i32 %phi.bo, %34
  %cond = select i1 %cmp37, i32 %phi.bo86, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %cond)
  %cmp.not.i128 = icmp eq i32 %33, %cond
  br i1 %cmp.not.i128, label %if.end34.cleanup_crit_edge, label %comedi_check_trigger_arg_is.exit131

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

comedi_check_trigger_arg_is.exit131:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %scan_begin_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit131, %if.end34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end31.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit131 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_ao_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inttrig, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !89) #10
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %8, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ao_timer2 = getelementptr inbounds %struct.waveform_private, ptr %1, i32 0, i32 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @del_timer(ptr noundef %ao_timer2) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @del_timer_sync(ptr noundef %ao_timer2) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @waveform_ao_insn_config(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, ptr nocapture noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5005, i32 %1)
  %cmp = icmp eq i32 %1, 5005
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1000, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %data, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx2, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @waveform_ai_timer(ptr noundef %t) #4 align 64 {
entry:
  %sample = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.waveform_private, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async2 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async2, align 4
  %call = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #10
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #14, !srcloc !100
  %asmresult.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !101
  %asmresult10.i.i.i = extractvalue { i64, i32 } %8, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call5 = tail call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not87 = icmp eq i32 %call5, 0
  br i1 %tobool.not87, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %ai_convert_time = getelementptr inbounds %struct.waveform_private, ptr %t, i32 0, i32 1
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %cur_chan = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 10
  %wf_current = getelementptr inbounds %struct.waveform_private, ptr %t, i32 0, i32 4
  %private.i10.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %ai_convert_period = getelementptr inbounds %struct.waveform_private, ptr %t, i32 0, i32 6
  %scan_progress = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 12
  %ai_scan_period = getelementptr inbounds %struct.waveform_private, ptr %t, i32 0, i32 5
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 9
  %wf_period = getelementptr inbounds %struct.waveform_private, ptr %t, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %nsamples.088 = phi i32 [ %call5, %land.rhs.lr.ph ], [ %dec, %cleanup.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %ai_convert_time to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ai_convert_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %cond213.i.i)
  %cmp = icmp ult i64 %10, %cond213.i.i
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %11 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chanlist, align 4
  %13 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_chan, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sample) #10
  %shr = lshr i32 %16, 16
  %and6 = and i32 %shr, 255
  %17 = ptrtoint ptr %wf_current to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wf_current, align 8
  %trunc = trunc i32 %16 to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.epilog.i [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %while.body
  %20 = ptrtoint ptr %private.i10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private.i10.i, align 4
  %22 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_subdev, align 4
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxdata.i.i, align 4
  %range_table.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %range_table.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %range_table.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_lrange, ptr %27, i32 0, i32 1, i32 %and6
  %conv.i.i = zext i32 %25 to i64
  %wf_amplitude.i.i = getelementptr inbounds %struct.waveform_private, ptr %21, i32 0, i32 2
  %28 = ptrtoint ptr %wf_amplitude.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wf_amplitude.i.i, align 8
  %conv2.i.i = zext i32 %29 to i64
  %mul.i.i = mul nuw i64 %conv2.i.i, %conv.i.i
  %max.i.i = getelementptr %struct.comedi_lrange, ptr %27, i32 0, i32 1, i32 %and6, i32 1
  %30 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max.i.i, align 4
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i78 = sub i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp171.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !102

if.then175.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv176.i.i = trunc i64 %mul.i.i to i32
  %div179.i.i = udiv i32 %conv176.i.i, %sub.i.i78
  %conv180.i.i = zext i32 %div179.i.i to i64
  br label %if.end185.i.i

if.else181.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i.i78, i64 %mul.i.i) #14, !srcloc !103
  %asmresult1.i.i.i = extractvalue { i64, i64 } %34, 1
  br label %if.end185.i.i

if.end185.i.i:                                    ; preds = %if.else181.i.i, %if.then175.i.i
  %binary_amplitude.0.i.i = phi i64 [ %conv180.i.i, %if.then175.i.i ], [ %asmresult1.i.i.i, %if.else181.i.i ]
  %conv187.i.i = zext i32 %18 to i64
  %mul188.i.i = shl i64 %binary_amplitude.0.i.i, 1
  %mul189.i.i = mul i64 %mul188.i.i, %conv187.i.i
  %wf_period.i.i = getelementptr inbounds %struct.waveform_private, ptr %21, i32 0, i32 3
  %35 = ptrtoint ptr %wf_period.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wf_period.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul189.i.i)
  %cmp391.i.i = icmp ult i64 %mul189.i.i, 4294967296
  br i1 %cmp391.i.i, label %if.then399.i.i, label %if.else405.i.i, !prof !102

if.then399.i.i:                                   ; preds = %if.end185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv400.i.i = trunc i64 %mul189.i.i to i32
  %div403.i.i = udiv i32 %conv400.i.i, %36
  %conv404.i.i = zext i32 %div403.i.i to i64
  br label %fake_sawtooth.exit.i

if.else405.i.i:                                   ; preds = %if.end185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %mul189.i.i) #14, !srcloc !103
  %asmresult1.i624.i.i = extractvalue { i64, i64 } %37, 1
  br label %fake_sawtooth.exit.i

fake_sawtooth.exit.i:                             ; preds = %if.else405.i.i, %if.then399.i.i
  %value.0.i.i = phi i64 [ %conv404.i.i, %if.then399.i.i ], [ %asmresult1.i624.i.i, %if.else405.i.i ]
  %div594.i.i = lshr i32 %25, 1
  %conv411.i.i = zext i32 %div594.i.i to i64
  %add412.i.i = add i64 %value.0.i.i, %conv411.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add412.i.i, i64 %binary_amplitude.0.i.i)
  %cmp413.i.i = icmp ult i64 %add412.i.i, %binary_amplitude.0.i.i
  %sub417.i.i = sub i64 %add412.i.i, %binary_amplitude.0.i.i
  %38 = call i64 @llvm.umin.i64(i64 %sub417.i.i, i64 %conv.i.i) #10
  %39 = trunc i64 %38 to i16
  %conv427.i.i = select i1 %cmp413.i.i, i16 0, i16 %39
  br label %fake_waveform.exit

sw.bb1.i:                                         ; preds = %while.body
  %40 = ptrtoint ptr %private.i10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i10.i, align 4
  %42 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_subdev, align 4
  %maxdata.i12.i = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %maxdata.i12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxdata.i12.i, align 4
  %div300.i13.i = lshr i32 %45, 1
  %range_table.i14.i = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 15
  %46 = ptrtoint ptr %range_table.i14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %range_table.i14.i, align 4
  %arrayidx.i15.i = getelementptr %struct.comedi_lrange, ptr %47, i32 0, i32 1, i32 %and6
  %conv.i16.i = zext i32 %45 to i64
  %wf_amplitude.i17.i = getelementptr inbounds %struct.waveform_private, ptr %41, i32 0, i32 2
  %48 = ptrtoint ptr %wf_amplitude.i17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wf_amplitude.i17.i, align 8
  %conv2.i18.i = zext i32 %49 to i64
  %mul.i19.i = mul nuw i64 %conv2.i18.i, %conv.i16.i
  %max.i20.i = getelementptr %struct.comedi_lrange, ptr %47, i32 0, i32 1, i32 %and6, i32 1
  %50 = ptrtoint ptr %max.i20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max.i20.i, align 4
  %52 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i15.i, align 4
  %sub.i21.i = sub i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i19.i)
  %cmp171.i123.i = icmp ult i64 %mul.i19.i, 4294967296
  br i1 %cmp171.i123.i, label %if.then175.i128.i, label %if.else181.i130.i, !prof !102

if.then175.i128.i:                                ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv176.i125.i = trunc i64 %mul.i19.i to i32
  %div179.i126.i = udiv i32 %conv176.i125.i, %sub.i21.i
  %conv180.i127.i = zext i32 %div179.i126.i to i64
  br label %if.end185.i133.i

if.else181.i130.i:                                ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i21.i, i64 %mul.i19.i) #14, !srcloc !103
  %asmresult1.i.i129.i = extractvalue { i64, i64 } %54, 1
  br label %if.end185.i133.i

if.end185.i133.i:                                 ; preds = %if.else181.i130.i, %if.then175.i128.i
  %value.0.i131.i = phi i64 [ %conv180.i127.i, %if.then175.i128.i ], [ %asmresult1.i.i129.i, %if.else181.i130.i ]
  %wf_period.i132.i = getelementptr inbounds %struct.waveform_private, ptr %41, i32 0, i32 3
  %55 = ptrtoint ptr %wf_period.i132.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wf_period.i132.i, align 4
  %div187301.i.i = lshr i32 %56, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div187301.i.i, i32 %18)
  %cmp188.i.i = icmp ugt i32 %div187301.i.i, %18
  %conv191.i.i = zext i32 %div300.i13.i to i64
  br i1 %cmp188.i.i, label %if.then190.i.i, label %if.else199.i.i

if.then190.i.i:                                   ; preds = %if.end185.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %value.0.i131.i, i64 %conv191.i.i)
  %cmp192.i.i = icmp ugt i64 %value.0.i131.i, %conv191.i.i
  %sub197.i.i = sub i64 %conv191.i.i, %value.0.i131.i
  %57 = trunc i64 %sub197.i.i to i16
  %extract.t329.i.i = select i1 %cmp192.i.i, i16 0, i16 %57
  br label %fake_waveform.exit

if.else199.i.i:                                   ; preds = %if.end185.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  %add201.i.i = add i64 %value.0.i131.i, %conv191.i.i
  %58 = call i64 @llvm.umin.i64(i64 %add201.i.i, i64 %conv.i16.i) #10
  %extract.t.i.i = trunc i64 %58 to i16
  br label %fake_waveform.exit

sw.epilog.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_subdev, align 4
  %maxdata.i135.i = getelementptr inbounds %struct.comedi_subdevice, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %maxdata.i135.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %maxdata.i135.i, align 4
  %div1.i.i = lshr i32 %62, 1
  %conv.i136.i = trunc i32 %div1.i.i to i16
  br label %fake_waveform.exit

fake_waveform.exit:                               ; preds = %sw.epilog.i, %if.else199.i.i, %if.then190.i.i, %fake_sawtooth.exit.i
  %retval.0.i83 = phi i16 [ %conv.i136.i, %sw.epilog.i ], [ %conv427.i.i, %fake_sawtooth.exit.i ], [ %extract.t.i.i, %if.else199.i.i ], [ %extract.t329.i.i, %if.then190.i.i ]
  %63 = ptrtoint ptr %sample to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %retval.0.i83, ptr %sample, align 2
  %call8 = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef nonnull %sample, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %fake_waveform.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sample) #10
  br label %overrun

if.end:                                           ; preds = %fake_waveform.exit
  %64 = ptrtoint ptr %ai_convert_period to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ai_convert_period, align 8
  %66 = ptrtoint ptr %scan_progress to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scan_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp10 = icmp eq i32 %67, 0
  br i1 %cmp10, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %ai_scan_period to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ai_scan_period, align 4
  %70 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %71, %65
  %sub = add i32 %69, %65
  %add = sub i32 %sub, %mul
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %time_increment.0 = phi i32 [ %add, %if.then11 ], [ %65, %if.end.if.end13_crit_edge ]
  %72 = ptrtoint ptr %wf_current to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wf_current, align 8
  %add15 = add i32 %73, %time_increment.0
  store i32 %add15, ptr %wf_current, align 8
  %74 = ptrtoint ptr %wf_period to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wf_period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %75)
  %cmp17.not = icmp ult i32 %add15, %75
  br i1 %cmp17.not, label %if.end13.cleanup_crit_edge, label %if.then18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %rem = urem i32 %add15, %75
  %76 = ptrtoint ptr %wf_current to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %rem, ptr %wf_current, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end13.cleanup_crit_edge
  %conv = zext i32 %time_increment.0 to i64
  %77 = ptrtoint ptr %ai_convert_time to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ai_convert_time, align 8
  %add23 = add i64 %78, %conv
  store i64 %add23, ptr %ai_convert_time, align 8
  %dec = add i32 %nsamples.088, -1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sample) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %79 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %80)
  %cmp25 = icmp eq i32 %80, 32
  br i1 %cmp25, label %land.lhs.true, label %while.end.if.else_crit_edge

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %while.end
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 11
  %81 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %83 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp27.not = icmp ult i32 %82, %84
  br i1 %cmp27.not, label %land.lhs.true.if.else_crit_edge, label %if.then29

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %85 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %events, align 4
  %or = or i32 %86, 2
  store i32 %or, ptr %events, align 4
  br label %overrun

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.end.if.else_crit_edge
  %ai_convert_time30 = getelementptr inbounds %struct.waveform_private, ptr %t, i32 0, i32 1
  %87 = ptrtoint ptr %ai_convert_time30 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %ai_convert_time30, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %cond213.i.i)
  %cmp31 = icmp ugt i64 %88, %cond213.i.i
  %sub35 = sub i64 %88, %cond213.i.i
  %conv36 = trunc i64 %sub35 to i32
  %time_increment.1 = select i1 %cmp31, i32 %conv36, i32 1
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %time_increment.1) #10
  %add40 = add i32 %call3.i, %89
  %call41 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add40) #10
  br label %overrun

overrun:                                          ; preds = %if.else, %if.then29, %cleanup.thread
  %call43 = call i32 @comedi_handle_events(ptr noundef %1, ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @waveform_ao_timer(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_subdev, align 4
  %async2 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async2, align 4
  %call = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #10
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #14, !srcloc !100
  %asmresult.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !101
  %asmresult10.i.i.i = extractvalue { i64, i32 } %8, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %ao_last_scan_time = getelementptr i8, ptr %t, i32 52
  %9 = ptrtoint ptr %ao_last_scan_time to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ao_last_scan_time, align 8
  %sub = sub i64 %cond213.i.i, %10
  %ao_scan_period = getelementptr i8, ptr %t, i32 60
  %11 = ptrtoint ptr %ao_scan_period to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ao_scan_period, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp171 = icmp ult i64 %sub, 4294967296
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !102

if.then175:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv176 = trunc i64 %sub to i32
  %div179 = udiv i32 %conv176, %12
  %conv180 = zext i32 %div179 to i64
  br label %if.end185

if.else181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %sub) #14, !srcloc !103
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then175
  %scans_since.0 = phi i64 [ %conv180, %if.then175 ], [ %asmresult1.i, %if.else181 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %scans_since.0)
  %tobool187.not = icmp eq i64 %scans_since.0, 0
  br i1 %tobool187.not, label %if.end185.if.end238_crit_edge, label %if.then188

if.end185.if.end238_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238

if.then188:                                       ; preds = %if.end185
  %call189 = tail call i32 @comedi_nscans_left(ptr noundef %3, i32 noundef 0) #10
  %conv190 = zext i32 %call189 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %scans_since.0, i64 %conv190)
  %cmp191 = icmp ult i64 %scans_since.0, %conv190
  %conv194 = trunc i64 %scans_since.0 to i32
  %spec.select = select i1 %cmp191, i32 %conv194, i32 %call189
  %14 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %spec.select, label %if.then200 [
    i32 0, label %if.then188.if.end238_crit_edge
    i32 1, label %if.then188.if.end212_crit_edge
  ]

if.then188.if.end212_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.then188.if.end238_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238

if.then200:                                       ; preds = %if.then188
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 9
  %15 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_end_arg, align 4
  %sub201 = add i32 %spec.select, -1
  %mul202 = mul i32 %16, %sub201
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shl.i = shl i32 %mul202, %cond.i.i
  %call204 = tail call i32 @comedi_buf_read_alloc(ptr noundef %3, i32 noundef %shl.i) #10
  %call205 = tail call i32 @comedi_buf_read_free(ptr noundef %3, i32 noundef %call204) #10
  tail call void @comedi_inc_scan_progress(ptr noundef %3, i32 noundef %call204) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call204, i32 %shl.i)
  %cmp206 = icmp ult i32 %call204, %shl.i
  br i1 %cmp206, label %cleanup.thread, label %if.then200.if.end212_crit_edge

if.then200.if.end212_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

cleanup.thread:                                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %19 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %events, align 4
  %or209 = or i32 %20, 32
  store i32 %or209, ptr %events, align 4
  br label %underrun

if.end212:                                        ; preds = %if.then200.if.end212_crit_edge, %if.then188.if.end212_crit_edge
  %scan_end_arg213 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 9
  %21 = ptrtoint ptr %scan_end_arg213 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_end_arg213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp214419.not = icmp eq i32 %22, 0
  br i1 %cmp214419.not, label %if.end212.for.end_crit_edge, label %for.body.lr.ph

if.end212.for.end_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end212
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %ao_loopbacks = getelementptr i8, ptr %t, i32 64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0420, 1
  %23 = ptrtoint ptr %scan_end_arg213 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_end_arg213, align 4
  %cmp214 = icmp ult i32 %inc, %24
  br i1 %cmp214, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0420 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %25 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 %i.0420
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %and216 = and i32 %28, 65535
  %arrayidx217 = getelementptr [8 x i16], ptr %ao_loopbacks, i32 0, i32 %and216
  %call218 = tail call i32 @comedi_buf_read_samples(ptr noundef %3, ptr noundef %arrayidx217, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %cleanup224.thread, label %for.cond

cleanup224.thread:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %events221 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %29 = ptrtoint ptr %events221 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events221, align 4
  %or222 = or i32 %30, 32
  store i32 %or222, ptr %events221, align 4
  br label %underrun

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end212.for.end_crit_edge
  %conv228 = zext i32 %spec.select to i64
  %31 = ptrtoint ptr %ao_scan_period to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ao_scan_period, align 8
  %conv230 = zext i32 %32 to i64
  %mul231 = mul nuw i64 %conv230, %conv228
  %33 = ptrtoint ptr %ao_last_scan_time to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ao_last_scan_time, align 8
  %add233 = add i64 %mul231, %34
  store i64 %add233, ptr %ao_last_scan_time, align 8
  br label %if.end238

if.end238:                                        ; preds = %for.end, %if.then188.if.end238_crit_edge, %if.end185.if.end238_crit_edge
  %scans_avail.1 = phi i32 [ 0, %if.end185.if.end238_crit_edge ], [ %spec.select, %if.then188.if.end238_crit_edge ], [ %spec.select, %for.end ]
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %35 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %36)
  %cmp239 = icmp eq i32 %36, 32
  br i1 %cmp239, label %land.lhs.true241, label %if.end238.if.else247_crit_edge

if.end238.if.else247_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else247

land.lhs.true241:                                 ; preds = %if.end238
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 11
  %37 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %39 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp242.not = icmp ult i32 %38, %40
  br i1 %cmp242.not, label %land.lhs.true241.if.else247_crit_edge, label %if.then244

land.lhs.true241.if.else247_crit_edge:            ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else247

if.then244:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #12
  %events245 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %41 = ptrtoint ptr %events245 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %events245, align 4
  %or246 = or i32 %42, 2
  store i32 %or246, ptr %events245, align 4
  br label %underrun

if.else247:                                       ; preds = %land.lhs.true241.if.else247_crit_edge, %if.end238.if.else247_crit_edge
  %conv248 = zext i32 %scans_avail.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %scans_since.0, i64 %conv248)
  %cmp249 = icmp ugt i64 %scans_since.0, %conv248
  br i1 %cmp249, label %if.then251, label %if.else254

if.then251:                                       ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #12
  %events252 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %43 = ptrtoint ptr %events252 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %events252, align 4
  %or253 = or i32 %44, 32
  store i32 %or253, ptr %events252, align 4
  br label %underrun

if.else254:                                       ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %ao_last_scan_time to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ao_last_scan_time, align 8
  %47 = ptrtoint ptr %ao_scan_period to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ao_scan_period, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add258 = sub i64 %46, %cond213.i.i
  %50 = trunc i64 %add258 to i32
  %conv260 = add i32 %48, %50
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %conv260) #10
  %add262 = add i32 %call3.i, %49
  %call263 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add262) #10
  br label %underrun

underrun:                                         ; preds = %if.else254, %if.then251, %if.then244, %cleanup224.thread, %cleanup.thread
  %call266 = tail call i32 @comedi_handle_events(ptr noundef %1, ptr noundef %3) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waveform_ao_inttrig_start(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async1, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inttrig, align 4
  %call = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %7 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #10
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %7, i32 0) #14, !srcloc !100
  %asmresult.i.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %7, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !101
  %asmresult10.i.i.i = extractvalue { i64, i32 } %9, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %ao_last_scan_time = getelementptr inbounds %struct.waveform_private, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %ao_last_scan_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %cond213.i.i, ptr %ao_last_scan_time, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %ao_scan_period = getelementptr inbounds %struct.waveform_private, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %ao_scan_period to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ao_scan_period, align 8
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %13) #10
  %add = add i32 %call3.i, %11
  %ao_timer = getelementptr inbounds %struct.waveform_private, ptr %5, i32 0, i32 7
  %expires = getelementptr inbounds %struct.waveform_private, ptr %5, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %ao_timer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nscans_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_inc_scan_progress(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !69, !70, !72, !73, !74, !75, !76, !77, !79, !81, !82, !83, !84, !85, !87, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__param_noauto, !1, !"__param_noauto", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 66, i32 1}
!2 = !{ptr @__UNIQUE_ID_noautotype229, !1, !"__UNIQUE_ID_noautotype229", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_noauto230, !4, !"__UNIQUE_ID_noauto230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 67, i32 1}
!5 = !{ptr @__param_amplitude, !6, !"__param_amplitude", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 69, i32 1}
!7 = !{ptr @__UNIQUE_ID_amplitudetype231, !6, !"__UNIQUE_ID_amplitudetype231", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_amplitude232, !9, !"__UNIQUE_ID_amplitude232", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 70, i32 1}
!10 = !{ptr @__param_period, !11, !"__param_period", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 72, i32 1}
!12 = !{ptr @__UNIQUE_ID_periodtype233, !11, !"__UNIQUE_ID_periodtype233", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_period234, !14, !"__UNIQUE_ID_period234", i1 false, i1 false}
!14 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 73, i32 1}
!15 = !{ptr @__initcall__kmod_comedi_test__245_829_comedi_test_init6, !16, !"__initcall__kmod_comedi_test__245_829_comedi_test_init6", i1 false, i1 false}
!16 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 829, i32 1}
!17 = !{ptr @__exitcall_comedi_test_exit, !18, !"__exitcall_comedi_test_exit", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 843, i32 1}
!19 = !{ptr @__UNIQUE_ID_author246, !20, !"__UNIQUE_ID_author246", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 845, i32 1}
!21 = !{ptr @__UNIQUE_ID_description247, !22, !"__UNIQUE_ID_description247", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 846, i32 1}
!23 = !{ptr @__UNIQUE_ID_file248, !24, !"__UNIQUE_ID_file248", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 847, i32 1}
!25 = !{ptr @__UNIQUE_ID_license249, !24, !"__UNIQUE_ID_license249", i1 false, i1 false}
!26 = !{ptr @config_mode, !27, !"config_mode", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 60, i32 13}
!28 = !{ptr @set_amplitude, !29, !"set_amplitude", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 61, i32 21}
!30 = !{ptr @set_period, !31, !"set_period", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 62, i32 21}
!32 = !{ptr @ctcls, !33, !"ctcls", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 63, i32 22}
!34 = !{ptr @ctdev, !35, !"ctdev", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 64, i32 23}
!36 = !{ptr @__param_str_noauto, !1, !"__param_str_noauto", i1 false, i1 false}
!37 = !{ptr @__param_str_amplitude, !6, !"__param_str_amplitude", i1 false, i1 false}
!38 = !{ptr @__param_str_period, !11, !"__param_str_period", i1 false, i1 false}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 793, i32 3}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @comedi_test_init._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @comedi_test_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @comedi_test_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 798, i32 11}
!47 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 800, i32 4}
!50 = !{ptr @comedi_test_init._entry.4, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @comedi_test_init._entry_ptr.6, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 804, i32 57}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 806, i32 4}
!56 = !{ptr @comedi_test_init._entry.8, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @comedi_test_init._entry_ptr.10, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 812, i32 4}
!60 = !{ptr @comedi_test_init._entry.11, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @comedi_test_init._entry_ptr.13, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @waveform_driver, !63, !"waveform_driver", i1 false, i1 false}
!63 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 775, i32 29}
!64 = !{ptr @waveform_common_attach.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 724, i32 2}
!66 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @waveform_common_attach.__key.15, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 725, i32 2}
!69 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 727, i32 2}
!72 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @waveform_common_attach._entry, !71, !"_entry", i1 false, i1 false}
!76 = !{ptr @waveform_common_attach._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @waveform_ai_ranges, !78, !"waveform_ai_ranges", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 92, i32 35}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 355, i32 3}
!81 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @waveform_ai_cmd._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @waveform_ai_cmd._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/comedi/drivers/comedi_test.c", i32 589, i32 3}
!87 = !{ptr @waveform_ao_cmd._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @waveform_ao_cmd._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{i64 723004, i64 723031, i64 723053, i64 723081}
!101 = !{i64 723412, i64 723439, i64 723472, i64 723493, i64 723520, i64 723546}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2148208548, i64 2148208828, i64 2148209162, i64 2148209496}
!104 = !{i32 0, i32 33}
