; ModuleID = '/llk/IR_all_yes/drivers/vme/bridges/vme_fake.c_pt.bc'
source_filename = "../drivers/vme/bridges/vme_fake.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vme_bridge = type { [16 x i8], i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, [7 x %struct.vme_irq], %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.vme_irq = type { i32, [256 x %struct.vme_callback] }
%struct.vme_callback = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fake_driver = type { ptr, [8 x %struct.fake_slave_window], [8 x %struct.fake_master_window], i32, i64, i32, i32, [4 x ptr], [4 x ptr], %struct.tasklet_struct, i32, i32, ptr, i32, %struct.mutex }
%struct.fake_slave_window = type { i32, i64, i64, ptr, i32, i32 }
%struct.fake_master_window = type { i32, i64, i64, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.43, i32 }
%union.anon.43 = type { ptr }
%struct.vme_master_resource = type { %struct.list_head, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.resource, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.vme_slave_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, i32, i32 }
%struct.vme_lm_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, i32 }

@exit_pointer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fake_exit.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vme_fake\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fake_exit\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/vme/bridges/vme_fake.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Driver is being unloaded.\0A\00", [37 x i8] zeroinitializer }, align 32
@vme_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_geoid188 = internal constant [48 x i8] c"vme_fake.parm=geoid:Set geographical addressing\00", section ".modinfo", align 1
@__param_str_geoid = internal constant [15 x i8] c"vme_fake.geoid\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@geoid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_geoid = internal constant %struct.kernel_param { ptr @__param_str_geoid, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @geoid } }, section "__param", align 4
@__UNIQUE_ID_geoidtype189 = internal constant [28 x i8] c"vme_fake.parmtype=geoid:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [44 x i8] c"vme_fake.description=Fake VME bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [43 x i8] c"vme_fake.file=drivers/vme/bridges/vme_fake\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [21 x i8] c"vme_fake.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_vme_fake__193_1304_fake_init6 = internal global ptr @fake_init, section ".initcall6.init", align 4
@__exitcall_fake_exit = internal global ptr @fake_exit, section ".exitcall.exit", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vme\00", [28 x i8] zeroinitializer }, align 32
@fake_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&fake_device->vme_int\00", [42 x i8] zeroinitializer }, align 32
@fake_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&fake_bridge->irq_mtx\00", [42 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vme_fake\00", [23 x i8] zeroinitializer }, align 32
@fake_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&master_image->lock\00", [44 x i8] zeroinitializer }, align 32
@fake_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&slave_image->mtx\00", [46 x i8] zeroinitializer }, align 32
@fake_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&lm->mtx\00", [23 x i8] zeroinitializer }, align 32
@fake_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016Board is%s the VME system controller\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fake_init\00", [22 x i8] zeroinitializer }, align 32
@fake_init._entry_ptr = internal global ptr @fake_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@fake_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016VME geographical address is set to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@fake_init._entry_ptr.20 = internal global ptr @fake_init._entry.18, section ".printk_index", align 4
@fake_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CR/CSR configuration failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@fake_init._entry_ptr.23 = internal global ptr @fake_init._entry.21, section ".printk_index", align 4
@fake_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Chip Registration failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@fake_init._entry_ptr.26 = internal global ptr @fake_init._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fake_slave_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Invalid address space\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fake_slave_set\00", [17 x i8] zeroinitializer }, align 32
@fake_slave_set._entry_ptr = internal global ptr @fake_slave_set._entry, section ".printk_index", align 4
@fake_slave_set._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Invalid VME base alignment\0A\00", [34 x i8] zeroinitializer }, align 32
@fake_slave_set._entry_ptr.31 = internal global ptr @fake_slave_set._entry.29, section ".printk_index", align 4
@fake_slave_set._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Invalid VME bound alignment\0A\00", [33 x i8] zeroinitializer }, align 32
@fake_slave_set._entry_ptr.34 = internal global ptr @fake_slave_set._entry.32, section ".printk_index", align 4
@fake_master_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Invalid VME Window alignment\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fake_master_set\00", [16 x i8] zeroinitializer }, align 32
@fake_master_set._entry_ptr = internal global ptr @fake_master_set._entry, section ".printk_index", align 4
@fake_master_set._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Invalid size alignment\0A\00", [38 x i8] zeroinitializer }, align 32
@fake_master_set._entry_ptr.39 = internal global ptr @fake_master_set._entry.37, section ".printk_index", align 4
@fake_master_set._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Size must be non-zero for enabled windows\0A\00", [51 x i8] zeroinitializer }, align 32
@fake_master_set._entry_ptr.42 = internal global ptr @fake_master_set._entry.40, section ".printk_index", align 4
@fake_master_set._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Invalid data width\0A\00", [42 x i8] zeroinitializer }, align 32
@fake_master_set._entry_ptr.45 = internal global ptr @fake_master_set._entry.43, section ".printk_index", align 4
@fake_master_set._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.36, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fake_master_set._entry_ptr.47 = internal global ptr @fake_master_set._entry.46, section ".printk_index", align 4
@fake_lm_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Location monitor callback attached, can't reset\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fake_lm_set\00", [20 x i8] zeroinitializer }, align 32
@fake_lm_set._entry_ptr = internal global ptr @fake_lm_set._entry, section ".printk_index", align 4
@fake_lm_set._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.49, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fake_lm_set._entry_ptr.51 = internal global ptr @fake_lm_set._entry.50, section ".printk_index", align 4
@fake_lm_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Location monitor not properly configured\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fake_lm_attach\00", [17 x i8] zeroinitializer }, align 32
@fake_lm_attach._entry_ptr = internal global ptr @fake_lm_attach._entry, section ".printk_index", align 4
@fake_lm_attach._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Existing callback attached\0A\00", [34 x i8] zeroinitializer }, align 32
@fake_lm_attach._entry_ptr.56 = internal global ptr @fake_lm_attach._entry.54, section ".printk_index", align 4
@fake_crcsr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016CR/CSR Offset: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fake_crcsr_init\00", [16 x i8] zeroinitializer }, align 32
@fake_crcsr_init._entry_ptr = internal global ptr @fake_crcsr_init._entry, section ".printk_index", align 4
@switch.table.fake_slave_set = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 4096, i32 16, i32 65536, i32 16, i32 16, i32 16, i32 65536], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"exit_pointer\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 86, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1256, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [9 x i8] c"vme_root\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 88, i32 23 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"geoid\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 82, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1075, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1099, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1100, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 84, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1115, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1141, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1163, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1186, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1189, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1193, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1199, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 187, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 198, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 202, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 266, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 272, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 278, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 290, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 308, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 873, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 886, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 940, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 947, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [34 x i8] c"../drivers/vme/bridges/vme_fake.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1049, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [28 x i8] c"switch.table.fake_slave_set\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_geoid188, ptr @__UNIQUE_ID_geoidtype189, ptr @__UNIQUE_ID_license192, ptr @__exitcall_fake_exit, ptr @__initcall__kmod_vme_fake__193_1304_fake_init6, ptr @__param_geoid, ptr @fake_crcsr_init._entry, ptr @fake_crcsr_init._entry_ptr, ptr @fake_exit, ptr @fake_init._entry, ptr @fake_init._entry.18, ptr @fake_init._entry.21, ptr @fake_init._entry.24, ptr @fake_init._entry_ptr, ptr @fake_init._entry_ptr.20, ptr @fake_init._entry_ptr.23, ptr @fake_init._entry_ptr.26, ptr @fake_lm_attach._entry, ptr @fake_lm_attach._entry.54, ptr @fake_lm_attach._entry_ptr, ptr @fake_lm_attach._entry_ptr.56, ptr @fake_lm_set._entry, ptr @fake_lm_set._entry.50, ptr @fake_lm_set._entry_ptr, ptr @fake_lm_set._entry_ptr.51, ptr @fake_master_set._entry, ptr @fake_master_set._entry.37, ptr @fake_master_set._entry.40, ptr @fake_master_set._entry.43, ptr @fake_master_set._entry.46, ptr @fake_master_set._entry_ptr, ptr @fake_master_set._entry_ptr.39, ptr @fake_master_set._entry_ptr.42, ptr @fake_master_set._entry_ptr.45, ptr @fake_master_set._entry_ptr.47, ptr @fake_slave_set._entry, ptr @fake_slave_set._entry.29, ptr @fake_slave_set._entry.32, ptr @fake_slave_set._entry_ptr, ptr @fake_slave_set._entry_ptr.31, ptr @fake_slave_set._entry_ptr.34, ptr @exit_pointer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vme_root, ptr @geoid, ptr @.str.4, ptr @fake_init.__key, ptr @.str.5, ptr @fake_init.__key.6, ptr @.str.7, ptr @driver_name, ptr @fake_init.__key.8, ptr @.str.9, ptr @fake_init.__key.10, ptr @.str.11, ptr @fake_init.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @switch.table.fake_slave_set], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_pointer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geoid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_slave_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_slave_set._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_slave_set._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_master_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_master_set._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_master_set._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_master_set._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_master_set._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_lm_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_lm_set._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_lm_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_lm_attach._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_crcsr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fake_slave_set to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fake_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @exit_pointer, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fake_exit.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fake_exit, %if.then)) #10
          to label %for.body [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fake_exit.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.3) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then, %entry
  %i.073 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx = getelementptr %struct.fake_driver, ptr %2, i32 0, i32 2, i32 %i.073
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.for.body5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %i.174 = phi i32 [ %inc9, %for.body5.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.fake_driver, ptr %2, i32 0, i32 1, i32 %i.174
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx6, align 8
  %inc9 = add nuw nsw i32 %i.174, 1
  %exitcond85.not = icmp eq i32 %inc9, 8
  br i1 %exitcond85.not, label %for.end10, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.end10:                                        ; preds = %for.body5
  %lm_enabled = getelementptr inbounds %struct.fake_driver, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %lm_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lm_enabled, align 8
  tail call void @vme_unregister_bridge(ptr noundef %0) #10
  %6 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_priv, align 4
  %crcsr_kernel.i = getelementptr inbounds %struct.fake_driver, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %crcsr_kernel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crcsr_kernel.i, align 8
  tail call void @kfree(ptr noundef %9) #10
  %slave_resources = getelementptr inbounds %struct.vme_bridge, ptr %0, i32 0, i32 3
  %10 = ptrtoint ptr %slave_resources to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_resources, align 4
  %cmp.i.not76 = icmp eq ptr %11, %slave_resources
  br i1 %cmp.i.not76, label %for.end10.for.end22_crit_edge, label %for.end10.for.body18_crit_edge

for.end10.for.body18_crit_edge:                   ; preds = %for.end10
  br label %for.body18

for.end10.for.end22_crit_edge:                    ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body18:                                       ; preds = %list_del.exit.for.body18_crit_edge, %for.end10.for.body18_crit_edge
  %pos.077 = phi ptr [ %tmplist.079, %list_del.exit.for.body18_crit_edge ], [ %11, %for.end10.for.body18_crit_edge ]
  %12 = ptrtoint ptr %pos.077 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmplist.079 = load ptr, ptr %pos.077, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.077) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body18.list_del.exit_crit_edge

for.body18.list_del.exit_crit_edge:               ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.077, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %pos.077 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pos.077, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body18.list_del.exit_crit_edge
  %19 = ptrtoint ptr %pos.077 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.077, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.077, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.077) #10
  %cmp.i.not = icmp eq ptr %tmplist.079, %slave_resources
  br i1 %cmp.i.not, label %list_del.exit.for.end22_crit_edge, label %list_del.exit.for.body18_crit_edge

list_del.exit.for.body18_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

list_del.exit.for.end22_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.end22:                                        ; preds = %list_del.exit.for.end22_crit_edge, %for.end10.for.end22_crit_edge
  %master_resources = getelementptr inbounds %struct.vme_bridge, ptr %0, i32 0, i32 2
  %21 = ptrtoint ptr %master_resources to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master_resources, align 4
  %cmp.i64.not81 = icmp eq ptr %22, %master_resources
  br i1 %cmp.i64.not81, label %for.end22.for.end37_crit_edge, label %for.end22.for.body31_crit_edge

for.end22.for.body31_crit_edge:                   ; preds = %for.end22
  br label %for.body31

for.end22.for.end37_crit_edge:                    ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body31:                                       ; preds = %list_del.exit71.for.body31_crit_edge, %for.end22.for.body31_crit_edge
  %pos.182 = phi ptr [ %tmplist.184, %list_del.exit71.for.body31_crit_edge ], [ %22, %for.end22.for.body31_crit_edge ]
  %23 = ptrtoint ptr %pos.182 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmplist.184 = load ptr, ptr %pos.182, align 4
  %call.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.182) #10
  br i1 %call.i.i66, label %if.end.i.i69, label %for.body31.list_del.exit71_crit_edge

for.body31.list_del.exit71_crit_edge:             ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit71

if.end.i.i69:                                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i67 = getelementptr inbounds %struct.list_head, ptr %pos.182, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i67, align 4
  %26 = ptrtoint ptr %pos.182 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pos.182, align 4
  %prev1.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i68, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit71

list_del.exit71:                                  ; preds = %if.end.i.i69, %for.body31.list_del.exit71_crit_edge
  %30 = ptrtoint ptr %pos.182 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.182, align 4
  %prev.i70 = getelementptr inbounds %struct.list_head, ptr %pos.182, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i70, align 4
  tail call void @kfree(ptr noundef %pos.182) #10
  %cmp.i64.not = icmp eq ptr %tmplist.184, %master_resources
  br i1 %cmp.i64.not, label %list_del.exit71.for.end37_crit_edge, label %list_del.exit71.for.body31_crit_edge

list_del.exit71.for.body31_crit_edge:             ; preds = %list_del.exit71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31

list_del.exit71.for.end37_crit_edge:              ; preds = %list_del.exit71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.end37:                                        ; preds = %list_del.exit71.for.end37_crit_edge, %for.end22.for.end37_crit_edge
  %32 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_priv, align 4
  tail call void @kfree(ptr noundef %33) #10
  tail call void @kfree(ptr noundef %0) #10
  %34 = load ptr, ptr @vme_root, align 4
  tail call void @root_device_unregister(ptr noundef %34) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_unregister_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @root_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__root_device_register(ptr noundef nonnull @.str.4, ptr noundef null) #10
  store ptr %call, ptr @vme_root, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 14616, i32 noundef 3520, i32 noundef 2) #13
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 840) #14
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.err_driver_crit_edge, label %if.end6

if.end.err_driver_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_driver

if.end6:                                          ; preds = %if.end
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_priv, align 8
  %2 = load ptr, ptr @vme_root, align 4
  %parent = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i, ptr %call7.i.i, align 8
  %vme_int = getelementptr inbounds %struct.fake_driver, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %vme_int, ptr noundef nonnull @.str.5, ptr noundef nonnull @fake_init.__key) #10
  %irq_mtx = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %irq_mtx, ptr noundef nonnull @.str.7, ptr noundef nonnull @fake_init.__key.6) #10
  %int_tasklet = getelementptr inbounds %struct.fake_driver, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %call1.i.i.i to i32
  tail call void @tasklet_init(ptr noundef %int_tasklet, ptr noundef nonnull @fake_VIRQ_tasklet, i32 noundef %5) #10
  %6 = call ptr @memcpy(ptr %call1.i.i.i, ptr @driver_name, i32 9)
  %master_resources = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %master_resources to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %master_resources, ptr %master_resources, align 4
  %prev.i = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %master_resources, ptr %prev.i, align 8
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end6
  %i.0264 = phi i32 [ 0, %if.end6 ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 112) #14
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %for.body.err_master_crit_edge, label %if.end15

for.body.err_master_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_master

if.end15:                                         ; preds = %for.body
  %parent16 = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i.i.i, ptr %parent16, align 8
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @fake_init.__key.8, i16 noundef signext 3) #10
  %locked = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %locked, align 8
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 4
  %12 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.0264, ptr %number, align 4
  %address_attr = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 5
  %13 = ptrtoint ptr %address_attr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 15, ptr %address_attr, align 8
  %cycle_attr = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 6
  %14 = ptrtoint ptr %cycle_attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 63295, ptr %cycle_attr, align 4
  %width_attr = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 7
  %15 = ptrtoint ptr %width_attr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %width_attr, align 8
  %bus_resource = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 8
  %16 = call ptr @memset(ptr %bus_resource, i32 0, i32 36)
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %18, ptr noundef %master_resources) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %prev.i, align 8
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %master_resources, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0264, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %slave_resources = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %slave_resources to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %slave_resources, ptr %slave_resources, align 4
  %prev.i231 = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i231 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %slave_resources, ptr %prev.i231, align 32
  br label %for.body24

for.body24:                                       ; preds = %list_add_tail.exit236.for.body24_crit_edge, %for.end
  %i.1265 = phi i32 [ 0, %for.end ], [ %inc40, %list_add_tail.exit236.for.body24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i228 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 120) #14
  %tobool26.not = icmp eq ptr %call7.i228, null
  br i1 %tobool26.not, label %for.body24.err_slave_crit_edge, label %if.end28

for.body24.err_slave_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_slave

if.end28:                                         ; preds = %for.body24
  %parent29 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i228, i32 0, i32 1
  %26 = ptrtoint ptr %parent29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1.i.i.i, ptr %parent29, align 8
  %mtx = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i228, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.11, ptr noundef nonnull @fake_init.__key.10) #10
  %locked33 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i228, i32 0, i32 3
  %27 = ptrtoint ptr %locked33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %locked33, align 8
  %number34 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i228, i32 0, i32 4
  %28 = ptrtoint ptr %number34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.1265, ptr %number34, align 4
  %address_attr35 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i228, i32 0, i32 5
  %29 = ptrtoint ptr %address_attr35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 511, ptr %address_attr35, align 8
  %cycle_attr36 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i228, i32 0, i32 6
  %30 = ptrtoint ptr %cycle_attr36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 63295, ptr %cycle_attr36, align 4
  %31 = ptrtoint ptr %prev.i231 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i231, align 32
  %call.i.i233 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i228, ptr noundef %32, ptr noundef %slave_resources) #10
  br i1 %call.i.i233, label %if.end.i.i235, label %if.end28.list_add_tail.exit236_crit_edge

if.end28.list_add_tail.exit236_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit236

if.end.i.i235:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %prev.i231 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i228, ptr %prev.i231, align 32
  %34 = ptrtoint ptr %call7.i228 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %slave_resources, ptr %call7.i228, align 8
  %prev3.i.i234 = getelementptr inbounds %struct.list_head, ptr %call7.i228, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i234 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i234, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i228, ptr %32, align 4
  br label %list_add_tail.exit236

list_add_tail.exit236:                            ; preds = %if.end.i.i235, %if.end28.list_add_tail.exit236_crit_edge
  %inc40 = add nuw nsw i32 %i.1265, 1
  %exitcond283.not = icmp eq i32 %inc40, 8
  br i1 %exitcond283.not, label %for.end41, label %list_add_tail.exit236.for.body24_crit_edge

list_add_tail.exit236.for.body24_crit_edge:       ; preds = %list_add_tail.exit236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.end41:                                        ; preds = %list_add_tail.exit236
  %lm_resources = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %lm_resources to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %lm_resources, ptr %lm_resources, align 4
  %prev.i237 = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %prev.i237 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lm_resources, ptr %prev.i237, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i229 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 116) #14
  %tobool43.not = icmp eq ptr %call7.i229, null
  br i1 %tobool43.not, label %for.end41.err_lm_crit_edge, label %if.end45

for.end41.err_lm_crit_edge:                       ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_lm

if.end45:                                         ; preds = %for.end41
  %parent46 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i229, i32 0, i32 1
  %40 = ptrtoint ptr %parent46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i.i.i, ptr %parent46, align 8
  %mtx48 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i229, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx48, ptr noundef nonnull @.str.13, ptr noundef nonnull @fake_init.__key.12) #10
  %locked51 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i229, i32 0, i32 3
  %41 = ptrtoint ptr %locked51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %locked51, align 8
  %number52 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i229, i32 0, i32 4
  %42 = ptrtoint ptr %number52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %number52, align 4
  %monitors = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i229, i32 0, i32 5
  %43 = ptrtoint ptr %monitors to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %monitors, align 8
  %44 = ptrtoint ptr %prev.i237 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i237, align 16
  %call.i.i239 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i229, ptr noundef %45, ptr noundef %lm_resources) #10
  br i1 %call.i.i239, label %if.end.i.i241, label %if.end45.list_add_tail.exit242_crit_edge

if.end45.list_add_tail.exit242_crit_edge:         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit242

if.end.i.i241:                                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prev.i237 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i229, ptr %prev.i237, align 16
  %47 = ptrtoint ptr %call7.i229 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %lm_resources, ptr %call7.i229, align 8
  %prev3.i.i240 = getelementptr inbounds %struct.list_head, ptr %call7.i229, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i240 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i240, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call7.i229, ptr %45, align 4
  br label %list_add_tail.exit242

list_add_tail.exit242:                            ; preds = %if.end.i.i241, %if.end45.list_add_tail.exit242_crit_edge
  %slave_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 13
  %50 = ptrtoint ptr %slave_get to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @fake_slave_get, ptr %slave_get, align 4
  %slave_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 14
  %51 = ptrtoint ptr %slave_set to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @fake_slave_set, ptr %slave_set, align 16
  %master_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 15
  %52 = ptrtoint ptr %master_get to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @fake_master_get, ptr %master_get, align 4
  %master_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 16
  %53 = ptrtoint ptr %master_set to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @fake_master_set, ptr %master_set, align 8
  %master_read = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 17
  %54 = ptrtoint ptr %master_read to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @fake_master_read, ptr %master_read, align 4
  %master_write = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 18
  %55 = ptrtoint ptr %master_write to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @fake_master_write, ptr %master_write, align 32
  %master_rmw = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %master_rmw to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @fake_master_rmw, ptr %master_rmw, align 4
  %irq_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 23
  %57 = ptrtoint ptr %irq_set to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @fake_irq_set, ptr %irq_set, align 4
  %irq_generate = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 24
  %58 = ptrtoint ptr %irq_generate to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @fake_irq_generate, ptr %irq_generate, align 8
  %lm_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 25
  %59 = ptrtoint ptr %lm_set to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @fake_lm_set, ptr %lm_set, align 4
  %lm_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 26
  %60 = ptrtoint ptr %lm_get to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @fake_lm_get, ptr %lm_get, align 256
  %lm_attach = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 27
  %61 = ptrtoint ptr %lm_attach to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @fake_lm_attach, ptr %lm_attach, align 4
  %lm_detach = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 28
  %62 = ptrtoint ptr %lm_detach to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @fake_lm_detach, ptr %lm_detach, align 8
  %slot_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 29
  %63 = ptrtoint ptr %slot_get to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @fake_slot_get, ptr %slot_get, align 4
  %alloc_consistent = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 30
  %64 = ptrtoint ptr %alloc_consistent to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @fake_alloc_consistent, ptr %alloc_consistent, align 16
  %free_consistent = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 31
  %65 = ptrtoint ptr %free_consistent to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @fake_free_consistent, ptr %free_consistent, align 4
  %66 = load i32, ptr @geoid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp58 = icmp eq i32 %66, 1
  %cond = select i1 %cmp58, ptr @.str.16, ptr @.str.17
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #15
  %67 = load i32, ptr @geoid, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %67) #15
  %call65 = tail call fastcc i32 @fake_crcsr_init(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end73, label %do.end70

do.end70:                                         ; preds = %list_add_tail.exit242
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %err_lm

if.end73:                                         ; preds = %list_add_tail.exit242
  %call74 = tail call i32 @vme_register_bridge(ptr noundef nonnull %call1.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.end82, label %do.end79

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  %68 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_priv, align 8
  %crcsr_kernel.i = getelementptr inbounds %struct.fake_driver, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %crcsr_kernel.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %crcsr_kernel.i, align 8
  tail call void @kfree(ptr noundef %71) #10
  br label %err_lm

if.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call1.i.i.i, ptr @exit_pointer, align 4
  br label %cleanup

err_lm:                                           ; preds = %do.end79, %do.end70, %for.end41.err_lm_crit_edge
  %retval1.0 = phi i32 [ %call65, %do.end70 ], [ %call74, %do.end79 ], [ -12, %for.end41.err_lm_crit_edge ]
  %72 = ptrtoint ptr %lm_resources to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lm_resources, align 4
  %cmp.i.not267 = icmp eq ptr %73, %lm_resources
  br i1 %cmp.i.not267, label %err_lm.err_slave_crit_edge, label %err_lm.for.body89_crit_edge

err_lm.for.body89_crit_edge:                      ; preds = %err_lm
  br label %for.body89

err_lm.err_slave_crit_edge:                       ; preds = %err_lm
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_slave

for.body89:                                       ; preds = %list_del.exit.for.body89_crit_edge, %err_lm.for.body89_crit_edge
  %pos.0268 = phi ptr [ %n.0270, %list_del.exit.for.body89_crit_edge ], [ %73, %err_lm.for.body89_crit_edge ]
  %74 = ptrtoint ptr %pos.0268 to i32
  call void @__asan_load4_noabort(i32 %74)
  %n.0270 = load ptr, ptr %pos.0268, align 4
  %call.i.i243 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0268) #10
  br i1 %call.i.i243, label %if.end.i.i244, label %for.body89.list_del.exit_crit_edge

for.body89.list_del.exit_crit_edge:               ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i244:                                    ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0268, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %77 = ptrtoint ptr %pos.0268 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pos.0268, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i244, %for.body89.list_del.exit_crit_edge
  %81 = ptrtoint ptr %pos.0268 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0268, align 4
  %prev.i245 = getelementptr inbounds %struct.list_head, ptr %pos.0268, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i245 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i245, align 4
  tail call void @kfree(ptr noundef %pos.0268) #10
  %cmp.i.not = icmp eq ptr %n.0270, %lm_resources
  br i1 %cmp.i.not, label %list_del.exit.err_slave_crit_edge, label %list_del.exit.for.body89_crit_edge

list_del.exit.for.body89_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body89

list_del.exit.err_slave_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_slave

err_slave:                                        ; preds = %list_del.exit.err_slave_crit_edge, %err_lm.err_slave_crit_edge, %for.body24.err_slave_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err_lm.err_slave_crit_edge ], [ %retval1.0, %list_del.exit.err_slave_crit_edge ], [ -12, %for.body24.err_slave_crit_edge ]
  %83 = ptrtoint ptr %slave_resources to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %slave_resources, align 4
  %cmp.i246.not272 = icmp eq ptr %84, %slave_resources
  br i1 %cmp.i246.not272, label %err_slave.err_master_crit_edge, label %err_slave.for.body102_crit_edge

err_slave.for.body102_crit_edge:                  ; preds = %err_slave
  br label %for.body102

err_slave.err_master_crit_edge:                   ; preds = %err_slave
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_master

for.body102:                                      ; preds = %list_del.exit253.for.body102_crit_edge, %err_slave.for.body102_crit_edge
  %pos.1273 = phi ptr [ %n.1275, %list_del.exit253.for.body102_crit_edge ], [ %84, %err_slave.for.body102_crit_edge ]
  %85 = ptrtoint ptr %pos.1273 to i32
  call void @__asan_load4_noabort(i32 %85)
  %n.1275 = load ptr, ptr %pos.1273, align 4
  %call.i.i248 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.1273) #10
  br i1 %call.i.i248, label %if.end.i.i251, label %for.body102.list_del.exit253_crit_edge

for.body102.list_del.exit253_crit_edge:           ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit253

if.end.i.i251:                                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i249 = getelementptr inbounds %struct.list_head, ptr %pos.1273, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i249 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i249, align 4
  %88 = ptrtoint ptr %pos.1273 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pos.1273, align 4
  %prev1.i.i.i250 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i250 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i250, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit253

list_del.exit253:                                 ; preds = %if.end.i.i251, %for.body102.list_del.exit253_crit_edge
  %92 = ptrtoint ptr %pos.1273 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.1273, align 4
  %prev.i252 = getelementptr inbounds %struct.list_head, ptr %pos.1273, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i252 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i252, align 4
  tail call void @kfree(ptr noundef %pos.1273) #10
  %cmp.i246.not = icmp eq ptr %n.1275, %slave_resources
  br i1 %cmp.i246.not, label %list_del.exit253.err_master_crit_edge, label %list_del.exit253.for.body102_crit_edge

list_del.exit253.for.body102_crit_edge:           ; preds = %list_del.exit253
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body102

list_del.exit253.err_master_crit_edge:            ; preds = %list_del.exit253
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_master

err_master:                                       ; preds = %list_del.exit253.err_master_crit_edge, %err_slave.err_master_crit_edge, %for.body.err_master_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %err_slave.err_master_crit_edge ], [ %retval1.1, %list_del.exit253.err_master_crit_edge ], [ -12, %for.body.err_master_crit_edge ]
  %94 = ptrtoint ptr %master_resources to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %master_resources, align 4
  %cmp.i254.not277 = icmp eq ptr %95, %master_resources
  br i1 %cmp.i254.not277, label %err_master.for.end123_crit_edge, label %err_master.for.body117_crit_edge

err_master.for.body117_crit_edge:                 ; preds = %err_master
  br label %for.body117

err_master.for.end123_crit_edge:                  ; preds = %err_master
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

for.body117:                                      ; preds = %list_del.exit261.for.body117_crit_edge, %err_master.for.body117_crit_edge
  %pos.2278 = phi ptr [ %n.2280, %list_del.exit261.for.body117_crit_edge ], [ %95, %err_master.for.body117_crit_edge ]
  %96 = ptrtoint ptr %pos.2278 to i32
  call void @__asan_load4_noabort(i32 %96)
  %n.2280 = load ptr, ptr %pos.2278, align 4
  %call.i.i256 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.2278) #10
  br i1 %call.i.i256, label %if.end.i.i259, label %for.body117.list_del.exit261_crit_edge

for.body117.list_del.exit261_crit_edge:           ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit261

if.end.i.i259:                                    ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i257 = getelementptr inbounds %struct.list_head, ptr %pos.2278, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i257 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i257, align 4
  %99 = ptrtoint ptr %pos.2278 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pos.2278, align 4
  %prev1.i.i.i258 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i258 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i258, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del.exit261

list_del.exit261:                                 ; preds = %if.end.i.i259, %for.body117.list_del.exit261_crit_edge
  %103 = ptrtoint ptr %pos.2278 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.2278, align 4
  %prev.i260 = getelementptr inbounds %struct.list_head, ptr %pos.2278, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i260, align 4
  tail call void @kfree(ptr noundef %pos.2278) #10
  %cmp.i254.not = icmp eq ptr %n.2280, %master_resources
  br i1 %cmp.i254.not, label %list_del.exit261.for.end123_crit_edge, label %list_del.exit261.for.body117_crit_edge

list_del.exit261.for.body117_crit_edge:           ; preds = %list_del.exit261
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body117

list_del.exit261.for.end123_crit_edge:            ; preds = %list_del.exit261
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

for.end123:                                       ; preds = %list_del.exit261.for.end123_crit_edge, %err_master.for.end123_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %err_driver

err_driver:                                       ; preds = %for.end123, %if.end.err_driver_crit_edge
  %retval1.3 = phi i32 [ %retval1.2, %for.end123 ], [ -12, %if.end.err_driver_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_driver, %if.end82, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ %retval1.3, %err_driver ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__root_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fake_VIRQ_tasklet(i32 noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_priv, align 4
  %int_level = getelementptr inbounds %struct.fake_driver, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %int_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %int_level, align 8
  %int_statid = getelementptr inbounds %struct.fake_driver, ptr %2, i32 0, i32 11
  %5 = ptrtoint ptr %int_statid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %int_statid, align 4
  tail call void @vme_irq_handler(ptr noundef %0, i32 noundef %4, i32 noundef %6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_slave_get(ptr noundef %image, ptr nocapture noundef writeonly %enabled, ptr nocapture noundef writeonly %vme_base, ptr nocapture noundef writeonly %size, ptr nocapture noundef writeonly %buf_base, ptr nocapture noundef writeonly %aspace, ptr nocapture noundef writeonly %cycle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %mtx = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %arrayidx = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %enabled, align 4
  %vme_base4 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %9 = ptrtoint ptr %vme_base4 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vme_base4, align 8
  %11 = ptrtoint ptr %vme_base to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %vme_base, align 8
  %size7 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 2
  %12 = ptrtoint ptr %size7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size7, align 8
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %size, align 8
  %buf_base10 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 3
  %15 = ptrtoint ptr %buf_base10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_base10, align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %buf_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf_base, align 4
  %aspace13 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 4
  %19 = ptrtoint ptr %aspace13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aspace13, align 4
  %21 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %aspace, align 4
  %cycle16 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 5
  %22 = ptrtoint ptr %cycle16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cycle16, align 8
  %24 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cycle, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_slave_set(ptr noundef %image, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %buf_base, i32 noundef %aspace, i32 noundef %cycle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %switch.tableidx = add i32 %aspace, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 8
  br i1 %6, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.fake_slave_set, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sub5 = add nsw i32 %switch.load, -1
  %conv6 = zext i32 %sub5 to i64
  %and = and i64 %conv6, %vme_base
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end9

do.end9:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #15
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %add = add i64 %size, %vme_base
  %conv = zext i32 %switch.load to i64
  %sub = sub i64 %add, %conv
  %and14 = and i64 %sub, %conv6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mtx = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %arrayidx = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %enabled, ptr %arrayidx, align 8
  %vme_base26 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %10 = ptrtoint ptr %vme_base26 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %vme_base, ptr %vme_base26, align 8
  %size29 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 2
  %11 = ptrtoint ptr %size29 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %size, ptr %size29, align 8
  %12 = inttoptr i32 %buf_base to ptr
  %buf_base33 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 3
  %13 = ptrtoint ptr %buf_base33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %buf_base33, align 8
  %aspace36 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 4
  %14 = ptrtoint ptr %aspace36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %aspace, ptr %aspace36, align 4
  %cycle39 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 1, i32 %5, i32 5
  %15 = ptrtoint ptr %cycle39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cycle, ptr %cycle39, align 8
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -22, %do.end19 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_master_get(ptr noundef %image, ptr nocapture noundef writeonly %enabled, ptr nocapture noundef writeonly %vme_base, ptr nocapture noundef writeonly %size, ptr nocapture noundef writeonly %aspace, ptr nocapture noundef writeonly %cycle, ptr nocapture noundef writeonly %dwidth) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %parent.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %driver_priv.i = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv.i, align 4
  %number.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %arrayidx.i = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %enabled, align 4
  %vme_base4.i = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %9 = ptrtoint ptr %vme_base4.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vme_base4.i, align 8
  %11 = ptrtoint ptr %vme_base to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %vme_base, align 8
  %size7.i = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 2
  %12 = ptrtoint ptr %size7.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size7.i, align 8
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %size, align 8
  %aspace10.i = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 3
  %15 = ptrtoint ptr %aspace10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aspace10.i, align 8
  %17 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %aspace, align 4
  %cycle13.i = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 4
  %18 = ptrtoint ptr %cycle13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cycle13.i, align 4
  %20 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cycle, align 4
  %dwidth16.i = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 5
  %21 = ptrtoint ptr %dwidth16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dwidth16.i, align 8
  %23 = ptrtoint ptr %dwidth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dwidth, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_master_set(ptr noundef %image, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %aspace, i32 noundef %cycle, i32 noundef %dwidth) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %and = and i64 %vme_base, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i64 %size, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp = icmp ne i64 %size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %cmp11.not = icmp eq i32 %enabled, 0
  %or.cond = or i1 %cmp11.not, %cmp
  br i1 %or.cond, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %4 = zext i32 %dwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dwidth, label %do.end21 [
    i32 1, label %if.end18.sw.epilog_crit_edge
    i32 2, label %if.end18.sw.epilog_crit_edge71
    i32 4, label %if.end18.sw.epilog_crit_edge72
  ]

if.end18.sw.epilog_crit_edge72:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end18.sw.epilog_crit_edge71:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end18.sw.epilog_crit_edge, %if.end18.sw.epilog_crit_edge71, %if.end18.sw.epilog_crit_edge72
  %5 = zext i32 %aspace to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %aspace, label %do.end28 [
    i32 1, label %sw.epilog.sw.epilog31_crit_edge
    i32 2, label %sw.epilog.sw.epilog31_crit_edge73
    i32 4, label %sw.epilog.sw.epilog31_crit_edge74
    i32 8, label %sw.epilog.sw.epilog31_crit_edge75
    i32 16, label %sw.epilog.sw.epilog31_crit_edge76
    i32 32, label %sw.epilog.sw.epilog31_crit_edge77
    i32 64, label %sw.epilog.sw.epilog31_crit_edge78
    i32 128, label %sw.epilog.sw.epilog31_crit_edge79
    i32 256, label %sw.epilog.sw.epilog31_crit_edge80
  ]

sw.epilog.sw.epilog31_crit_edge80:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge79:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge78:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge77:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge76:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge75:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge74:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge73:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

sw.epilog.sw.epilog31_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog31

do.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %cleanup

sw.epilog31:                                      ; preds = %sw.epilog.sw.epilog31_crit_edge, %sw.epilog.sw.epilog31_crit_edge73, %sw.epilog.sw.epilog31_crit_edge74, %sw.epilog.sw.epilog31_crit_edge75, %sw.epilog.sw.epilog31_crit_edge76, %sw.epilog.sw.epilog31_crit_edge77, %sw.epilog.sw.epilog31_crit_edge78, %sw.epilog.sw.epilog31_crit_edge79, %sw.epilog.sw.epilog31_crit_edge80
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %enabled, ptr %arrayidx, align 8
  %vme_base35 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %7, i32 1
  %9 = ptrtoint ptr %vme_base35 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %vme_base, ptr %vme_base35, align 8
  %size38 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %7, i32 2
  %10 = ptrtoint ptr %size38 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %size, ptr %size38, align 8
  %aspace41 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %7, i32 3
  %11 = ptrtoint ptr %aspace41 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %aspace, ptr %aspace41, align 8
  %cycle44 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %7, i32 4
  %12 = ptrtoint ptr %cycle44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cycle, ptr %cycle44, align 4
  %dwidth47 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %7, i32 5
  %13 = ptrtoint ptr %dwidth47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dwidth, ptr %dwidth47, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog31, %do.end28, %do.end21, %do.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog31 ], [ -22, %do.end21 ], [ -22, %do.end28 ], [ -22, %do.end15 ], [ -22, %do.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_master_read(ptr noundef %image, ptr nocapture noundef writeonly %buf, i32 noundef returned %count, i64 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %vme_base = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %6 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vme_base, align 8
  %add = add i64 %7, %offset
  %aspace4 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 3
  %8 = ptrtoint ptr %aspace4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aspace4, align 8
  %cycle7 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 4
  %10 = ptrtoint ptr %cycle7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cycle7, align 4
  %dwidth10 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 5
  %12 = ptrtoint ptr %dwidth10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dwidth10, align 8
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %and = and i64 %add, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @fake_vmeread8(ptr noundef %3, i64 noundef %add, i32 noundef %9, i32 noundef %11)
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp eq i32 %count, 1
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %done.0 = phi i32 [ 1, %if.then.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  %15 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %13, label %if.end13.if.end35_crit_edge [
    i32 4, label %if.end13.if.then16_crit_edge
    i32 2, label %if.end13.if.then16_crit_edge226
  ]

if.end13.if.then16_crit_edge226:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13.if.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.end13.if.then16_crit_edge226
  %conv = zext i32 %done.0 to i64
  %add17 = add i64 %add, %conv
  %and18 = and i64 %add17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.then16.if.end35_crit_edge, label %if.then20

if.then16.if.end35_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then20:                                        ; preds = %if.then16
  %sub = sub i32 %count, %done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp21 = icmp ult i32 %sub, 2
  br i1 %cmp21, label %if.then20.out.sink.split_crit_edge, label %if.else

if.then20.out.sink.split_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call fastcc zeroext i16 @fake_vmeread16(ptr noundef %3, i64 noundef %add17, i32 noundef %9, i32 noundef %11)
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %done.0
  %16 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call30, ptr %add.ptr31, align 2
  %add32 = or i32 %done.0, 2
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then16.if.end35_crit_edge, %if.end13.if.end35_crit_edge
  %done.1 = phi i32 [ %add32, %if.else ], [ %done.0, %if.then16.if.end35_crit_edge ], [ %done.0, %if.end13.if.end35_crit_edge ]
  %17 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %13, label %if.end35.if.end81_crit_edge [
    i32 4, label %if.then38
    i32 2, label %if.then51
    i32 1, label %if.then67
  ]

if.end35.if.end81_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then38:                                        ; preds = %if.end35
  %sub39 = sub i32 %count, %done.1
  %and40 = and i32 %sub39, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %and40)
  %cmp41211 = icmp ult i32 %done.1, %and40
  br i1 %cmp41211, label %if.then38.while.body_crit_edge, label %if.then38.if.then87_crit_edge

if.then38.if.then87_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then38.while.body_crit_edge:                   ; preds = %if.then38
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then38.while.body_crit_edge
  %done.2212 = phi i32 [ %add47, %while.body.while.body_crit_edge ], [ %done.1, %if.then38.while.body_crit_edge ]
  %conv43 = zext i32 %done.2212 to i64
  %add44 = add i64 %add, %conv43
  %call45 = tail call fastcc i32 @fake_vmeread32(ptr noundef %3, i64 noundef %add44, i32 noundef %9, i32 noundef %11)
  %add.ptr46 = getelementptr i8, ptr %buf, i32 %done.2212
  %18 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call45, ptr %add.ptr46, align 4
  %add47 = add nuw i32 %done.2212, 4
  %cmp41 = icmp ult i32 %add47, %and40
  br i1 %cmp41, label %while.body.while.body_crit_edge, label %while.body.if.end81_crit_edge

while.body.if.end81_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then51:                                        ; preds = %if.end35
  %sub52 = sub i32 %count, %done.1
  %and53 = and i32 %sub52, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %and53)
  %cmp55208 = icmp ult i32 %done.1, %and53
  br i1 %cmp55208, label %if.then51.while.body57_crit_edge, label %if.then51.if.then87_crit_edge

if.then51.if.then87_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then51.while.body57_crit_edge:                 ; preds = %if.then51
  br label %while.body57

while.body57:                                     ; preds = %while.body57.while.body57_crit_edge, %if.then51.while.body57_crit_edge
  %done.3209 = phi i32 [ %add62, %while.body57.while.body57_crit_edge ], [ %done.1, %if.then51.while.body57_crit_edge ]
  %conv58 = zext i32 %done.3209 to i64
  %add59 = add i64 %add, %conv58
  %call60 = tail call fastcc zeroext i16 @fake_vmeread16(ptr noundef %3, i64 noundef %add59, i32 noundef %9, i32 noundef %11)
  %add.ptr61 = getelementptr i8, ptr %buf, i32 %done.3209
  %19 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call60, ptr %add.ptr61, align 2
  %add62 = add nuw i32 %done.3209, 2
  %cmp55 = icmp ult i32 %add62, %and53
  br i1 %cmp55, label %while.body57.while.body57_crit_edge, label %while.body57.if.end81_crit_edge

while.body57.if.end81_crit_edge:                  ; preds = %while.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

while.body57.while.body57_crit_edge:              ; preds = %while.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body57

if.then67:                                        ; preds = %if.end35
  %sub68 = sub i32 %count, %done.1
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %sub68)
  %cmp70206 = icmp ult i32 %done.1, %sub68
  br i1 %cmp70206, label %if.then67.while.body72_crit_edge, label %if.then67.if.end98_crit_edge

if.then67.if.end98_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then67.while.body72_crit_edge:                 ; preds = %if.then67
  br label %while.body72

while.body72:                                     ; preds = %while.body72.while.body72_crit_edge, %if.then67.while.body72_crit_edge
  %done.4207 = phi i32 [ %add77, %while.body72.while.body72_crit_edge ], [ %done.1, %if.then67.while.body72_crit_edge ]
  %conv73 = zext i32 %done.4207 to i64
  %add74 = add i64 %add, %conv73
  %call75 = tail call fastcc zeroext i8 @fake_vmeread8(ptr noundef %3, i64 noundef %add74, i32 noundef %9, i32 noundef %11)
  %add.ptr76 = getelementptr i8, ptr %buf, i32 %done.4207
  %20 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call75, ptr %add.ptr76, align 1
  %add77 = add i32 %done.4207, 1
  %exitcond.not = icmp eq i32 %add77, %sub68
  br i1 %exitcond.not, label %while.body72.if.end81_crit_edge, label %while.body72.while.body72_crit_edge

while.body72.while.body72_crit_edge:              ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body72

while.body72.if.end81_crit_edge:                  ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.end81:                                         ; preds = %while.body72.if.end81_crit_edge, %while.body57.if.end81_crit_edge, %while.body.if.end81_crit_edge, %if.end35.if.end81_crit_edge
  %done.5 = phi i32 [ %done.1, %if.end35.if.end81_crit_edge ], [ %add47, %while.body.if.end81_crit_edge ], [ %add62, %while.body57.if.end81_crit_edge ], [ %sub68, %while.body72.if.end81_crit_edge ]
  %21 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %13, label %if.end81.if.end98_crit_edge [
    i32 4, label %if.end81.if.then87_crit_edge
    i32 2, label %if.end81.if.then87_crit_edge227
  ]

if.end81.if.then87_crit_edge227:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.end81.if.then87_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.end81.if.end98_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then87:                                        ; preds = %if.end81.if.then87_crit_edge, %if.end81.if.then87_crit_edge227, %if.then51.if.then87_crit_edge, %if.then38.if.then87_crit_edge
  %done.5217 = phi i32 [ %done.5, %if.end81.if.then87_crit_edge ], [ %done.5, %if.end81.if.then87_crit_edge227 ], [ %done.1, %if.then51.if.then87_crit_edge ], [ %done.1, %if.then38.if.then87_crit_edge ]
  %sub88 = sub i32 %count, %done.5217
  %and89 = and i32 %sub88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.then87.if.end98_crit_edge, label %if.then91

if.then87.if.end98_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  %conv92 = zext i32 %done.5217 to i64
  %add93 = add i64 %add, %conv92
  %call94 = tail call fastcc zeroext i16 @fake_vmeread16(ptr noundef %3, i64 noundef %add93, i32 noundef %9, i32 noundef %11)
  %add.ptr95 = getelementptr i8, ptr %buf, i32 %done.5217
  %22 = ptrtoint ptr %add.ptr95 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %call94, ptr %add.ptr95, align 2
  %add96 = add i32 %done.5217, 2
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.then87.if.end98_crit_edge, %if.end81.if.end98_crit_edge, %if.then67.if.end98_crit_edge
  %done.6 = phi i32 [ %add96, %if.then91 ], [ %done.5217, %if.then87.if.end98_crit_edge ], [ %done.5, %if.end81.if.end98_crit_edge ], [ %done.1, %if.then67.if.end98_crit_edge ]
  %sub99 = sub i32 %count, %done.6
  %and100 = and i32 %sub99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end98.out_crit_edge, label %if.then102

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %conv103 = zext i32 %done.6 to i64
  %add104 = add i64 %add, %conv103
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then102, %if.then20.out.sink.split_crit_edge
  %add104.sink = phi i64 [ %add104, %if.then102 ], [ %add17, %if.then20.out.sink.split_crit_edge ]
  %done.6.sink = phi i32 [ %done.6, %if.then102 ], [ %done.0, %if.then20.out.sink.split_crit_edge ]
  %call105 = tail call fastcc zeroext i8 @fake_vmeread8(ptr noundef %3, i64 noundef %add104.sink, i32 noundef %9, i32 noundef %11)
  %add.ptr106 = getelementptr i8, ptr %buf, i32 %done.6.sink
  %23 = ptrtoint ptr %add.ptr106 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call105, ptr %add.ptr106, align 1
  br label %out

out:                                              ; preds = %out.sink.split, %if.end98.out_crit_edge, %if.then.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_master_write(ptr noundef %image, ptr nocapture noundef readonly %buf, i32 noundef returned %count, i64 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %vme_base = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %6 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vme_base, align 8
  %add = add i64 %7, %offset
  %aspace4 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 3
  %8 = ptrtoint ptr %aspace4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aspace4, align 8
  %cycle7 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 4
  %10 = ptrtoint ptr %cycle7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cycle7, align 4
  %dwidth10 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 5
  %12 = ptrtoint ptr %dwidth10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dwidth10, align 8
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %and = and i64 %add, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  tail call fastcc void @fake_vmewrite8(ptr noundef %3, ptr noundef %buf, i64 noundef %add, i32 noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp eq i32 %count, 1
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %done.0 = phi i32 [ 1, %if.then.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %13, label %if.end13.if.end33_crit_edge [
    i32 4, label %if.end13.if.then16_crit_edge
    i32 2, label %if.end13.if.then16_crit_edge219
  ]

if.end13.if.then16_crit_edge219:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.end13.if.then16_crit_edge219
  %conv = zext i32 %done.0 to i64
  %add17 = add i64 %add, %conv
  %and18 = and i64 %add17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.then16.if.end33_crit_edge, label %if.then20

if.then16.if.end33_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then20:                                        ; preds = %if.then16
  %sub = sub i32 %count, %done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp21 = icmp ult i32 %sub, 2
  %add.ptr = getelementptr i8, ptr %buf, i32 %done.0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fake_vmewrite8(ptr noundef %3, ptr noundef %add.ptr, i64 noundef %add17, i32 noundef %9, i32 noundef %11)
  br label %out

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fake_vmewrite16(ptr noundef %3, ptr noundef %add.ptr, i64 noundef %add17, i32 noundef %9, i32 noundef %11)
  %add30 = or i32 %done.0, 2
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then16.if.end33_crit_edge, %if.end13.if.end33_crit_edge
  %done.1 = phi i32 [ %add30, %if.else ], [ %done.0, %if.then16.if.end33_crit_edge ], [ %done.0, %if.end13.if.end33_crit_edge ]
  %15 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %13, label %if.end33.if.end76_crit_edge [
    i32 4, label %if.then36
    i32 2, label %if.then48
    i32 1, label %if.then63
  ]

if.end33.if.end76_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then36:                                        ; preds = %if.end33
  %sub37 = sub i32 %count, %done.1
  %and38 = and i32 %sub37, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %and38)
  %cmp39204 = icmp ult i32 %done.1, %and38
  br i1 %cmp39204, label %if.then36.while.body_crit_edge, label %if.then36.if.then82_crit_edge

if.then36.if.then82_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.then36.while.body_crit_edge:                   ; preds = %if.then36
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then36.while.body_crit_edge
  %done.2205 = phi i32 [ %add44, %while.body.while.body_crit_edge ], [ %done.1, %if.then36.while.body_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %done.2205
  %conv42 = zext i32 %done.2205 to i64
  %add43 = add i64 %add, %conv42
  tail call fastcc void @fake_vmewrite32(ptr noundef %3, ptr noundef %add.ptr41, i64 noundef %add43, i32 noundef %9, i32 noundef %11)
  %add44 = add nuw i32 %done.2205, 4
  %cmp39 = icmp ult i32 %add44, %and38
  br i1 %cmp39, label %while.body.while.body_crit_edge, label %while.body.if.end76_crit_edge

while.body.if.end76_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then48:                                        ; preds = %if.end33
  %sub49 = sub i32 %count, %done.1
  %and50 = and i32 %sub49, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %and50)
  %cmp52201 = icmp ult i32 %done.1, %and50
  br i1 %cmp52201, label %if.then48.while.body54_crit_edge, label %if.then48.if.then82_crit_edge

if.then48.if.then82_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.then48.while.body54_crit_edge:                 ; preds = %if.then48
  br label %while.body54

while.body54:                                     ; preds = %while.body54.while.body54_crit_edge, %if.then48.while.body54_crit_edge
  %done.3202 = phi i32 [ %add58, %while.body54.while.body54_crit_edge ], [ %done.1, %if.then48.while.body54_crit_edge ]
  %add.ptr55 = getelementptr i8, ptr %buf, i32 %done.3202
  %conv56 = zext i32 %done.3202 to i64
  %add57 = add i64 %add, %conv56
  tail call fastcc void @fake_vmewrite16(ptr noundef %3, ptr noundef %add.ptr55, i64 noundef %add57, i32 noundef %9, i32 noundef %11)
  %add58 = add nuw i32 %done.3202, 2
  %cmp52 = icmp ult i32 %add58, %and50
  br i1 %cmp52, label %while.body54.while.body54_crit_edge, label %while.body54.if.end76_crit_edge

while.body54.if.end76_crit_edge:                  ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

while.body54.while.body54_crit_edge:              ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body54

if.then63:                                        ; preds = %if.end33
  %sub64 = sub i32 %count, %done.1
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %sub64)
  %cmp66199 = icmp ult i32 %done.1, %sub64
  br i1 %cmp66199, label %if.then63.while.body68_crit_edge, label %if.then63.if.end92_crit_edge

if.then63.if.end92_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then63.while.body68_crit_edge:                 ; preds = %if.then63
  br label %while.body68

while.body68:                                     ; preds = %while.body68.while.body68_crit_edge, %if.then63.while.body68_crit_edge
  %done.4200 = phi i32 [ %add72, %while.body68.while.body68_crit_edge ], [ %done.1, %if.then63.while.body68_crit_edge ]
  %add.ptr69 = getelementptr i8, ptr %buf, i32 %done.4200
  %conv70 = zext i32 %done.4200 to i64
  %add71 = add i64 %add, %conv70
  tail call fastcc void @fake_vmewrite8(ptr noundef %3, ptr noundef %add.ptr69, i64 noundef %add71, i32 noundef %9, i32 noundef %11)
  %add72 = add i32 %done.4200, 1
  %exitcond.not = icmp eq i32 %add72, %sub64
  br i1 %exitcond.not, label %while.body68.if.end76_crit_edge, label %while.body68.while.body68_crit_edge

while.body68.while.body68_crit_edge:              ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body68

while.body68.if.end76_crit_edge:                  ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.end76:                                         ; preds = %while.body68.if.end76_crit_edge, %while.body54.if.end76_crit_edge, %while.body.if.end76_crit_edge, %if.end33.if.end76_crit_edge
  %done.5 = phi i32 [ %done.1, %if.end33.if.end76_crit_edge ], [ %add44, %while.body.if.end76_crit_edge ], [ %add58, %while.body54.if.end76_crit_edge ], [ %sub64, %while.body68.if.end76_crit_edge ]
  %16 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %13, label %if.end76.if.end92_crit_edge [
    i32 4, label %if.end76.if.then82_crit_edge
    i32 2, label %if.end76.if.then82_crit_edge220
  ]

if.end76.if.then82_crit_edge220:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.end76.if.then82_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.end76.if.end92_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then82:                                        ; preds = %if.end76.if.then82_crit_edge, %if.end76.if.then82_crit_edge220, %if.then48.if.then82_crit_edge, %if.then36.if.then82_crit_edge
  %done.5210 = phi i32 [ %done.5, %if.end76.if.then82_crit_edge ], [ %done.5, %if.end76.if.then82_crit_edge220 ], [ %done.1, %if.then48.if.then82_crit_edge ], [ %done.1, %if.then36.if.then82_crit_edge ]
  %sub83 = sub i32 %count, %done.5210
  %and84 = and i32 %sub83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then82.if.end92_crit_edge, label %if.then86

if.then82.if.end92_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then86:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr87 = getelementptr i8, ptr %buf, i32 %done.5210
  %conv88 = zext i32 %done.5210 to i64
  %add89 = add i64 %add, %conv88
  tail call fastcc void @fake_vmewrite16(ptr noundef %3, ptr noundef %add.ptr87, i64 noundef %add89, i32 noundef %9, i32 noundef %11)
  %add90 = add i32 %done.5210, 2
  br label %if.end92

if.end92:                                         ; preds = %if.then86, %if.then82.if.end92_crit_edge, %if.end76.if.end92_crit_edge, %if.then63.if.end92_crit_edge
  %done.6 = phi i32 [ %add90, %if.then86 ], [ %done.5210, %if.then82.if.end92_crit_edge ], [ %done.5, %if.end76.if.end92_crit_edge ], [ %done.1, %if.then63.if.end92_crit_edge ]
  %sub93 = sub i32 %count, %done.6
  %and94 = and i32 %sub93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.out_crit_edge, label %if.then96

if.end92.out_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr97 = getelementptr i8, ptr %buf, i32 %done.6
  %conv98 = zext i32 %done.6 to i64
  %add99 = add i64 %add, %conv98
  tail call fastcc void @fake_vmewrite8(ptr noundef %3, ptr noundef %add.ptr97, i64 noundef %add99, i32 noundef %9, i32 noundef %11)
  br label %out

out:                                              ; preds = %if.then96, %if.end92.out_crit_edge, %if.then23, %if.then.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_master_rmw(ptr noundef %image, i32 noundef %mask, i32 noundef %compare, i32 noundef %swap, i64 noundef %offset) #3 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %vme_base = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %6 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vme_base, align 8
  %aspace3 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 3
  %8 = ptrtoint ptr %aspace3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aspace3, align 8
  %cycle6 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 2, i32 %5, i32 4
  %10 = ptrtoint ptr %cycle6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cycle6, align 4
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %conv7 = and i64 %7, 4294967295
  %add = add i64 %conv7, %offset
  %call = tail call fastcc i32 @fake_vmeread32(ptr noundef %3, i64 noundef %add, i32 noundef %9, i32 noundef %11)
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool8 = icmp ne i32 %mask, 0
  %phi.cast = zext i1 %tobool8 to i32
  %13 = select i1 %tobool.not, i32 0, i32 %phi.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compare)
  %tobool9.not = icmp eq i32 %compare, 0
  %14 = select i1 %tobool9.not, i32 0, i32 %phi.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp = icmp eq i32 %13, %14
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %swap, %mask
  %or15 = or i32 %or, %call
  %neg = xor i32 %mask, -1
  %or16 = or i32 %neg, %swap
  %and = and i32 %or15, %or16
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %tmp, align 4
  call fastcc void @fake_vmewrite32(ptr noundef %3, ptr noundef nonnull %tmp, i64 noundef %add, i32 noundef %9, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fake_irq_set(ptr nocapture noundef %fake_bridge, i32 noundef %level, i32 noundef %state, i32 noundef %sync) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_irq_generate(ptr nocapture noundef readonly %fake_bridge, i32 noundef %level, i32 noundef %statid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %fake_bridge, i32 0, i32 9
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %vme_int = getelementptr inbounds %struct.fake_driver, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %vme_int, i32 noundef 0) #10
  %int_level = getelementptr inbounds %struct.fake_driver, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %int_level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %level, ptr %int_level, align 8
  %int_statid = getelementptr inbounds %struct.fake_driver, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %int_statid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %statid, ptr %int_statid, align 4
  %state.i = getelementptr inbounds %struct.fake_driver, ptr %1, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %int_tasklet = getelementptr inbounds %struct.fake_driver, ptr %1, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %int_tasklet) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vme_int) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_lm_set(ptr noundef %lm, i64 noundef %lm_base, i32 noundef %aspace, i32 noundef %cycle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %monitors = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 5
  %4 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23 = icmp sgt i32 %5, 0
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 7, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #15
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = zext i32 %aspace to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %aspace, label %sw.default [
    i32 1, label %for.end.sw.epilog_crit_edge
    i32 2, label %for.end.sw.epilog_crit_edge25
    i32 4, label %for.end.sw.epilog_crit_edge26
    i32 8, label %for.end.sw.epilog_crit_edge27
  ]

for.end.sw.epilog_crit_edge27:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.end.sw.epilog_crit_edge26:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.end.sw.epilog_crit_edge25:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %cleanup

sw.epilog:                                        ; preds = %for.end.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge25, %for.end.sw.epilog_crit_edge26, %for.end.sw.epilog_crit_edge27
  %lm_base8 = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %lm_base8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %lm_base, ptr %lm_base8, align 8
  %lm_aspace = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %lm_aspace to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %aspace, ptr %lm_aspace, align 8
  %lm_cycle = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %lm_cycle to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cycle, ptr %lm_cycle, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -22, %sw.default ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_lm_get(ptr noundef %lm, ptr nocapture noundef writeonly %lm_base, ptr nocapture noundef writeonly %aspace, ptr nocapture noundef writeonly %cycle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %lm_base1 = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lm_base1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lm_base1, align 8
  %6 = ptrtoint ptr %lm_base to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %lm_base, align 8
  %lm_aspace = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %lm_aspace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lm_aspace, align 8
  %9 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %aspace, align 4
  %lm_cycle = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %lm_cycle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lm_cycle, align 4
  %12 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cycle, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  %lm_enabled = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %lm_enabled to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lm_enabled, align 8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_lm_attach(ptr noundef %lm, i32 noundef %monitor, ptr noundef %callback, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %lm_cycle = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %lm_cycle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lm_cycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 7, i32 %monitor
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end9, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %callback, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 8, i32 %monitor
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %arrayidx12, align 4
  %lm_enabled = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %lm_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %lm_enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -16, %if.then2 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fake_lm_detach(ptr noundef %lm, i32 noundef %monitor) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #10
  %arrayidx = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 7, i32 %monitor
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 8, i32 %monitor
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx1, align 4
  %monitors = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 5
  %6 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17 = icmp sgt i32 %7, 0
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.if.then5_crit_edge

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tmp.018 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.fake_driver, ptr %3, i32 0, i32 7, i32 %i.019
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not, i32 %tmp.018, i32 1
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 0
  br i1 %phi.cmp, label %for.end.if.then5_crit_edge, label %for.end.if.end6_crit_edge

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.end.if.then5_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %for.end.if.then5_crit_edge, %entry.if.then5_crit_edge
  %lm_enabled = getelementptr inbounds %struct.fake_driver, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %lm_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lm_enabled, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fake_slot_get(ptr nocapture noundef readnone %fake_bridge) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @geoid, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fake_alloc_consistent(ptr nocapture noundef readnone %parent, i32 noundef %size, ptr nocapture noundef writeonly %dma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call9.i to i32
  %1 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %dma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.1.i7 = phi ptr [ %call9.i, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %retval.1.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fake_free_consistent(ptr nocapture noundef readnone %parent, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vaddr) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fake_crcsr_init(ptr nocapture noundef readonly %fake_bridge) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %fake_bridge, i32 0, i32 9
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 520192, i32 noundef 3520, i32 noundef 7) #13
  %crcsr_kernel = getelementptr inbounds %struct.fake_driver, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %crcsr_kernel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %crcsr_kernel, align 8
  %3 = ptrtoint ptr %call1.i.i.i to i32
  %crcsr_bus = getelementptr inbounds %struct.fake_driver, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %crcsr_bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %crcsr_bus, align 4
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = load i32, ptr @geoid, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_register_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_irq_handler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @fake_vmeread8(ptr nocapture noundef readonly %bridge, i64 noundef %addr, i32 noundef %aspace, i32 noundef %cycle) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aspace9 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %aspace9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aspace9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %aspace)
  %cmp10.not = icmp eq i32 %1, %aspace
  br i1 %cmp10.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %vme_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vme_base, align 8
  %size = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %add = add i64 %5, %3
  %cycle13 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %cycle13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cycle13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cycle)
  %cmp14.not = icmp eq i32 %7, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %addr)
  %cmp17.not = icmp ule i64 %3, %addr
  %or.cond = select i1 %cmp14.not, i1 %cmp17.not, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp18 = icmp ugt i64 %add, %addr
  %or.cond46 = select i1 %or.cond, i1 %cmp18, i1 false
  br i1 %or.cond46, label %if.end.if.then19_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %if.end.7.if.then19_crit_edge, %if.end.6.if.then19_crit_edge, %if.end.5.if.then19_crit_edge, %if.end.4.if.then19_crit_edge, %if.end.3.if.then19_crit_edge, %if.end.2.if.then19_crit_edge, %if.end.1.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %i.048.lcssa = phi i32 [ 0, %if.end.if.then19_crit_edge ], [ 1, %if.end.1.if.then19_crit_edge ], [ 2, %if.end.2.if.then19_crit_edge ], [ 3, %if.end.3.if.then19_crit_edge ], [ 4, %if.end.4.if.then19_crit_edge ], [ 5, %if.end.5.if.then19_crit_edge ], [ 6, %if.end.6.if.then19_crit_edge ], [ 7, %if.end.7.if.then19_crit_edge ]
  %.lcssa = phi i64 [ %3, %if.end.if.then19_crit_edge ], [ %15, %if.end.1.if.then19_crit_edge ], [ %23, %if.end.2.if.then19_crit_edge ], [ %31, %if.end.3.if.then19_crit_edge ], [ %39, %if.end.4.if.then19_crit_edge ], [ %47, %if.end.5.if.then19_crit_edge ], [ %55, %if.end.6.if.then19_crit_edge ], [ %63, %if.end.7.if.then19_crit_edge ]
  %sub = sub i64 %addr, %.lcssa
  %buf_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 %i.048.lcssa, i32 3
  %8 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_base, align 8
  %idx.ext = trunc i64 %sub to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %aspace9.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %aspace9.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aspace9.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %aspace)
  %cmp10.not.1 = icmp eq i32 %13, %aspace
  br i1 %cmp10.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %vme_base.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 1
  %14 = ptrtoint ptr %vme_base.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vme_base.1, align 8
  %size.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 2
  %16 = ptrtoint ptr %size.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size.1, align 8
  %add.1 = add i64 %17, %15
  %cycle13.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 5
  %18 = ptrtoint ptr %cycle13.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cycle13.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cycle)
  %cmp14.not.1 = icmp eq i32 %19, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %addr)
  %cmp17.not.1 = icmp ule i64 %15, %addr
  %or.cond.1 = select i1 %cmp14.not.1, i1 %cmp17.not.1, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %addr)
  %cmp18.1 = icmp ugt i64 %add.1, %addr
  %or.cond46.1 = select i1 %or.cond.1, i1 %cmp18.1, i1 false
  br i1 %or.cond46.1, label %if.end.1.if.then19_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1.if.then19_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %aspace9.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 4
  %20 = ptrtoint ptr %aspace9.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aspace9.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %aspace)
  %cmp10.not.2 = icmp eq i32 %21, %aspace
  br i1 %cmp10.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %vme_base.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 1
  %22 = ptrtoint ptr %vme_base.2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vme_base.2, align 8
  %size.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 2
  %24 = ptrtoint ptr %size.2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size.2, align 8
  %add.2 = add i64 %25, %23
  %cycle13.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 5
  %26 = ptrtoint ptr %cycle13.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cycle13.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cycle)
  %cmp14.not.2 = icmp eq i32 %27, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %addr)
  %cmp17.not.2 = icmp ule i64 %23, %addr
  %or.cond.2 = select i1 %cmp14.not.2, i1 %cmp17.not.2, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %addr)
  %cmp18.2 = icmp ugt i64 %add.2, %addr
  %or.cond46.2 = select i1 %or.cond.2, i1 %cmp18.2, i1 false
  br i1 %or.cond46.2, label %if.end.2.if.then19_crit_edge, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2.if.then19_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %aspace9.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 4
  %28 = ptrtoint ptr %aspace9.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aspace9.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %aspace)
  %cmp10.not.3 = icmp eq i32 %29, %aspace
  br i1 %cmp10.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %vme_base.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 1
  %30 = ptrtoint ptr %vme_base.3 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vme_base.3, align 8
  %size.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 2
  %32 = ptrtoint ptr %size.3 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %size.3, align 8
  %add.3 = add i64 %33, %31
  %cycle13.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 5
  %34 = ptrtoint ptr %cycle13.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cycle13.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %cycle)
  %cmp14.not.3 = icmp eq i32 %35, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %addr)
  %cmp17.not.3 = icmp ule i64 %31, %addr
  %or.cond.3 = select i1 %cmp14.not.3, i1 %cmp17.not.3, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %addr)
  %cmp18.3 = icmp ugt i64 %add.3, %addr
  %or.cond46.3 = select i1 %or.cond.3, i1 %cmp18.3, i1 false
  br i1 %or.cond46.3, label %if.end.3.if.then19_crit_edge, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3.if.then19_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %aspace9.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 4
  %36 = ptrtoint ptr %aspace9.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aspace9.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %aspace)
  %cmp10.not.4 = icmp eq i32 %37, %aspace
  br i1 %cmp10.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %vme_base.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 1
  %38 = ptrtoint ptr %vme_base.4 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %vme_base.4, align 8
  %size.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 2
  %40 = ptrtoint ptr %size.4 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %size.4, align 8
  %add.4 = add i64 %41, %39
  %cycle13.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 5
  %42 = ptrtoint ptr %cycle13.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cycle13.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %cycle)
  %cmp14.not.4 = icmp eq i32 %43, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %addr)
  %cmp17.not.4 = icmp ule i64 %39, %addr
  %or.cond.4 = select i1 %cmp14.not.4, i1 %cmp17.not.4, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add.4, i64 %addr)
  %cmp18.4 = icmp ugt i64 %add.4, %addr
  %or.cond46.4 = select i1 %or.cond.4, i1 %cmp18.4, i1 false
  br i1 %or.cond46.4, label %if.end.4.if.then19_crit_edge, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4.if.then19_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %aspace9.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 4
  %44 = ptrtoint ptr %aspace9.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %aspace9.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %aspace)
  %cmp10.not.5 = icmp eq i32 %45, %aspace
  br i1 %cmp10.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %vme_base.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 1
  %46 = ptrtoint ptr %vme_base.5 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vme_base.5, align 8
  %size.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 2
  %48 = ptrtoint ptr %size.5 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %size.5, align 8
  %add.5 = add i64 %49, %47
  %cycle13.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 5
  %50 = ptrtoint ptr %cycle13.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cycle13.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %cycle)
  %cmp14.not.5 = icmp eq i32 %51, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %addr)
  %cmp17.not.5 = icmp ule i64 %47, %addr
  %or.cond.5 = select i1 %cmp14.not.5, i1 %cmp17.not.5, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add.5, i64 %addr)
  %cmp18.5 = icmp ugt i64 %add.5, %addr
  %or.cond46.5 = select i1 %or.cond.5, i1 %cmp18.5, i1 false
  br i1 %or.cond46.5, label %if.end.5.if.then19_crit_edge, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5.if.then19_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.5:                                        ; preds = %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %aspace9.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 4
  %52 = ptrtoint ptr %aspace9.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %aspace9.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %aspace)
  %cmp10.not.6 = icmp eq i32 %53, %aspace
  br i1 %cmp10.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %vme_base.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 1
  %54 = ptrtoint ptr %vme_base.6 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %vme_base.6, align 8
  %size.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 2
  %56 = ptrtoint ptr %size.6 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %size.6, align 8
  %add.6 = add i64 %57, %55
  %cycle13.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 5
  %58 = ptrtoint ptr %cycle13.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cycle13.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %cycle)
  %cmp14.not.6 = icmp eq i32 %59, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %addr)
  %cmp17.not.6 = icmp ule i64 %55, %addr
  %or.cond.6 = select i1 %cmp14.not.6, i1 %cmp17.not.6, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add.6, i64 %addr)
  %cmp18.6 = icmp ugt i64 %add.6, %addr
  %or.cond46.6 = select i1 %or.cond.6, i1 %cmp18.6, i1 false
  br i1 %or.cond46.6, label %if.end.6.if.then19_crit_edge, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6.if.then19_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.6:                                        ; preds = %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %aspace9.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 4
  %60 = ptrtoint ptr %aspace9.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %aspace9.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %aspace)
  %cmp10.not.7 = icmp eq i32 %61, %aspace
  br i1 %cmp10.not.7, label %if.end.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.7:                                         ; preds = %for.inc.6
  %vme_base.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 1
  %62 = ptrtoint ptr %vme_base.7 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %vme_base.7, align 8
  %size.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 2
  %64 = ptrtoint ptr %size.7 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %size.7, align 8
  %add.7 = add i64 %65, %63
  %cycle13.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 5
  %66 = ptrtoint ptr %cycle13.7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cycle13.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %cycle)
  %cmp14.not.7 = icmp eq i32 %67, %cycle
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %addr)
  %cmp17.not.7 = icmp ule i64 %63, %addr
  %or.cond.7 = select i1 %cmp14.not.7, i1 %cmp17.not.7, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add.7, i64 %addr)
  %cmp18.7 = icmp ugt i64 %add.7, %addr
  %or.cond46.7 = select i1 %or.cond.7, i1 %cmp18.7, i1 false
  br i1 %or.cond46.7, label %if.end.7.if.then19_crit_edge, label %if.end.7.for.end_crit_edge

if.end.7.for.end_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.7.if.then19_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.end:                                          ; preds = %if.end.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then19
  %retval1.0 = phi i8 [ %11, %if.then19 ], [ -1, %if.end.7.for.end_crit_edge ], [ -1, %for.inc.6.for.end_crit_edge ]
  %68 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bridge, align 8
  %lm_resources.i = getelementptr inbounds %struct.vme_bridge, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %lm_resources.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lm_resources.i, align 4
  %lm_enabled.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 3
  %cmp.i.not63.i = icmp eq ptr %71, %lm_resources.i
  br i1 %cmp.i.not63.i, label %for.end.fake_lm_check.exit_crit_edge, label %for.body.lr.ph.i

for.end.fake_lm_check.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %lm_base3.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 4
  %lm_aspace4.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 5
  %lm_cycle5.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.064.i = phi ptr [ %71, %for.body.lr.ph.i ], [ %n.065.i, %for.inc30.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %pos.064.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %n.065.i = load ptr, ptr %pos.064.i, align 4
  %73 = ptrtoint ptr %lm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lm_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i = icmp eq i32 %74, 0
  br i1 %cmp.i, label %for.body.i.fake_lm_check.exit_crit_edge, label %if.end.i

for.body.i.fake_lm_check.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

if.end.i:                                         ; preds = %for.body.i
  %75 = ptrtoint ptr %lm_base3.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %lm_base3.i, align 8
  %77 = ptrtoint ptr %lm_aspace4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lm_aspace4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %aspace)
  %cmp6.i = icmp eq i32 %78, %aspace
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.for.inc30.i_crit_edge

if.end.i.for.inc30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %79 = ptrtoint ptr %lm_cycle5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lm_cycle5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %cycle)
  %cmp7.i = icmp eq i32 %80, %cycle
  br i1 %cmp7.i, label %for.cond9.preheader.i, label %land.lhs.true.i.for.inc30.i_crit_edge

land.lhs.true.i.for.inc30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i:                            ; preds = %land.lhs.true.i
  %monitors.i = getelementptr inbounds %struct.vme_lm_resource, ptr %pos.064.i, i32 0, i32 5
  %81 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %monitors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp1059.i = icmp sgt i32 %82, 0
  br i1 %cmp1059.i, label %for.cond9.preheader.i.for.body11.i_crit_edge, label %for.cond9.preheader.i.for.inc30.i_crit_edge

for.cond9.preheader.i.for.inc30.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %mul.i = shl i32 %i.060.i, 3
  %conv.i = sext i32 %mul.i to i64
  %add.i = add i64 %76, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp12.not.i = icmp ule i64 %add.i, %addr
  %add18.i = add i64 %add.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.i, i64 %addr)
  %cmp19.i = icmp ugt i64 %add18.i, %addr
  %or.cond.i = and i1 %cmp12.not.i, %cmp19.i
  br i1 %or.cond.i, label %if.then21.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body11.i
  %arrayidx.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 7, i32 %i.060.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %84, null
  br i1 %tobool22.not.i, label %if.then21.i.for.inc.i_crit_edge, label %if.then23.i

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 8, i32 %i.060.i
  %85 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx26.i, align 4
  tail call void %84(ptr noundef %86) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.then21.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %87 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %monitors.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %88
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc30.i_crit_edge

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %for.cond9.preheader.i.for.inc30.i_crit_edge, %land.lhs.true.i.for.inc30.i_crit_edge, %if.end.i.for.inc30.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.065.i, %lm_resources.i
  br i1 %cmp.i.not.i, label %for.inc30.i.fake_lm_check.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc30.i.fake_lm_check.exit_crit_edge:         ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

fake_lm_check.exit:                               ; preds = %for.inc30.i.fake_lm_check.exit_crit_edge, %for.body.i.fake_lm_check.exit_crit_edge, %for.end.fake_lm_check.exit_crit_edge
  ret i8 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @fake_vmeread16(ptr nocapture noundef readonly %bridge, i64 noundef %addr, i32 noundef %aspace, i32 noundef %cycle) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add18 = add i64 %addr, 1
  %aspace2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %aspace2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aspace2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %aspace)
  %cmp3.not = icmp eq i32 %1, %aspace
  br i1 %cmp3.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %cycle6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %cycle6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cycle6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cycle)
  %cmp7.not = icmp eq i32 %3, %cycle
  br i1 %cmp7.not, label %if.end9, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %vme_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vme_base, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp17.not = icmp ugt i64 %5, %addr
  br i1 %cmp17.not, label %if.end9.for.inc_crit_edge, label %land.lhs.true

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end9
  %size = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add)
  %cmp19 = icmp ult i64 %add18, %add
  br i1 %cmp19, label %land.lhs.true.if.then20_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true.7.if.then20_crit_edge, %land.lhs.true.6.if.then20_crit_edge, %land.lhs.true.5.if.then20_crit_edge, %land.lhs.true.4.if.then20_crit_edge, %land.lhs.true.3.if.then20_crit_edge, %land.lhs.true.2.if.then20_crit_edge, %land.lhs.true.1.if.then20_crit_edge, %land.lhs.true.if.then20_crit_edge
  %i.048.lcssa = phi i32 [ 0, %land.lhs.true.if.then20_crit_edge ], [ 1, %land.lhs.true.1.if.then20_crit_edge ], [ 2, %land.lhs.true.2.if.then20_crit_edge ], [ 3, %land.lhs.true.3.if.then20_crit_edge ], [ 4, %land.lhs.true.4.if.then20_crit_edge ], [ 5, %land.lhs.true.5.if.then20_crit_edge ], [ 6, %land.lhs.true.6.if.then20_crit_edge ], [ 7, %land.lhs.true.7.if.then20_crit_edge ]
  %.lcssa = phi i64 [ %5, %land.lhs.true.if.then20_crit_edge ], [ %17, %land.lhs.true.1.if.then20_crit_edge ], [ %25, %land.lhs.true.2.if.then20_crit_edge ], [ %33, %land.lhs.true.3.if.then20_crit_edge ], [ %41, %land.lhs.true.4.if.then20_crit_edge ], [ %49, %land.lhs.true.5.if.then20_crit_edge ], [ %57, %land.lhs.true.6.if.then20_crit_edge ], [ %65, %land.lhs.true.7.if.then20_crit_edge ]
  %sub = sub i64 %addr, %.lcssa
  %buf_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 %i.048.lcssa, i32 3
  %8 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_base, align 8
  %idx.ext = trunc i64 %sub to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 2
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %aspace2.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %aspace2.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aspace2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %aspace)
  %cmp3.not.1 = icmp eq i32 %13, %aspace
  br i1 %cmp3.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %cycle6.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 5
  %14 = ptrtoint ptr %cycle6.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cycle6.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cycle)
  %cmp7.not.1 = icmp eq i32 %15, %cycle
  br i1 %cmp7.not.1, label %if.end9.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end9.1:                                        ; preds = %if.end.1
  %vme_base.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %vme_base.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vme_base.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %addr)
  %cmp17.not.1 = icmp ugt i64 %17, %addr
  br i1 %cmp17.not.1, label %if.end9.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end9.1
  %size.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 2
  %18 = ptrtoint ptr %size.1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.1, align 8
  %add.1 = add i64 %19, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.1)
  %cmp19.1 = icmp ult i64 %add18, %add.1
  br i1 %cmp19.1, label %land.lhs.true.1.if.then20_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1.if.then20_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end9.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %aspace2.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 4
  %20 = ptrtoint ptr %aspace2.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aspace2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %aspace)
  %cmp3.not.2 = icmp eq i32 %21, %aspace
  br i1 %cmp3.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %cycle6.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 5
  %22 = ptrtoint ptr %cycle6.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cycle6.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cycle)
  %cmp7.not.2 = icmp eq i32 %23, %cycle
  br i1 %cmp7.not.2, label %if.end9.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end9.2:                                        ; preds = %if.end.2
  %vme_base.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 1
  %24 = ptrtoint ptr %vme_base.2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vme_base.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %addr)
  %cmp17.not.2 = icmp ugt i64 %25, %addr
  br i1 %cmp17.not.2, label %if.end9.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end9.2.for.inc.2_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end9.2
  %size.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 2
  %26 = ptrtoint ptr %size.2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size.2, align 8
  %add.2 = add i64 %27, %25
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.2)
  %cmp19.2 = icmp ult i64 %add18, %add.2
  br i1 %cmp19.2, label %land.lhs.true.2.if.then20_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2.if.then20_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end9.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %aspace2.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 4
  %28 = ptrtoint ptr %aspace2.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aspace2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %aspace)
  %cmp3.not.3 = icmp eq i32 %29, %aspace
  br i1 %cmp3.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %cycle6.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 5
  %30 = ptrtoint ptr %cycle6.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cycle6.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %cycle)
  %cmp7.not.3 = icmp eq i32 %31, %cycle
  br i1 %cmp7.not.3, label %if.end9.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end9.3:                                        ; preds = %if.end.3
  %vme_base.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 1
  %32 = ptrtoint ptr %vme_base.3 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vme_base.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %addr)
  %cmp17.not.3 = icmp ugt i64 %33, %addr
  br i1 %cmp17.not.3, label %if.end9.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end9.3.for.inc.3_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end9.3
  %size.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 2
  %34 = ptrtoint ptr %size.3 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size.3, align 8
  %add.3 = add i64 %35, %33
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.3)
  %cmp19.3 = icmp ult i64 %add18, %add.3
  br i1 %cmp19.3, label %land.lhs.true.3.if.then20_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3.if.then20_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end9.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %aspace2.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 4
  %36 = ptrtoint ptr %aspace2.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aspace2.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %aspace)
  %cmp3.not.4 = icmp eq i32 %37, %aspace
  br i1 %cmp3.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %cycle6.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 5
  %38 = ptrtoint ptr %cycle6.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cycle6.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %cycle)
  %cmp7.not.4 = icmp eq i32 %39, %cycle
  br i1 %cmp7.not.4, label %if.end9.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end9.4:                                        ; preds = %if.end.4
  %vme_base.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 1
  %40 = ptrtoint ptr %vme_base.4 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %vme_base.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %addr)
  %cmp17.not.4 = icmp ugt i64 %41, %addr
  br i1 %cmp17.not.4, label %if.end9.4.for.inc.4_crit_edge, label %land.lhs.true.4

if.end9.4.for.inc.4_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end9.4
  %size.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 2
  %42 = ptrtoint ptr %size.4 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %size.4, align 8
  %add.4 = add i64 %43, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.4)
  %cmp19.4 = icmp ult i64 %add18, %add.4
  br i1 %cmp19.4, label %land.lhs.true.4.if.then20_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4.if.then20_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.end9.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %aspace2.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 4
  %44 = ptrtoint ptr %aspace2.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %aspace2.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %aspace)
  %cmp3.not.5 = icmp eq i32 %45, %aspace
  br i1 %cmp3.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %cycle6.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 5
  %46 = ptrtoint ptr %cycle6.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cycle6.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %cycle)
  %cmp7.not.5 = icmp eq i32 %47, %cycle
  br i1 %cmp7.not.5, label %if.end9.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end9.5:                                        ; preds = %if.end.5
  %vme_base.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 1
  %48 = ptrtoint ptr %vme_base.5 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %vme_base.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %addr)
  %cmp17.not.5 = icmp ugt i64 %49, %addr
  br i1 %cmp17.not.5, label %if.end9.5.for.inc.5_crit_edge, label %land.lhs.true.5

if.end9.5.for.inc.5_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end9.5
  %size.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 2
  %50 = ptrtoint ptr %size.5 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %size.5, align 8
  %add.5 = add i64 %51, %49
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.5)
  %cmp19.5 = icmp ult i64 %add18, %add.5
  br i1 %cmp19.5, label %land.lhs.true.5.if.then20_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5.if.then20_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.end9.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %aspace2.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 4
  %52 = ptrtoint ptr %aspace2.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %aspace2.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %aspace)
  %cmp3.not.6 = icmp eq i32 %53, %aspace
  br i1 %cmp3.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %cycle6.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 5
  %54 = ptrtoint ptr %cycle6.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cycle6.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %cycle)
  %cmp7.not.6 = icmp eq i32 %55, %cycle
  br i1 %cmp7.not.6, label %if.end9.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end9.6:                                        ; preds = %if.end.6
  %vme_base.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 1
  %56 = ptrtoint ptr %vme_base.6 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %vme_base.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %addr)
  %cmp17.not.6 = icmp ugt i64 %57, %addr
  br i1 %cmp17.not.6, label %if.end9.6.for.inc.6_crit_edge, label %land.lhs.true.6

if.end9.6.for.inc.6_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end9.6
  %size.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 2
  %58 = ptrtoint ptr %size.6 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %size.6, align 8
  %add.6 = add i64 %59, %57
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.6)
  %cmp19.6 = icmp ult i64 %add18, %add.6
  br i1 %cmp19.6, label %land.lhs.true.6.if.then20_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6.if.then20_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.end9.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %aspace2.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 4
  %60 = ptrtoint ptr %aspace2.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %aspace2.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %aspace)
  %cmp3.not.7 = icmp eq i32 %61, %aspace
  br i1 %cmp3.not.7, label %if.end.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.7:                                         ; preds = %for.inc.6
  %cycle6.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 5
  %62 = ptrtoint ptr %cycle6.7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cycle6.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %cycle)
  %cmp7.not.7 = icmp eq i32 %63, %cycle
  br i1 %cmp7.not.7, label %if.end9.7, label %if.end.7.for.end_crit_edge

if.end.7.for.end_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end9.7:                                        ; preds = %if.end.7
  %vme_base.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 1
  %64 = ptrtoint ptr %vme_base.7 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %vme_base.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %addr)
  %cmp17.not.7 = icmp ugt i64 %65, %addr
  br i1 %cmp17.not.7, label %if.end9.7.for.end_crit_edge, label %land.lhs.true.7

if.end9.7.for.end_crit_edge:                      ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7:                                  ; preds = %if.end9.7
  %size.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 2
  %66 = ptrtoint ptr %size.7 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %size.7, align 8
  %add.7 = add i64 %67, %65
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.7)
  %cmp19.7 = icmp ult i64 %add18, %add.7
  br i1 %cmp19.7, label %land.lhs.true.7.if.then20_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7.if.then20_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %if.end9.7.for.end_crit_edge, %if.end.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then20
  %retval1.0 = phi i16 [ %11, %if.then20 ], [ -1, %land.lhs.true.7.for.end_crit_edge ], [ -1, %if.end9.7.for.end_crit_edge ], [ -1, %if.end.7.for.end_crit_edge ], [ -1, %for.inc.6.for.end_crit_edge ]
  %68 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bridge, align 8
  %lm_resources.i = getelementptr inbounds %struct.vme_bridge, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %lm_resources.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lm_resources.i, align 4
  %lm_enabled.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 3
  %cmp.i.not63.i = icmp eq ptr %71, %lm_resources.i
  br i1 %cmp.i.not63.i, label %for.end.fake_lm_check.exit_crit_edge, label %for.body.lr.ph.i

for.end.fake_lm_check.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %lm_base3.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 4
  %lm_aspace4.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 5
  %lm_cycle5.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.064.i = phi ptr [ %71, %for.body.lr.ph.i ], [ %n.065.i, %for.inc30.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %pos.064.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %n.065.i = load ptr, ptr %pos.064.i, align 4
  %73 = ptrtoint ptr %lm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lm_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i = icmp eq i32 %74, 0
  br i1 %cmp.i, label %for.body.i.fake_lm_check.exit_crit_edge, label %if.end.i

for.body.i.fake_lm_check.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

if.end.i:                                         ; preds = %for.body.i
  %75 = ptrtoint ptr %lm_base3.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %lm_base3.i, align 8
  %77 = ptrtoint ptr %lm_aspace4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lm_aspace4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %aspace)
  %cmp6.i = icmp eq i32 %78, %aspace
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.for.inc30.i_crit_edge

if.end.i.for.inc30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %79 = ptrtoint ptr %lm_cycle5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lm_cycle5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %cycle)
  %cmp7.i = icmp eq i32 %80, %cycle
  br i1 %cmp7.i, label %for.cond9.preheader.i, label %land.lhs.true.i.for.inc30.i_crit_edge

land.lhs.true.i.for.inc30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i:                            ; preds = %land.lhs.true.i
  %monitors.i = getelementptr inbounds %struct.vme_lm_resource, ptr %pos.064.i, i32 0, i32 5
  %81 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %monitors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp1059.i = icmp sgt i32 %82, 0
  br i1 %cmp1059.i, label %for.cond9.preheader.i.for.body11.i_crit_edge, label %for.cond9.preheader.i.for.inc30.i_crit_edge

for.cond9.preheader.i.for.inc30.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %mul.i = shl i32 %i.060.i, 3
  %conv.i = sext i32 %mul.i to i64
  %add.i = add i64 %76, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp12.not.i = icmp ule i64 %add.i, %addr
  %add18.i = add i64 %add.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.i, i64 %addr)
  %cmp19.i = icmp ugt i64 %add18.i, %addr
  %or.cond.i = and i1 %cmp12.not.i, %cmp19.i
  br i1 %or.cond.i, label %if.then21.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body11.i
  %arrayidx.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 7, i32 %i.060.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %84, null
  br i1 %tobool22.not.i, label %if.then21.i.for.inc.i_crit_edge, label %if.then23.i

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 8, i32 %i.060.i
  %85 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx26.i, align 4
  tail call void %84(ptr noundef %86) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.then21.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %87 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %monitors.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %88
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc30.i_crit_edge

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %for.cond9.preheader.i.for.inc30.i_crit_edge, %land.lhs.true.i.for.inc30.i_crit_edge, %if.end.i.for.inc30.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.065.i, %lm_resources.i
  br i1 %cmp.i.not.i, label %for.inc30.i.fake_lm_check.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc30.i.fake_lm_check.exit_crit_edge:         ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

fake_lm_check.exit:                               ; preds = %for.inc30.i.fake_lm_check.exit_crit_edge, %for.body.i.fake_lm_check.exit_crit_edge, %for.end.fake_lm_check.exit_crit_edge
  ret i16 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fake_vmeread32(ptr nocapture noundef readonly %bridge, i64 noundef %addr, i32 noundef %aspace, i32 noundef %cycle) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add18 = add i64 %addr, 3
  %aspace2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %aspace2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aspace2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %aspace)
  %cmp3.not = icmp eq i32 %1, %aspace
  br i1 %cmp3.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %cycle6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %cycle6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cycle6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cycle)
  %cmp7.not = icmp eq i32 %3, %cycle
  br i1 %cmp7.not, label %if.end9, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %vme_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vme_base, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp17.not = icmp ugt i64 %5, %addr
  br i1 %cmp17.not, label %if.end9.for.inc_crit_edge, label %land.lhs.true

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end9
  %size = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add)
  %cmp19 = icmp ult i64 %add18, %add
  br i1 %cmp19, label %land.lhs.true.if.then20_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true.7.if.then20_crit_edge, %land.lhs.true.6.if.then20_crit_edge, %land.lhs.true.5.if.then20_crit_edge, %land.lhs.true.4.if.then20_crit_edge, %land.lhs.true.3.if.then20_crit_edge, %land.lhs.true.2.if.then20_crit_edge, %land.lhs.true.1.if.then20_crit_edge, %land.lhs.true.if.then20_crit_edge
  %i.048.lcssa = phi i32 [ 0, %land.lhs.true.if.then20_crit_edge ], [ 1, %land.lhs.true.1.if.then20_crit_edge ], [ 2, %land.lhs.true.2.if.then20_crit_edge ], [ 3, %land.lhs.true.3.if.then20_crit_edge ], [ 4, %land.lhs.true.4.if.then20_crit_edge ], [ 5, %land.lhs.true.5.if.then20_crit_edge ], [ 6, %land.lhs.true.6.if.then20_crit_edge ], [ 7, %land.lhs.true.7.if.then20_crit_edge ]
  %.lcssa = phi i64 [ %5, %land.lhs.true.if.then20_crit_edge ], [ %17, %land.lhs.true.1.if.then20_crit_edge ], [ %25, %land.lhs.true.2.if.then20_crit_edge ], [ %33, %land.lhs.true.3.if.then20_crit_edge ], [ %41, %land.lhs.true.4.if.then20_crit_edge ], [ %49, %land.lhs.true.5.if.then20_crit_edge ], [ %57, %land.lhs.true.6.if.then20_crit_edge ], [ %65, %land.lhs.true.7.if.then20_crit_edge ]
  %sub = sub i64 %addr, %.lcssa
  %buf_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 %i.048.lcssa, i32 3
  %8 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_base, align 8
  %idx.ext = trunc i64 %sub to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %aspace2.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %aspace2.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aspace2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %aspace)
  %cmp3.not.1 = icmp eq i32 %13, %aspace
  br i1 %cmp3.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %cycle6.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 5
  %14 = ptrtoint ptr %cycle6.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cycle6.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cycle)
  %cmp7.not.1 = icmp eq i32 %15, %cycle
  br i1 %cmp7.not.1, label %if.end9.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end9.1:                                        ; preds = %if.end.1
  %vme_base.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %vme_base.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vme_base.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %addr)
  %cmp17.not.1 = icmp ugt i64 %17, %addr
  br i1 %cmp17.not.1, label %if.end9.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end9.1
  %size.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 2
  %18 = ptrtoint ptr %size.1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size.1, align 8
  %add.1 = add i64 %19, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.1)
  %cmp19.1 = icmp ult i64 %add18, %add.1
  br i1 %cmp19.1, label %land.lhs.true.1.if.then20_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1.if.then20_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end9.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %aspace2.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 4
  %20 = ptrtoint ptr %aspace2.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aspace2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %aspace)
  %cmp3.not.2 = icmp eq i32 %21, %aspace
  br i1 %cmp3.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %cycle6.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 5
  %22 = ptrtoint ptr %cycle6.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cycle6.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cycle)
  %cmp7.not.2 = icmp eq i32 %23, %cycle
  br i1 %cmp7.not.2, label %if.end9.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end9.2:                                        ; preds = %if.end.2
  %vme_base.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 1
  %24 = ptrtoint ptr %vme_base.2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vme_base.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %addr)
  %cmp17.not.2 = icmp ugt i64 %25, %addr
  br i1 %cmp17.not.2, label %if.end9.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end9.2.for.inc.2_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end9.2
  %size.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 2
  %26 = ptrtoint ptr %size.2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size.2, align 8
  %add.2 = add i64 %27, %25
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.2)
  %cmp19.2 = icmp ult i64 %add18, %add.2
  br i1 %cmp19.2, label %land.lhs.true.2.if.then20_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2.if.then20_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end9.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %aspace2.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 4
  %28 = ptrtoint ptr %aspace2.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aspace2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %aspace)
  %cmp3.not.3 = icmp eq i32 %29, %aspace
  br i1 %cmp3.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %cycle6.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 5
  %30 = ptrtoint ptr %cycle6.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cycle6.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %cycle)
  %cmp7.not.3 = icmp eq i32 %31, %cycle
  br i1 %cmp7.not.3, label %if.end9.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end9.3:                                        ; preds = %if.end.3
  %vme_base.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 1
  %32 = ptrtoint ptr %vme_base.3 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vme_base.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %addr)
  %cmp17.not.3 = icmp ugt i64 %33, %addr
  br i1 %cmp17.not.3, label %if.end9.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end9.3.for.inc.3_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end9.3
  %size.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 2
  %34 = ptrtoint ptr %size.3 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size.3, align 8
  %add.3 = add i64 %35, %33
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.3)
  %cmp19.3 = icmp ult i64 %add18, %add.3
  br i1 %cmp19.3, label %land.lhs.true.3.if.then20_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3.if.then20_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end9.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %aspace2.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 4
  %36 = ptrtoint ptr %aspace2.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aspace2.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %aspace)
  %cmp3.not.4 = icmp eq i32 %37, %aspace
  br i1 %cmp3.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %cycle6.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 5
  %38 = ptrtoint ptr %cycle6.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cycle6.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %cycle)
  %cmp7.not.4 = icmp eq i32 %39, %cycle
  br i1 %cmp7.not.4, label %if.end9.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end9.4:                                        ; preds = %if.end.4
  %vme_base.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 1
  %40 = ptrtoint ptr %vme_base.4 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %vme_base.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %addr)
  %cmp17.not.4 = icmp ugt i64 %41, %addr
  br i1 %cmp17.not.4, label %if.end9.4.for.inc.4_crit_edge, label %land.lhs.true.4

if.end9.4.for.inc.4_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end9.4
  %size.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 2
  %42 = ptrtoint ptr %size.4 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %size.4, align 8
  %add.4 = add i64 %43, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.4)
  %cmp19.4 = icmp ult i64 %add18, %add.4
  br i1 %cmp19.4, label %land.lhs.true.4.if.then20_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4.if.then20_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.end9.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %aspace2.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 4
  %44 = ptrtoint ptr %aspace2.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %aspace2.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %aspace)
  %cmp3.not.5 = icmp eq i32 %45, %aspace
  br i1 %cmp3.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %cycle6.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 5
  %46 = ptrtoint ptr %cycle6.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cycle6.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %cycle)
  %cmp7.not.5 = icmp eq i32 %47, %cycle
  br i1 %cmp7.not.5, label %if.end9.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end9.5:                                        ; preds = %if.end.5
  %vme_base.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 1
  %48 = ptrtoint ptr %vme_base.5 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %vme_base.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %addr)
  %cmp17.not.5 = icmp ugt i64 %49, %addr
  br i1 %cmp17.not.5, label %if.end9.5.for.inc.5_crit_edge, label %land.lhs.true.5

if.end9.5.for.inc.5_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end9.5
  %size.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 2
  %50 = ptrtoint ptr %size.5 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %size.5, align 8
  %add.5 = add i64 %51, %49
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.5)
  %cmp19.5 = icmp ult i64 %add18, %add.5
  br i1 %cmp19.5, label %land.lhs.true.5.if.then20_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5.if.then20_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.end9.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %aspace2.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 4
  %52 = ptrtoint ptr %aspace2.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %aspace2.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %aspace)
  %cmp3.not.6 = icmp eq i32 %53, %aspace
  br i1 %cmp3.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %cycle6.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 5
  %54 = ptrtoint ptr %cycle6.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cycle6.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %cycle)
  %cmp7.not.6 = icmp eq i32 %55, %cycle
  br i1 %cmp7.not.6, label %if.end9.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end9.6:                                        ; preds = %if.end.6
  %vme_base.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 1
  %56 = ptrtoint ptr %vme_base.6 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %vme_base.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %addr)
  %cmp17.not.6 = icmp ugt i64 %57, %addr
  br i1 %cmp17.not.6, label %if.end9.6.for.inc.6_crit_edge, label %land.lhs.true.6

if.end9.6.for.inc.6_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end9.6
  %size.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 2
  %58 = ptrtoint ptr %size.6 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %size.6, align 8
  %add.6 = add i64 %59, %57
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.6)
  %cmp19.6 = icmp ult i64 %add18, %add.6
  br i1 %cmp19.6, label %land.lhs.true.6.if.then20_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6.if.then20_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.end9.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %aspace2.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 4
  %60 = ptrtoint ptr %aspace2.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %aspace2.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %aspace)
  %cmp3.not.7 = icmp eq i32 %61, %aspace
  br i1 %cmp3.not.7, label %if.end.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.7:                                         ; preds = %for.inc.6
  %cycle6.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 5
  %62 = ptrtoint ptr %cycle6.7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cycle6.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %cycle)
  %cmp7.not.7 = icmp eq i32 %63, %cycle
  br i1 %cmp7.not.7, label %if.end9.7, label %if.end.7.for.end_crit_edge

if.end.7.for.end_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end9.7:                                        ; preds = %if.end.7
  %vme_base.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 1
  %64 = ptrtoint ptr %vme_base.7 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %vme_base.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %addr)
  %cmp17.not.7 = icmp ugt i64 %65, %addr
  br i1 %cmp17.not.7, label %if.end9.7.for.end_crit_edge, label %land.lhs.true.7

if.end9.7.for.end_crit_edge:                      ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7:                                  ; preds = %if.end9.7
  %size.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 2
  %66 = ptrtoint ptr %size.7 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %size.7, align 8
  %add.7 = add i64 %67, %65
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %add.7)
  %cmp19.7 = icmp ult i64 %add18, %add.7
  br i1 %cmp19.7, label %land.lhs.true.7.if.then20_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7.if.then20_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %if.end9.7.for.end_crit_edge, %if.end.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then20
  %retval1.0 = phi i32 [ %11, %if.then20 ], [ -1, %land.lhs.true.7.for.end_crit_edge ], [ -1, %if.end9.7.for.end_crit_edge ], [ -1, %if.end.7.for.end_crit_edge ], [ -1, %for.inc.6.for.end_crit_edge ]
  %68 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bridge, align 8
  %lm_resources.i = getelementptr inbounds %struct.vme_bridge, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %lm_resources.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lm_resources.i, align 4
  %lm_enabled.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 3
  %cmp.i.not63.i = icmp eq ptr %71, %lm_resources.i
  br i1 %cmp.i.not63.i, label %for.end.fake_lm_check.exit_crit_edge, label %for.body.lr.ph.i

for.end.fake_lm_check.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %lm_base3.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 4
  %lm_aspace4.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 5
  %lm_cycle5.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.064.i = phi ptr [ %71, %for.body.lr.ph.i ], [ %n.065.i, %for.inc30.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %pos.064.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %n.065.i = load ptr, ptr %pos.064.i, align 4
  %73 = ptrtoint ptr %lm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lm_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i = icmp eq i32 %74, 0
  br i1 %cmp.i, label %for.body.i.fake_lm_check.exit_crit_edge, label %if.end.i

for.body.i.fake_lm_check.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

if.end.i:                                         ; preds = %for.body.i
  %75 = ptrtoint ptr %lm_base3.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %lm_base3.i, align 8
  %77 = ptrtoint ptr %lm_aspace4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lm_aspace4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %aspace)
  %cmp6.i = icmp eq i32 %78, %aspace
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.for.inc30.i_crit_edge

if.end.i.for.inc30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %79 = ptrtoint ptr %lm_cycle5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lm_cycle5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %cycle)
  %cmp7.i = icmp eq i32 %80, %cycle
  br i1 %cmp7.i, label %for.cond9.preheader.i, label %land.lhs.true.i.for.inc30.i_crit_edge

land.lhs.true.i.for.inc30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i:                            ; preds = %land.lhs.true.i
  %monitors.i = getelementptr inbounds %struct.vme_lm_resource, ptr %pos.064.i, i32 0, i32 5
  %81 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %monitors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp1059.i = icmp sgt i32 %82, 0
  br i1 %cmp1059.i, label %for.cond9.preheader.i.for.body11.i_crit_edge, label %for.cond9.preheader.i.for.inc30.i_crit_edge

for.cond9.preheader.i.for.inc30.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %mul.i = shl i32 %i.060.i, 3
  %conv.i = sext i32 %mul.i to i64
  %add.i = add i64 %76, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp12.not.i = icmp ule i64 %add.i, %addr
  %add18.i = add i64 %add.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.i, i64 %addr)
  %cmp19.i = icmp ugt i64 %add18.i, %addr
  %or.cond.i = and i1 %cmp12.not.i, %cmp19.i
  br i1 %or.cond.i, label %if.then21.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body11.i
  %arrayidx.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 7, i32 %i.060.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %84, null
  br i1 %tobool22.not.i, label %if.then21.i.for.inc.i_crit_edge, label %if.then23.i

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 8, i32 %i.060.i
  %85 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx26.i, align 4
  tail call void %84(ptr noundef %86) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.then21.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %87 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %monitors.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %88
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc30.i_crit_edge

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %for.cond9.preheader.i.for.inc30.i_crit_edge, %land.lhs.true.i.for.inc30.i_crit_edge, %if.end.i.for.inc30.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.065.i, %lm_resources.i
  br i1 %cmp.i.not.i, label %for.inc30.i.fake_lm_check.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc30.i.fake_lm_check.exit_crit_edge:         ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

fake_lm_check.exit:                               ; preds = %for.inc30.i.fake_lm_check.exit_crit_edge, %for.body.i.fake_lm_check.exit_crit_edge, %for.end.fake_lm_check.exit_crit_edge
  ret i32 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fake_vmewrite8(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %buf, i64 noundef %addr, i32 noundef %aspace, i32 noundef %cycle) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aspace1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %aspace1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aspace1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %aspace)
  %cmp2.not = icmp eq i32 %1, %aspace
  br i1 %cmp2.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %cycle5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %cycle5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cycle5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cycle)
  %cmp6.not = icmp eq i32 %3, %cycle
  br i1 %cmp6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %vme_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vme_base, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp16.not = icmp ugt i64 %5, %addr
  br i1 %cmp16.not, label %if.end8.for.inc_crit_edge, label %land.lhs.true

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end8
  %size = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp17 = icmp ugt i64 %add, %addr
  br i1 %cmp17, label %land.lhs.true.if.then18_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true.7.if.then18_crit_edge, %land.lhs.true.6.if.then18_crit_edge, %land.lhs.true.5.if.then18_crit_edge, %land.lhs.true.4.if.then18_crit_edge, %land.lhs.true.3.if.then18_crit_edge, %land.lhs.true.2.if.then18_crit_edge, %land.lhs.true.1.if.then18_crit_edge, %land.lhs.true.if.then18_crit_edge
  %i.046.lcssa = phi i32 [ 0, %land.lhs.true.if.then18_crit_edge ], [ 1, %land.lhs.true.1.if.then18_crit_edge ], [ 2, %land.lhs.true.2.if.then18_crit_edge ], [ 3, %land.lhs.true.3.if.then18_crit_edge ], [ 4, %land.lhs.true.4.if.then18_crit_edge ], [ 5, %land.lhs.true.5.if.then18_crit_edge ], [ 6, %land.lhs.true.6.if.then18_crit_edge ], [ 7, %land.lhs.true.7.if.then18_crit_edge ]
  %.lcssa = phi i64 [ %5, %land.lhs.true.if.then18_crit_edge ], [ %18, %land.lhs.true.1.if.then18_crit_edge ], [ %26, %land.lhs.true.2.if.then18_crit_edge ], [ %34, %land.lhs.true.3.if.then18_crit_edge ], [ %42, %land.lhs.true.4.if.then18_crit_edge ], [ %50, %land.lhs.true.5.if.then18_crit_edge ], [ %58, %land.lhs.true.6.if.then18_crit_edge ], [ %66, %land.lhs.true.7.if.then18_crit_edge ]
  %sub = sub i64 %addr, %.lcssa
  %buf_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 %i.046.lcssa, i32 3
  %8 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_base, align 8
  %idx.ext = trunc i64 %sub to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %add.ptr, align 1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %aspace1.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %aspace1.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aspace1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %aspace)
  %cmp2.not.1 = icmp eq i32 %14, %aspace
  br i1 %cmp2.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %cycle5.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 5
  %15 = ptrtoint ptr %cycle5.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cycle5.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cycle)
  %cmp6.not.1 = icmp eq i32 %16, %cycle
  br i1 %cmp6.not.1, label %if.end8.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end8.1:                                        ; preds = %if.end.1
  %vme_base.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %vme_base.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vme_base.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %addr)
  %cmp16.not.1 = icmp ugt i64 %18, %addr
  br i1 %cmp16.not.1, label %if.end8.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end8.1.for.inc.1_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end8.1
  %size.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %size.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size.1, align 8
  %add.1 = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %addr)
  %cmp17.1 = icmp ugt i64 %add.1, %addr
  br i1 %cmp17.1, label %land.lhs.true.1.if.then18_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1.if.then18_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end8.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %aspace1.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 4
  %21 = ptrtoint ptr %aspace1.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aspace1.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %aspace)
  %cmp2.not.2 = icmp eq i32 %22, %aspace
  br i1 %cmp2.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %cycle5.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 5
  %23 = ptrtoint ptr %cycle5.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cycle5.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %cycle)
  %cmp6.not.2 = icmp eq i32 %24, %cycle
  br i1 %cmp6.not.2, label %if.end8.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end8.2:                                        ; preds = %if.end.2
  %vme_base.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 1
  %25 = ptrtoint ptr %vme_base.2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vme_base.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %addr)
  %cmp16.not.2 = icmp ugt i64 %26, %addr
  br i1 %cmp16.not.2, label %if.end8.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end8.2.for.inc.2_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end8.2
  %size.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 2
  %27 = ptrtoint ptr %size.2 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size.2, align 8
  %add.2 = add i64 %28, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %addr)
  %cmp17.2 = icmp ugt i64 %add.2, %addr
  br i1 %cmp17.2, label %land.lhs.true.2.if.then18_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2.if.then18_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end8.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %aspace1.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 4
  %29 = ptrtoint ptr %aspace1.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aspace1.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %aspace)
  %cmp2.not.3 = icmp eq i32 %30, %aspace
  br i1 %cmp2.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %cycle5.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 5
  %31 = ptrtoint ptr %cycle5.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cycle5.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %cycle)
  %cmp6.not.3 = icmp eq i32 %32, %cycle
  br i1 %cmp6.not.3, label %if.end8.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end8.3:                                        ; preds = %if.end.3
  %vme_base.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 1
  %33 = ptrtoint ptr %vme_base.3 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vme_base.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %addr)
  %cmp16.not.3 = icmp ugt i64 %34, %addr
  br i1 %cmp16.not.3, label %if.end8.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end8.3.for.inc.3_crit_edge:                    ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end8.3
  %size.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 2
  %35 = ptrtoint ptr %size.3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %size.3, align 8
  %add.3 = add i64 %36, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %addr)
  %cmp17.3 = icmp ugt i64 %add.3, %addr
  br i1 %cmp17.3, label %land.lhs.true.3.if.then18_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3.if.then18_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end8.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %aspace1.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 4
  %37 = ptrtoint ptr %aspace1.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aspace1.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %aspace)
  %cmp2.not.4 = icmp eq i32 %38, %aspace
  br i1 %cmp2.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %cycle5.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 5
  %39 = ptrtoint ptr %cycle5.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cycle5.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %cycle)
  %cmp6.not.4 = icmp eq i32 %40, %cycle
  br i1 %cmp6.not.4, label %if.end8.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end8.4:                                        ; preds = %if.end.4
  %vme_base.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 1
  %41 = ptrtoint ptr %vme_base.4 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %vme_base.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %addr)
  %cmp16.not.4 = icmp ugt i64 %42, %addr
  br i1 %cmp16.not.4, label %if.end8.4.for.inc.4_crit_edge, label %land.lhs.true.4

if.end8.4.for.inc.4_crit_edge:                    ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end8.4
  %size.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 2
  %43 = ptrtoint ptr %size.4 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size.4, align 8
  %add.4 = add i64 %44, %42
  call void @__sanitizer_cov_trace_cmp8(i64 %add.4, i64 %addr)
  %cmp17.4 = icmp ugt i64 %add.4, %addr
  br i1 %cmp17.4, label %land.lhs.true.4.if.then18_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4.if.then18_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.end8.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %aspace1.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 4
  %45 = ptrtoint ptr %aspace1.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %aspace1.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %aspace)
  %cmp2.not.5 = icmp eq i32 %46, %aspace
  br i1 %cmp2.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %cycle5.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 5
  %47 = ptrtoint ptr %cycle5.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cycle5.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %cycle)
  %cmp6.not.5 = icmp eq i32 %48, %cycle
  br i1 %cmp6.not.5, label %if.end8.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end8.5:                                        ; preds = %if.end.5
  %vme_base.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 1
  %49 = ptrtoint ptr %vme_base.5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vme_base.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %addr)
  %cmp16.not.5 = icmp ugt i64 %50, %addr
  br i1 %cmp16.not.5, label %if.end8.5.for.inc.5_crit_edge, label %land.lhs.true.5

if.end8.5.for.inc.5_crit_edge:                    ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end8.5
  %size.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 2
  %51 = ptrtoint ptr %size.5 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %size.5, align 8
  %add.5 = add i64 %52, %50
  call void @__sanitizer_cov_trace_cmp8(i64 %add.5, i64 %addr)
  %cmp17.5 = icmp ugt i64 %add.5, %addr
  br i1 %cmp17.5, label %land.lhs.true.5.if.then18_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5.if.then18_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.end8.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %aspace1.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 4
  %53 = ptrtoint ptr %aspace1.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aspace1.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %aspace)
  %cmp2.not.6 = icmp eq i32 %54, %aspace
  br i1 %cmp2.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %cycle5.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 5
  %55 = ptrtoint ptr %cycle5.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cycle5.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %cycle)
  %cmp6.not.6 = icmp eq i32 %56, %cycle
  br i1 %cmp6.not.6, label %if.end8.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end8.6:                                        ; preds = %if.end.6
  %vme_base.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 1
  %57 = ptrtoint ptr %vme_base.6 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vme_base.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %addr)
  %cmp16.not.6 = icmp ugt i64 %58, %addr
  br i1 %cmp16.not.6, label %if.end8.6.for.inc.6_crit_edge, label %land.lhs.true.6

if.end8.6.for.inc.6_crit_edge:                    ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end8.6
  %size.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 2
  %59 = ptrtoint ptr %size.6 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size.6, align 8
  %add.6 = add i64 %60, %58
  call void @__sanitizer_cov_trace_cmp8(i64 %add.6, i64 %addr)
  %cmp17.6 = icmp ugt i64 %add.6, %addr
  br i1 %cmp17.6, label %land.lhs.true.6.if.then18_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6.if.then18_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.end8.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %aspace1.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 4
  %61 = ptrtoint ptr %aspace1.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aspace1.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %aspace)
  %cmp2.not.7 = icmp eq i32 %62, %aspace
  br i1 %cmp2.not.7, label %if.end.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.7:                                         ; preds = %for.inc.6
  %cycle5.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 5
  %63 = ptrtoint ptr %cycle5.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cycle5.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %cycle)
  %cmp6.not.7 = icmp eq i32 %64, %cycle
  br i1 %cmp6.not.7, label %if.end8.7, label %if.end.7.for.end_crit_edge

if.end.7.for.end_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end8.7:                                        ; preds = %if.end.7
  %vme_base.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 1
  %65 = ptrtoint ptr %vme_base.7 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %vme_base.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %addr)
  %cmp16.not.7 = icmp ugt i64 %66, %addr
  br i1 %cmp16.not.7, label %if.end8.7.for.end_crit_edge, label %land.lhs.true.7

if.end8.7.for.end_crit_edge:                      ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7:                                  ; preds = %if.end8.7
  %size.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 2
  %67 = ptrtoint ptr %size.7 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %size.7, align 8
  %add.7 = add i64 %68, %66
  call void @__sanitizer_cov_trace_cmp8(i64 %add.7, i64 %addr)
  %cmp17.7 = icmp ugt i64 %add.7, %addr
  br i1 %cmp17.7, label %land.lhs.true.7.if.then18_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7.if.then18_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %if.end8.7.for.end_crit_edge, %if.end.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then18
  %69 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bridge, align 8
  %lm_resources.i = getelementptr inbounds %struct.vme_bridge, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %lm_resources.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lm_resources.i, align 4
  %lm_enabled.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 3
  %cmp.i.not63.i = icmp eq ptr %72, %lm_resources.i
  br i1 %cmp.i.not63.i, label %for.end.fake_lm_check.exit_crit_edge, label %for.body.lr.ph.i

for.end.fake_lm_check.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %lm_base3.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 4
  %lm_aspace4.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 5
  %lm_cycle5.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.064.i = phi ptr [ %72, %for.body.lr.ph.i ], [ %n.065.i, %for.inc30.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %pos.064.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %n.065.i = load ptr, ptr %pos.064.i, align 4
  %74 = ptrtoint ptr %lm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lm_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i = icmp eq i32 %75, 0
  br i1 %cmp.i, label %for.body.i.fake_lm_check.exit_crit_edge, label %if.end.i

for.body.i.fake_lm_check.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

if.end.i:                                         ; preds = %for.body.i
  %76 = ptrtoint ptr %lm_base3.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %lm_base3.i, align 8
  %78 = ptrtoint ptr %lm_aspace4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lm_aspace4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %aspace)
  %cmp6.i = icmp eq i32 %79, %aspace
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.for.inc30.i_crit_edge

if.end.i.for.inc30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %80 = ptrtoint ptr %lm_cycle5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lm_cycle5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %cycle)
  %cmp7.i = icmp eq i32 %81, %cycle
  br i1 %cmp7.i, label %for.cond9.preheader.i, label %land.lhs.true.i.for.inc30.i_crit_edge

land.lhs.true.i.for.inc30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i:                            ; preds = %land.lhs.true.i
  %monitors.i = getelementptr inbounds %struct.vme_lm_resource, ptr %pos.064.i, i32 0, i32 5
  %82 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %monitors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp1059.i = icmp sgt i32 %83, 0
  br i1 %cmp1059.i, label %for.cond9.preheader.i.for.body11.i_crit_edge, label %for.cond9.preheader.i.for.inc30.i_crit_edge

for.cond9.preheader.i.for.inc30.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %mul.i = shl i32 %i.060.i, 3
  %conv.i = sext i32 %mul.i to i64
  %add.i = add i64 %77, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp12.not.i = icmp ule i64 %add.i, %addr
  %add18.i = add i64 %add.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.i, i64 %addr)
  %cmp19.i = icmp ugt i64 %add18.i, %addr
  %or.cond.i = and i1 %cmp12.not.i, %cmp19.i
  br i1 %or.cond.i, label %if.then21.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body11.i
  %arrayidx.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 7, i32 %i.060.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %85, null
  br i1 %tobool22.not.i, label %if.then21.i.for.inc.i_crit_edge, label %if.then23.i

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 8, i32 %i.060.i
  %86 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx26.i, align 4
  tail call void %85(ptr noundef %87) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.then21.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %88 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %monitors.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %89
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc30.i_crit_edge

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %for.cond9.preheader.i.for.inc30.i_crit_edge, %land.lhs.true.i.for.inc30.i_crit_edge, %if.end.i.for.inc30.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.065.i, %lm_resources.i
  br i1 %cmp.i.not.i, label %for.inc30.i.fake_lm_check.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc30.i.fake_lm_check.exit_crit_edge:         ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

fake_lm_check.exit:                               ; preds = %for.inc30.i.fake_lm_check.exit_crit_edge, %for.body.i.fake_lm_check.exit_crit_edge, %for.end.fake_lm_check.exit_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fake_vmewrite16(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %buf, i64 noundef %addr, i32 noundef %aspace, i32 noundef %cycle) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add17 = add i64 %addr, 1
  %aspace1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %aspace1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aspace1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %aspace)
  %cmp2.not = icmp eq i32 %1, %aspace
  br i1 %cmp2.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %cycle5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %cycle5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cycle5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cycle)
  %cmp6.not = icmp eq i32 %3, %cycle
  br i1 %cmp6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %vme_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vme_base, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp16.not = icmp ugt i64 %5, %addr
  br i1 %cmp16.not, label %if.end8.for.inc_crit_edge, label %land.lhs.true

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end8
  %size = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add)
  %cmp18 = icmp ult i64 %add17, %add
  br i1 %cmp18, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true.7.if.then19_crit_edge, %land.lhs.true.6.if.then19_crit_edge, %land.lhs.true.5.if.then19_crit_edge, %land.lhs.true.4.if.then19_crit_edge, %land.lhs.true.3.if.then19_crit_edge, %land.lhs.true.2.if.then19_crit_edge, %land.lhs.true.1.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %i.047.lcssa = phi i32 [ 0, %land.lhs.true.if.then19_crit_edge ], [ 1, %land.lhs.true.1.if.then19_crit_edge ], [ 2, %land.lhs.true.2.if.then19_crit_edge ], [ 3, %land.lhs.true.3.if.then19_crit_edge ], [ 4, %land.lhs.true.4.if.then19_crit_edge ], [ 5, %land.lhs.true.5.if.then19_crit_edge ], [ 6, %land.lhs.true.6.if.then19_crit_edge ], [ 7, %land.lhs.true.7.if.then19_crit_edge ]
  %.lcssa = phi i64 [ %5, %land.lhs.true.if.then19_crit_edge ], [ %18, %land.lhs.true.1.if.then19_crit_edge ], [ %26, %land.lhs.true.2.if.then19_crit_edge ], [ %34, %land.lhs.true.3.if.then19_crit_edge ], [ %42, %land.lhs.true.4.if.then19_crit_edge ], [ %50, %land.lhs.true.5.if.then19_crit_edge ], [ %58, %land.lhs.true.6.if.then19_crit_edge ], [ %66, %land.lhs.true.7.if.then19_crit_edge ]
  %sub = sub i64 %addr, %.lcssa
  %buf_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 %i.047.lcssa, i32 3
  %8 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_base, align 8
  %idx.ext = trunc i64 %sub to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %buf, align 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr, align 2
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %aspace1.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %aspace1.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aspace1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %aspace)
  %cmp2.not.1 = icmp eq i32 %14, %aspace
  br i1 %cmp2.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %cycle5.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 5
  %15 = ptrtoint ptr %cycle5.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cycle5.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cycle)
  %cmp6.not.1 = icmp eq i32 %16, %cycle
  br i1 %cmp6.not.1, label %if.end8.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end8.1:                                        ; preds = %if.end.1
  %vme_base.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %vme_base.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vme_base.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %addr)
  %cmp16.not.1 = icmp ugt i64 %18, %addr
  br i1 %cmp16.not.1, label %if.end8.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end8.1.for.inc.1_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end8.1
  %size.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %size.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size.1, align 8
  %add.1 = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.1)
  %cmp18.1 = icmp ult i64 %add17, %add.1
  br i1 %cmp18.1, label %land.lhs.true.1.if.then19_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1.if.then19_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end8.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %aspace1.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 4
  %21 = ptrtoint ptr %aspace1.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aspace1.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %aspace)
  %cmp2.not.2 = icmp eq i32 %22, %aspace
  br i1 %cmp2.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %cycle5.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 5
  %23 = ptrtoint ptr %cycle5.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cycle5.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %cycle)
  %cmp6.not.2 = icmp eq i32 %24, %cycle
  br i1 %cmp6.not.2, label %if.end8.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end8.2:                                        ; preds = %if.end.2
  %vme_base.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 1
  %25 = ptrtoint ptr %vme_base.2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vme_base.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %addr)
  %cmp16.not.2 = icmp ugt i64 %26, %addr
  br i1 %cmp16.not.2, label %if.end8.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end8.2.for.inc.2_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end8.2
  %size.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 2
  %27 = ptrtoint ptr %size.2 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size.2, align 8
  %add.2 = add i64 %28, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.2)
  %cmp18.2 = icmp ult i64 %add17, %add.2
  br i1 %cmp18.2, label %land.lhs.true.2.if.then19_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2.if.then19_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end8.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %aspace1.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 4
  %29 = ptrtoint ptr %aspace1.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aspace1.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %aspace)
  %cmp2.not.3 = icmp eq i32 %30, %aspace
  br i1 %cmp2.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %cycle5.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 5
  %31 = ptrtoint ptr %cycle5.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cycle5.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %cycle)
  %cmp6.not.3 = icmp eq i32 %32, %cycle
  br i1 %cmp6.not.3, label %if.end8.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end8.3:                                        ; preds = %if.end.3
  %vme_base.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 1
  %33 = ptrtoint ptr %vme_base.3 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vme_base.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %addr)
  %cmp16.not.3 = icmp ugt i64 %34, %addr
  br i1 %cmp16.not.3, label %if.end8.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end8.3.for.inc.3_crit_edge:                    ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end8.3
  %size.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 2
  %35 = ptrtoint ptr %size.3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %size.3, align 8
  %add.3 = add i64 %36, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.3)
  %cmp18.3 = icmp ult i64 %add17, %add.3
  br i1 %cmp18.3, label %land.lhs.true.3.if.then19_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3.if.then19_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end8.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %aspace1.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 4
  %37 = ptrtoint ptr %aspace1.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aspace1.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %aspace)
  %cmp2.not.4 = icmp eq i32 %38, %aspace
  br i1 %cmp2.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %cycle5.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 5
  %39 = ptrtoint ptr %cycle5.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cycle5.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %cycle)
  %cmp6.not.4 = icmp eq i32 %40, %cycle
  br i1 %cmp6.not.4, label %if.end8.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end8.4:                                        ; preds = %if.end.4
  %vme_base.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 1
  %41 = ptrtoint ptr %vme_base.4 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %vme_base.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %addr)
  %cmp16.not.4 = icmp ugt i64 %42, %addr
  br i1 %cmp16.not.4, label %if.end8.4.for.inc.4_crit_edge, label %land.lhs.true.4

if.end8.4.for.inc.4_crit_edge:                    ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end8.4
  %size.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 2
  %43 = ptrtoint ptr %size.4 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size.4, align 8
  %add.4 = add i64 %44, %42
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.4)
  %cmp18.4 = icmp ult i64 %add17, %add.4
  br i1 %cmp18.4, label %land.lhs.true.4.if.then19_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4.if.then19_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.end8.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %aspace1.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 4
  %45 = ptrtoint ptr %aspace1.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %aspace1.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %aspace)
  %cmp2.not.5 = icmp eq i32 %46, %aspace
  br i1 %cmp2.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %cycle5.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 5
  %47 = ptrtoint ptr %cycle5.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cycle5.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %cycle)
  %cmp6.not.5 = icmp eq i32 %48, %cycle
  br i1 %cmp6.not.5, label %if.end8.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end8.5:                                        ; preds = %if.end.5
  %vme_base.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 1
  %49 = ptrtoint ptr %vme_base.5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vme_base.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %addr)
  %cmp16.not.5 = icmp ugt i64 %50, %addr
  br i1 %cmp16.not.5, label %if.end8.5.for.inc.5_crit_edge, label %land.lhs.true.5

if.end8.5.for.inc.5_crit_edge:                    ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end8.5
  %size.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 2
  %51 = ptrtoint ptr %size.5 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %size.5, align 8
  %add.5 = add i64 %52, %50
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.5)
  %cmp18.5 = icmp ult i64 %add17, %add.5
  br i1 %cmp18.5, label %land.lhs.true.5.if.then19_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5.if.then19_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.end8.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %aspace1.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 4
  %53 = ptrtoint ptr %aspace1.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aspace1.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %aspace)
  %cmp2.not.6 = icmp eq i32 %54, %aspace
  br i1 %cmp2.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %cycle5.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 5
  %55 = ptrtoint ptr %cycle5.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cycle5.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %cycle)
  %cmp6.not.6 = icmp eq i32 %56, %cycle
  br i1 %cmp6.not.6, label %if.end8.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end8.6:                                        ; preds = %if.end.6
  %vme_base.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 1
  %57 = ptrtoint ptr %vme_base.6 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vme_base.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %addr)
  %cmp16.not.6 = icmp ugt i64 %58, %addr
  br i1 %cmp16.not.6, label %if.end8.6.for.inc.6_crit_edge, label %land.lhs.true.6

if.end8.6.for.inc.6_crit_edge:                    ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end8.6
  %size.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 2
  %59 = ptrtoint ptr %size.6 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size.6, align 8
  %add.6 = add i64 %60, %58
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.6)
  %cmp18.6 = icmp ult i64 %add17, %add.6
  br i1 %cmp18.6, label %land.lhs.true.6.if.then19_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6.if.then19_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.end8.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %aspace1.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 4
  %61 = ptrtoint ptr %aspace1.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aspace1.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %aspace)
  %cmp2.not.7 = icmp eq i32 %62, %aspace
  br i1 %cmp2.not.7, label %if.end.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.7:                                         ; preds = %for.inc.6
  %cycle5.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 5
  %63 = ptrtoint ptr %cycle5.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cycle5.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %cycle)
  %cmp6.not.7 = icmp eq i32 %64, %cycle
  br i1 %cmp6.not.7, label %if.end8.7, label %if.end.7.for.end_crit_edge

if.end.7.for.end_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end8.7:                                        ; preds = %if.end.7
  %vme_base.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 1
  %65 = ptrtoint ptr %vme_base.7 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %vme_base.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %addr)
  %cmp16.not.7 = icmp ugt i64 %66, %addr
  br i1 %cmp16.not.7, label %if.end8.7.for.end_crit_edge, label %land.lhs.true.7

if.end8.7.for.end_crit_edge:                      ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7:                                  ; preds = %if.end8.7
  %size.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 2
  %67 = ptrtoint ptr %size.7 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %size.7, align 8
  %add.7 = add i64 %68, %66
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.7)
  %cmp18.7 = icmp ult i64 %add17, %add.7
  br i1 %cmp18.7, label %land.lhs.true.7.if.then19_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7.if.then19_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %if.end8.7.for.end_crit_edge, %if.end.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then19
  %69 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bridge, align 8
  %lm_resources.i = getelementptr inbounds %struct.vme_bridge, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %lm_resources.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lm_resources.i, align 4
  %lm_enabled.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 3
  %cmp.i.not63.i = icmp eq ptr %72, %lm_resources.i
  br i1 %cmp.i.not63.i, label %for.end.fake_lm_check.exit_crit_edge, label %for.body.lr.ph.i

for.end.fake_lm_check.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %lm_base3.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 4
  %lm_aspace4.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 5
  %lm_cycle5.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.064.i = phi ptr [ %72, %for.body.lr.ph.i ], [ %n.065.i, %for.inc30.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %pos.064.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %n.065.i = load ptr, ptr %pos.064.i, align 4
  %74 = ptrtoint ptr %lm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lm_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i = icmp eq i32 %75, 0
  br i1 %cmp.i, label %for.body.i.fake_lm_check.exit_crit_edge, label %if.end.i

for.body.i.fake_lm_check.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

if.end.i:                                         ; preds = %for.body.i
  %76 = ptrtoint ptr %lm_base3.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %lm_base3.i, align 8
  %78 = ptrtoint ptr %lm_aspace4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lm_aspace4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %aspace)
  %cmp6.i = icmp eq i32 %79, %aspace
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.for.inc30.i_crit_edge

if.end.i.for.inc30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %80 = ptrtoint ptr %lm_cycle5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lm_cycle5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %cycle)
  %cmp7.i = icmp eq i32 %81, %cycle
  br i1 %cmp7.i, label %for.cond9.preheader.i, label %land.lhs.true.i.for.inc30.i_crit_edge

land.lhs.true.i.for.inc30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i:                            ; preds = %land.lhs.true.i
  %monitors.i = getelementptr inbounds %struct.vme_lm_resource, ptr %pos.064.i, i32 0, i32 5
  %82 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %monitors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp1059.i = icmp sgt i32 %83, 0
  br i1 %cmp1059.i, label %for.cond9.preheader.i.for.body11.i_crit_edge, label %for.cond9.preheader.i.for.inc30.i_crit_edge

for.cond9.preheader.i.for.inc30.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %mul.i = shl i32 %i.060.i, 3
  %conv.i = sext i32 %mul.i to i64
  %add.i = add i64 %77, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp12.not.i = icmp ule i64 %add.i, %addr
  %add18.i = add i64 %add.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.i, i64 %addr)
  %cmp19.i = icmp ugt i64 %add18.i, %addr
  %or.cond.i = and i1 %cmp12.not.i, %cmp19.i
  br i1 %or.cond.i, label %if.then21.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body11.i
  %arrayidx.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 7, i32 %i.060.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %85, null
  br i1 %tobool22.not.i, label %if.then21.i.for.inc.i_crit_edge, label %if.then23.i

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 8, i32 %i.060.i
  %86 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx26.i, align 4
  tail call void %85(ptr noundef %87) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.then21.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %88 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %monitors.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %89
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc30.i_crit_edge

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %for.cond9.preheader.i.for.inc30.i_crit_edge, %land.lhs.true.i.for.inc30.i_crit_edge, %if.end.i.for.inc30.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.065.i, %lm_resources.i
  br i1 %cmp.i.not.i, label %for.inc30.i.fake_lm_check.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc30.i.fake_lm_check.exit_crit_edge:         ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

fake_lm_check.exit:                               ; preds = %for.inc30.i.fake_lm_check.exit_crit_edge, %for.body.i.fake_lm_check.exit_crit_edge, %for.end.fake_lm_check.exit_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fake_vmewrite32(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %buf, i64 noundef %addr, i32 noundef %aspace, i32 noundef %cycle) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add17 = add i64 %addr, 3
  %aspace1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %aspace1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aspace1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %aspace)
  %cmp2.not = icmp eq i32 %1, %aspace
  br i1 %cmp2.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %cycle5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %cycle5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cycle5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cycle)
  %cmp6.not = icmp eq i32 %3, %cycle
  br i1 %cmp6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %vme_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vme_base, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp16.not = icmp ugt i64 %5, %addr
  br i1 %cmp16.not, label %if.end8.for.inc_crit_edge, label %land.lhs.true

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end8
  %size = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add)
  %cmp18 = icmp ult i64 %add17, %add
  br i1 %cmp18, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true.7.if.then19_crit_edge, %land.lhs.true.6.if.then19_crit_edge, %land.lhs.true.5.if.then19_crit_edge, %land.lhs.true.4.if.then19_crit_edge, %land.lhs.true.3.if.then19_crit_edge, %land.lhs.true.2.if.then19_crit_edge, %land.lhs.true.1.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %i.047.lcssa = phi i32 [ 0, %land.lhs.true.if.then19_crit_edge ], [ 1, %land.lhs.true.1.if.then19_crit_edge ], [ 2, %land.lhs.true.2.if.then19_crit_edge ], [ 3, %land.lhs.true.3.if.then19_crit_edge ], [ 4, %land.lhs.true.4.if.then19_crit_edge ], [ 5, %land.lhs.true.5.if.then19_crit_edge ], [ 6, %land.lhs.true.6.if.then19_crit_edge ], [ 7, %land.lhs.true.7.if.then19_crit_edge ]
  %.lcssa = phi i64 [ %5, %land.lhs.true.if.then19_crit_edge ], [ %18, %land.lhs.true.1.if.then19_crit_edge ], [ %26, %land.lhs.true.2.if.then19_crit_edge ], [ %34, %land.lhs.true.3.if.then19_crit_edge ], [ %42, %land.lhs.true.4.if.then19_crit_edge ], [ %50, %land.lhs.true.5.if.then19_crit_edge ], [ %58, %land.lhs.true.6.if.then19_crit_edge ], [ %66, %land.lhs.true.7.if.then19_crit_edge ]
  %sub = sub i64 %addr, %.lcssa
  %buf_base = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 %i.047.lcssa, i32 3
  %8 = ptrtoint ptr %buf_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_base, align 8
  %idx.ext = trunc i64 %sub to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %aspace1.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %aspace1.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aspace1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %aspace)
  %cmp2.not.1 = icmp eq i32 %14, %aspace
  br i1 %cmp2.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %cycle5.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 5
  %15 = ptrtoint ptr %cycle5.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cycle5.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cycle)
  %cmp6.not.1 = icmp eq i32 %16, %cycle
  br i1 %cmp6.not.1, label %if.end8.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end8.1:                                        ; preds = %if.end.1
  %vme_base.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %vme_base.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vme_base.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %addr)
  %cmp16.not.1 = icmp ugt i64 %18, %addr
  br i1 %cmp16.not.1, label %if.end8.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end8.1.for.inc.1_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end8.1
  %size.1 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %size.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size.1, align 8
  %add.1 = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.1)
  %cmp18.1 = icmp ult i64 %add17, %add.1
  br i1 %cmp18.1, label %land.lhs.true.1.if.then19_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1.if.then19_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end8.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %aspace1.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 4
  %21 = ptrtoint ptr %aspace1.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aspace1.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %aspace)
  %cmp2.not.2 = icmp eq i32 %22, %aspace
  br i1 %cmp2.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %cycle5.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 5
  %23 = ptrtoint ptr %cycle5.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cycle5.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %cycle)
  %cmp6.not.2 = icmp eq i32 %24, %cycle
  br i1 %cmp6.not.2, label %if.end8.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end8.2:                                        ; preds = %if.end.2
  %vme_base.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 1
  %25 = ptrtoint ptr %vme_base.2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vme_base.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %addr)
  %cmp16.not.2 = icmp ugt i64 %26, %addr
  br i1 %cmp16.not.2, label %if.end8.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end8.2.for.inc.2_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end8.2
  %size.2 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 2, i32 2
  %27 = ptrtoint ptr %size.2 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size.2, align 8
  %add.2 = add i64 %28, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.2)
  %cmp18.2 = icmp ult i64 %add17, %add.2
  br i1 %cmp18.2, label %land.lhs.true.2.if.then19_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2.if.then19_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end8.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %aspace1.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 4
  %29 = ptrtoint ptr %aspace1.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aspace1.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %aspace)
  %cmp2.not.3 = icmp eq i32 %30, %aspace
  br i1 %cmp2.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %cycle5.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 5
  %31 = ptrtoint ptr %cycle5.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cycle5.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %cycle)
  %cmp6.not.3 = icmp eq i32 %32, %cycle
  br i1 %cmp6.not.3, label %if.end8.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end8.3:                                        ; preds = %if.end.3
  %vme_base.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 1
  %33 = ptrtoint ptr %vme_base.3 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vme_base.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %addr)
  %cmp16.not.3 = icmp ugt i64 %34, %addr
  br i1 %cmp16.not.3, label %if.end8.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end8.3.for.inc.3_crit_edge:                    ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end8.3
  %size.3 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 3, i32 2
  %35 = ptrtoint ptr %size.3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %size.3, align 8
  %add.3 = add i64 %36, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.3)
  %cmp18.3 = icmp ult i64 %add17, %add.3
  br i1 %cmp18.3, label %land.lhs.true.3.if.then19_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3.if.then19_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end8.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %aspace1.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 4
  %37 = ptrtoint ptr %aspace1.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aspace1.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %aspace)
  %cmp2.not.4 = icmp eq i32 %38, %aspace
  br i1 %cmp2.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %cycle5.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 5
  %39 = ptrtoint ptr %cycle5.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cycle5.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %cycle)
  %cmp6.not.4 = icmp eq i32 %40, %cycle
  br i1 %cmp6.not.4, label %if.end8.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end8.4:                                        ; preds = %if.end.4
  %vme_base.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 1
  %41 = ptrtoint ptr %vme_base.4 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %vme_base.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %addr)
  %cmp16.not.4 = icmp ugt i64 %42, %addr
  br i1 %cmp16.not.4, label %if.end8.4.for.inc.4_crit_edge, label %land.lhs.true.4

if.end8.4.for.inc.4_crit_edge:                    ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end8.4
  %size.4 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 4, i32 2
  %43 = ptrtoint ptr %size.4 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size.4, align 8
  %add.4 = add i64 %44, %42
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.4)
  %cmp18.4 = icmp ult i64 %add17, %add.4
  br i1 %cmp18.4, label %land.lhs.true.4.if.then19_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

land.lhs.true.4.if.then19_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.end8.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %aspace1.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 4
  %45 = ptrtoint ptr %aspace1.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %aspace1.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %aspace)
  %cmp2.not.5 = icmp eq i32 %46, %aspace
  br i1 %cmp2.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %cycle5.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 5
  %47 = ptrtoint ptr %cycle5.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cycle5.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %cycle)
  %cmp6.not.5 = icmp eq i32 %48, %cycle
  br i1 %cmp6.not.5, label %if.end8.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end8.5:                                        ; preds = %if.end.5
  %vme_base.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 1
  %49 = ptrtoint ptr %vme_base.5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vme_base.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %addr)
  %cmp16.not.5 = icmp ugt i64 %50, %addr
  br i1 %cmp16.not.5, label %if.end8.5.for.inc.5_crit_edge, label %land.lhs.true.5

if.end8.5.for.inc.5_crit_edge:                    ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end8.5
  %size.5 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 5, i32 2
  %51 = ptrtoint ptr %size.5 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %size.5, align 8
  %add.5 = add i64 %52, %50
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.5)
  %cmp18.5 = icmp ult i64 %add17, %add.5
  br i1 %cmp18.5, label %land.lhs.true.5.if.then19_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

land.lhs.true.5.if.then19_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.end8.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %aspace1.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 4
  %53 = ptrtoint ptr %aspace1.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aspace1.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %aspace)
  %cmp2.not.6 = icmp eq i32 %54, %aspace
  br i1 %cmp2.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %cycle5.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 5
  %55 = ptrtoint ptr %cycle5.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cycle5.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %cycle)
  %cmp6.not.6 = icmp eq i32 %56, %cycle
  br i1 %cmp6.not.6, label %if.end8.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end8.6:                                        ; preds = %if.end.6
  %vme_base.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 1
  %57 = ptrtoint ptr %vme_base.6 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vme_base.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %addr)
  %cmp16.not.6 = icmp ugt i64 %58, %addr
  br i1 %cmp16.not.6, label %if.end8.6.for.inc.6_crit_edge, label %land.lhs.true.6

if.end8.6.for.inc.6_crit_edge:                    ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end8.6
  %size.6 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 6, i32 2
  %59 = ptrtoint ptr %size.6 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size.6, align 8
  %add.6 = add i64 %60, %58
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.6)
  %cmp18.6 = icmp ult i64 %add17, %add.6
  br i1 %cmp18.6, label %land.lhs.true.6.if.then19_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

land.lhs.true.6.if.then19_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.end8.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %aspace1.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 4
  %61 = ptrtoint ptr %aspace1.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aspace1.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %aspace)
  %cmp2.not.7 = icmp eq i32 %62, %aspace
  br i1 %cmp2.not.7, label %if.end.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.7:                                         ; preds = %for.inc.6
  %cycle5.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 5
  %63 = ptrtoint ptr %cycle5.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cycle5.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %cycle)
  %cmp6.not.7 = icmp eq i32 %64, %cycle
  br i1 %cmp6.not.7, label %if.end8.7, label %if.end.7.for.end_crit_edge

if.end.7.for.end_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end8.7:                                        ; preds = %if.end.7
  %vme_base.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 1
  %65 = ptrtoint ptr %vme_base.7 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %vme_base.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %addr)
  %cmp16.not.7 = icmp ugt i64 %66, %addr
  br i1 %cmp16.not.7, label %if.end8.7.for.end_crit_edge, label %land.lhs.true.7

if.end8.7.for.end_crit_edge:                      ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7:                                  ; preds = %if.end8.7
  %size.7 = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 1, i32 7, i32 2
  %67 = ptrtoint ptr %size.7 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %size.7, align 8
  %add.7 = add i64 %68, %66
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %add.7)
  %cmp18.7 = icmp ult i64 %add17, %add.7
  br i1 %cmp18.7, label %land.lhs.true.7.if.then19_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.7.if.then19_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %if.end8.7.for.end_crit_edge, %if.end.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then19
  %69 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bridge, align 8
  %lm_resources.i = getelementptr inbounds %struct.vme_bridge, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %lm_resources.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lm_resources.i, align 4
  %lm_enabled.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 3
  %cmp.i.not63.i = icmp eq ptr %72, %lm_resources.i
  br i1 %cmp.i.not63.i, label %for.end.fake_lm_check.exit_crit_edge, label %for.body.lr.ph.i

for.end.fake_lm_check.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %lm_base3.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 4
  %lm_aspace4.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 5
  %lm_cycle5.i = getelementptr inbounds %struct.fake_driver, ptr %bridge, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.064.i = phi ptr [ %72, %for.body.lr.ph.i ], [ %n.065.i, %for.inc30.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %pos.064.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %n.065.i = load ptr, ptr %pos.064.i, align 4
  %74 = ptrtoint ptr %lm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lm_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i = icmp eq i32 %75, 0
  br i1 %cmp.i, label %for.body.i.fake_lm_check.exit_crit_edge, label %if.end.i

for.body.i.fake_lm_check.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

if.end.i:                                         ; preds = %for.body.i
  %76 = ptrtoint ptr %lm_base3.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %lm_base3.i, align 8
  %78 = ptrtoint ptr %lm_aspace4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lm_aspace4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %aspace)
  %cmp6.i = icmp eq i32 %79, %aspace
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.for.inc30.i_crit_edge

if.end.i.for.inc30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %80 = ptrtoint ptr %lm_cycle5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lm_cycle5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %cycle)
  %cmp7.i = icmp eq i32 %81, %cycle
  br i1 %cmp7.i, label %for.cond9.preheader.i, label %land.lhs.true.i.for.inc30.i_crit_edge

land.lhs.true.i.for.inc30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i:                            ; preds = %land.lhs.true.i
  %monitors.i = getelementptr inbounds %struct.vme_lm_resource, ptr %pos.064.i, i32 0, i32 5
  %82 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %monitors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp1059.i = icmp sgt i32 %83, 0
  br i1 %cmp1059.i, label %for.cond9.preheader.i.for.body11.i_crit_edge, label %for.cond9.preheader.i.for.inc30.i_crit_edge

for.cond9.preheader.i.for.inc30.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body11.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %mul.i = shl i32 %i.060.i, 3
  %conv.i = sext i32 %mul.i to i64
  %add.i = add i64 %77, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp12.not.i = icmp ule i64 %add.i, %addr
  %add18.i = add i64 %add.i, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.i, i64 %addr)
  %cmp19.i = icmp ugt i64 %add18.i, %addr
  %or.cond.i = and i1 %cmp12.not.i, %cmp19.i
  br i1 %or.cond.i, label %if.then21.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body11.i
  %arrayidx.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 7, i32 %i.060.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %85, null
  br i1 %tobool22.not.i, label %if.then21.i.for.inc.i_crit_edge, label %if.then23.i

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i = getelementptr %struct.fake_driver, ptr %bridge, i32 0, i32 8, i32 %i.060.i
  %86 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx26.i, align 4
  tail call void %85(ptr noundef %87) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.then21.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %88 = ptrtoint ptr %monitors.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %monitors.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %89
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc30.i_crit_edge

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %for.cond9.preheader.i.for.inc30.i_crit_edge, %land.lhs.true.i.for.inc30.i_crit_edge, %if.end.i.for.inc30.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.065.i, %lm_resources.i
  br i1 %cmp.i.not.i, label %for.inc30.i.fake_lm_check.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc30.i.fake_lm_check.exit_crit_edge:         ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fake_lm_check.exit

fake_lm_check.exit:                               ; preds = %for.inc30.i.fake_lm_check.exit_crit_edge, %for.body.i.fake_lm_check.exit_crit_edge, %for.end.fake_lm_check.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1256, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fake_exit.__UNIQUE_ID_ddebug187, !1, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_geoid188, !7, !"__UNIQUE_ID_geoid188", i1 false, i1 false}
!7 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1298, i32 1}
!8 = !{ptr @__param_geoid, !9, !"__param_geoid", i1 false, i1 false}
!9 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1299, i32 1}
!10 = !{ptr @__UNIQUE_ID_geoidtype189, !9, !"__UNIQUE_ID_geoidtype189", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description190, !12, !"__UNIQUE_ID_description190", i1 false, i1 false}
!12 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1301, i32 1}
!13 = !{ptr @__UNIQUE_ID_file191, !14, !"__UNIQUE_ID_file191", i1 false, i1 false}
!14 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1302, i32 1}
!15 = !{ptr @__UNIQUE_ID_license192, !14, !"__UNIQUE_ID_license192", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_vme_fake__193_1304_fake_init6, !17, !"__initcall__kmod_vme_fake__193_1304_fake_init6", i1 false, i1 false}
!17 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1304, i32 1}
!18 = !{ptr @__exitcall_fake_exit, !19, !"__exitcall_fake_exit", i1 false, i1 false}
!19 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1305, i32 1}
!20 = !{ptr @geoid, !21, !"geoid", i1 false, i1 false}
!21 = !{!"../drivers/vme/bridges/vme_fake.c", i32 82, i32 12}
!22 = !{ptr @exit_pointer, !23, !"exit_pointer", i1 false, i1 false}
!23 = !{!"../drivers/vme/bridges/vme_fake.c", i32 86, i32 27}
!24 = !{ptr @vme_root, !25, !"vme_root", i1 false, i1 false}
!25 = !{!"../drivers/vme/bridges/vme_fake.c", i32 88, i32 23}
!26 = !{ptr @__param_str_geoid, !9, !"__param_str_geoid", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1075, i32 36}
!29 = !{ptr @fake_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1099, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fake_init.__key.6, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1100, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fake_init.__key.8, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1115, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @fake_init.__key.10, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1141, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @fake_init.__key.12, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1163, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1186, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @fake_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @fake_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1189, i32 2}
!53 = !{ptr @fake_init._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @fake_init._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1193, i32 3}
!57 = !{ptr @fake_init._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @fake_init._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1199, i32 3}
!61 = !{ptr @fake_init._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @fake_init._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @driver_name, !64, !"driver_name", i1 false, i1 false}
!64 = !{!"../drivers/vme/bridges/vme_fake.c", i32 84, i32 19}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/vme/bridges/vme_fake.c", i32 187, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fake_slave_set._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @fake_slave_set._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/vme/bridges/vme_fake.c", i32 198, i32 3}
!72 = !{ptr @fake_slave_set._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @fake_slave_set._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/vme/bridges/vme_fake.c", i32 202, i32 3}
!76 = !{ptr @fake_slave_set._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @fake_slave_set._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/vme/bridges/vme_fake.c", i32 266, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @fake_master_set._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @fake_master_set._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/vme/bridges/vme_fake.c", i32 272, i32 3}
!85 = !{ptr @fake_master_set._entry.37, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @fake_master_set._entry_ptr.39, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/vme/bridges/vme_fake.c", i32 278, i32 3}
!89 = !{ptr @fake_master_set._entry.40, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @fake_master_set._entry_ptr.42, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/vme/bridges/vme_fake.c", i32 290, i32 3}
!93 = !{ptr @fake_master_set._entry.43, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @fake_master_set._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @fake_master_set._entry.46, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/vme/bridges/vme_fake.c", i32 308, i32 3}
!97 = !{ptr @fake_master_set._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/vme/bridges/vme_fake.c", i32 873, i32 4}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @fake_lm_set._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @fake_lm_set._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @fake_lm_set._entry.50, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/vme/bridges/vme_fake.c", i32 886, i32 3}
!105 = !{ptr @fake_lm_set._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/vme/bridges/vme_fake.c", i32 940, i32 3}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @fake_lm_attach._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @fake_lm_attach._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/vme/bridges/vme_fake.c", i32 947, i32 3}
!113 = !{ptr @fake_lm_attach._entry.54, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @fake_lm_attach._entry_ptr.56, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/vme/bridges/vme_fake.c", i32 1049, i32 2}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @fake_crcsr_init._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @fake_crcsr_init._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148305569, i64 2148305574, i64 2148305587, i64 2148305631, i64 2148305665, i64 2148305686}
