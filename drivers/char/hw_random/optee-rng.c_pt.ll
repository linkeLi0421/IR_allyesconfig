; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/optee-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/optee-rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tee_client_driver = type { ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tee_client_device_id = type { %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.optee_rng_private = type { ptr, ptr, i32, i32, ptr, %struct.hwrng }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tee_ioctl_invoke_arg = type { i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_ioctl_param = type { i64, i64, i64, i64 }
%struct.tee_param = type { i64, %union.anon.43 }
%union.anon.43 = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.tee_ioctl_open_session_arg = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_param_memref = type { i32, i32, ptr }

@optee_rng_driver = internal global { %struct.tee_client_driver, [48 x i8] } { %struct.tee_client_driver { ptr @optee_rng_id_table, %struct.device_driver { ptr @.str, ptr @tee_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @optee_rng_probe, ptr null, ptr @optee_rng_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_optee_rng__183_300_optee_rng_mod_init6 = internal global ptr @optee_rng_mod_init, section ".initcall6.init", align 4
@__exitcall_optee_rng_mod_exit = internal global ptr @optee_rng_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [48 x i8] c"optee_rng.file=drivers/char/hw_random/optee-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [25 x i8] c"optee_rng.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [52 x i8] c"optee_rng.author=Sumit Garg <sumit.garg@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [66 x i8] c"optee_rng.description=OP-TEE based random number generator driver\00", section ".modinfo", align 1
@optee_rng_id_table = internal constant { [2 x %struct.tee_client_device_id], [32 x i8] } { [2 x %struct.tee_client_device_id] [%struct.tee_client_device_id { %struct.uuid_t { [16 x i8] c"\ABza|\B8\E7M\8F\83\01\D0\9Ba\03kd" } }, %struct.tee_client_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"optee-rng\00", [22 x i8] zeroinitializer }, align 32
@tee_bus_type = external dso_local global %struct.bus_type, align 4
@pvt_data = internal global { %struct.optee_rng_private, [40 x i8] } { %struct.optee_rng_private { ptr null, ptr null, i32 0, i32 0, ptr null, %struct.hwrng { ptr @.str, ptr @optee_rng_init, ptr @optee_rng_cleanup, ptr null, ptr null, ptr @optee_rng_read, i32 0, i16 0, %struct.list_head zeroinitializer, %struct.kref zeroinitializer, %struct.completion zeroinitializer } }, [40 x i8] zeroinitializer }, align 32
@optee_rng_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tee_client_open_session failed, err: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"optee_rng_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/hw_random/optee-rng.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@optee_rng_probe._entry_ptr = internal global ptr @optee_rng_probe._entry, section ".printk_index", align 4
@optee_rng_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hwrng registration failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@optee_rng_probe._entry_ptr.8 = internal global ptr @optee_rng_probe._entry.6, section ".printk_index", align 4
@optee_rng_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tee_shm_alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"optee_rng_init\00", [17 x i8] zeroinitializer }, align 32
@optee_rng_init._entry_ptr = internal global ptr @optee_rng_init._entry, section ".printk_index", align 4
@get_optee_rng_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 99, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TA_CMD_GET_ENTROPY invoke err: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_optee_rng_data\00", [45 x i8] zeroinitializer }, align 32
@get_optee_rng_data._entry_ptr = internal global ptr @get_optee_rng_data._entry, section ".printk_index", align 4
@get_optee_rng_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tee_shm_get_va failed\0A\00", [41 x i8] zeroinitializer }, align 32
@get_optee_rng_data._entry_ptr.15 = internal global ptr @get_optee_rng_data._entry.13, section ".printk_index", align 4
@get_optee_rng_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TA_CMD_GET_RNG_INFO invoke err: %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_optee_rng_info\00", [45 x i8] zeroinitializer }, align 32
@get_optee_rng_info._entry_ptr = internal global ptr @get_optee_rng_info._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"optee_rng_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 280, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"optee_rng_id_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 272, i32 42 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 283, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"pvt_data\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 167, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 235, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 248, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 151, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 98, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 105, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [38 x i8] c"../drivers/char/hw_random/optee-rng.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 195, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_optee_rng_mod_exit, ptr @__initcall__kmod_optee_rng__183_300_optee_rng_mod_init6, ptr @get_optee_rng_data._entry, ptr @get_optee_rng_data._entry.13, ptr @get_optee_rng_data._entry_ptr, ptr @get_optee_rng_data._entry_ptr.15, ptr @get_optee_rng_info._entry, ptr @get_optee_rng_info._entry_ptr, ptr @optee_rng_init._entry, ptr @optee_rng_init._entry_ptr, ptr @optee_rng_mod_exit, ptr @optee_rng_probe._entry, ptr @optee_rng_probe._entry.6, ptr @optee_rng_probe._entry_ptr, ptr @optee_rng_probe._entry_ptr.8, ptr @optee_rng_driver, ptr @optee_rng_id_table, ptr @.str, ptr @pvt_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_rng_driver to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_rng_id_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_rng_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_rng_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_rng_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_optee_rng_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_optee_rng_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_optee_rng_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @optee_rng_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @optee_rng_driver, i32 0, i32 1)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_rng_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @optee_rng_driver, i32 0, i32 1)) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_rng_probe(ptr noundef %dev) #2 align 64 {
entry:
  %inv_arg.i = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param.i = alloca [4 x %struct.tee_param], align 8
  %sess_arg = alloca %struct.tee_ioctl_open_session_arg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sess_arg) #7
  %0 = getelementptr inbounds i8, ptr %sess_arg, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %call = tail call ptr @tee_client_open_context(ptr noundef null, ptr noundef nonnull @optee_ctx_match, ptr noundef null, ptr noundef null) #7
  store ptr %call, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 1), align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %2 = call ptr @memcpy(ptr %sess_arg, ptr %add.ptr, i32 16)
  %clnt_login = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 2
  %3 = ptrtoint ptr %clnt_login to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %clnt_login, align 8
  %num_params = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 7
  %4 = ptrtoint ptr %num_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_params, align 4
  %call3 = call i32 @tee_client_open_session(ptr noundef %call, ptr noundef nonnull %sess_arg, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %ret4 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %5 = ptrtoint ptr %ret4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ret4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %if.end8, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret7 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %7 = ptrtoint ptr %ret7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %8) #10
  br label %out_ctx

if.end8:                                          ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 4
  %9 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session, align 8
  store i32 %10, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg.i) #7
  %11 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param.i) #7
  %14 = getelementptr inbounds i8, ptr %inv_arg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 16)
  %16 = getelementptr inbounds i8, ptr %param.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 120)
  %18 = ptrtoint ptr %inv_arg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %inv_arg.i, align 8
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %10, ptr %11, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %13, align 4
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 2, ptr %param.i, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 1), align 4
  %call.i = call i32 @tee_client_invoke_func(ptr noundef %22, ptr noundef nonnull %inv_arg.i, ptr noundef nonnull %param.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i31 = icmp slt i32 %call.i, 0
  br i1 %cmp.i31, label %if.end8.get_optee_rng_info.exit_crit_edge, label %lor.lhs.false.i

if.end8.get_optee_rng_info.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_optee_rng_info.exit

lor.lhs.false.i:                                  ; preds = %if.end8
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2.not.i = icmp eq i32 %24, 0
  br i1 %cmp2.not.i, label %if.end11, label %lor.lhs.false.i.get_optee_rng_info.exit_crit_edge

lor.lhs.false.i.get_optee_rng_info.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_optee_rng_info.exit

get_optee_rng_info.exit:                          ; preds = %lor.lhs.false.i.get_optee_rng_info.exit_crit_edge, %if.end8.get_optee_rng_info.exit_crit_edge
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %26) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i) #7
  br label %out_sess

if.end11:                                         ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %16, align 8
  %conv.i = trunc i64 %28 to i32
  store i32 %conv.i, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 3), align 4
  %b.i = getelementptr inbounds %struct.tee_param, ptr %param.i, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %b.i, align 8
  %conv7.i = trunc i64 %30 to i16
  store i16 %conv7.i, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 5, i32 7), align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i) #7
  %call12 = call i32 @devm_hwrng_register(ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 5)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call12) #10
  br label %out_sess

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %dev, ptr @pvt_data, align 4
  br label %cleanup

out_sess:                                         ; preds = %do.end17, %get_optee_rng_info.exit
  %err.0 = phi i32 [ -22, %get_optee_rng_info.exit ], [ %call12, %do.end17 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 1), align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 2), align 4
  %call19 = call i32 @tee_client_close_session(ptr noundef %31, i32 noundef %32) #7
  br label %out_ctx

out_ctx:                                          ; preds = %out_sess, %do.end
  %err.1 = phi i32 [ -22, %do.end ], [ %err.0, %out_sess ]
  %33 = load ptr, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 1), align 4
  call void @tee_client_close_context(ptr noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %out_ctx, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_ctx ], [ 0, %if.end18 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sess_arg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_rng_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 1), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 2), align 4
  %call = tail call i32 @tee_client_close_session(ptr noundef %0, i32 noundef %1) #7
  %2 = load ptr, ptr getelementptr inbounds (%struct.optee_rng_private, ptr @pvt_data, i32 0, i32 1), align 4
  tail call void @tee_client_close_context(ptr noundef %2) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_client_open_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @optee_ctx_match(ptr nocapture noundef readonly %ver, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_open_session(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_close_session(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_client_close_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_rng_init(ptr nocapture noundef %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr i8, ptr %rng, i32 -16
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_shm_alloc(ptr noundef %1, i32 noundef 4096, i32 noundef 3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %rng, i32 -20
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %entropy_shm_pool3 = getelementptr i8, ptr %rng, i32 -4
  %5 = ptrtoint ptr %entropy_shm_pool3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %entropy_shm_pool3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_rng_cleanup(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %entropy_shm_pool = getelementptr i8, ptr %rng, i32 -4
  %0 = ptrtoint ptr %entropy_shm_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entropy_shm_pool, align 4
  tail call void @tee_shm_free(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_rng_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %buf, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  %inv_arg.i = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param.i = alloca [4 x %struct.tee_param], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rng, i32 -20
  %0 = tail call i32 @llvm.umin.i32(i32 %max, i32 4096)
  %data_rate = getelementptr i8, ptr %rng, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp131.not = icmp eq i32 %0, 0
  br i1 %cmp131.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %1 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i, i32 0, i32 5
  %4 = getelementptr inbounds i8, ptr %inv_arg.i, i32 8
  %5 = getelementptr inbounds i8, ptr %param.i, i32 16
  %session_id.i = getelementptr i8, ptr %rng, i32 -12
  %entropy_shm_pool.i = getelementptr i8, ptr %rng, i32 -4
  %u.i = getelementptr inbounds %struct.tee_param, ptr %param.i, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.tee_param_memref, ptr %u.i, i32 0, i32 1
  %ctx.i = getelementptr i8, ptr %rng, i32 -16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg.i) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param.i) #7
  %6 = call ptr @memset(ptr %4, i32 0, i32 16)
  %7 = call ptr @memset(ptr %5, i32 0, i32 112)
  %8 = ptrtoint ptr %inv_arg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %inv_arg.i, align 8
  %9 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session_id.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %3, align 4
  %13 = ptrtoint ptr %param.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 7, ptr %param.i, align 8
  %14 = ptrtoint ptr %entropy_shm_pool.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entropy_shm_pool.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %5, align 8
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %size.i, align 4
  %18 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %u.i, align 8
  %19 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx.i, align 4
  %call.i = call i32 @tee_client_invoke_func(ptr noundef %20, ptr noundef nonnull %inv_arg.i, ptr noundef nonnull %param.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.body.lr.ph.do.end.i_crit_edge, label %lor.lhs.false.i

while.body.lr.ph.do.end.i_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %while.body.lr.ph
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i = icmp eq i32 %22, 0
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %while.body.lr.ph.do.end.i_crit_edge
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %26) #10
  br label %get_optee_rng_data.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %entropy_shm_pool.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entropy_shm_pool.i, align 4
  %call10.i = call ptr @tee_shm_get_va(ptr noundef %28, i32 noundef 0) #7
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end15.i, label %if.end17.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14) #10
  br label %get_optee_rng_data.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 4
  %33 = call ptr @memcpy(ptr %buf, ptr %call10.i, i32 %32)
  br label %get_optee_rng_data.exit

get_optee_rng_data.exit:                          ; preds = %if.end17.i, %do.end15.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %do.end15.i ], [ %32, %if.end17.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i) #7
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %retval.0.i
  br i1 %wait, label %land.lhs.true, label %get_optee_rng_data.exit.cleanup_crit_edge

get_optee_rng_data.exit.cleanup_crit_edge:        ; preds = %get_optee_rng_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %get_optee_rng_data.exit
  %34 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not = icmp eq i32 %35, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %retval.0.i)
  %cmp6 = icmp eq i32 %0, %retval.0.i
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true
  %sub9 = sub i32 %0, %retval.0.i
  %mul = mul i32 %sub9, 1000
  %div = udiv i32 %mul, %35
  call void @msleep(i32 noundef %div) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %retval.0.i)
  %cmp1 = icmp ugt i32 %0, %retval.0.i
  br i1 %cmp1, label %while.body.1, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.1:                                     ; preds = %if.end8
  %sub.1 = sub i32 %0, %retval.0.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg.i) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param.i) #7
  %36 = call ptr @memset(ptr %4, i32 0, i32 16)
  %37 = call ptr @memset(ptr %5, i32 0, i32 112)
  %38 = ptrtoint ptr %inv_arg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %inv_arg.i, align 8
  %39 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %session_id.i, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %1, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %3, align 4
  %43 = ptrtoint ptr %param.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 7, ptr %param.i, align 8
  %44 = ptrtoint ptr %entropy_shm_pool.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entropy_shm_pool.i, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %5, align 8
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.1, ptr %size.i, align 4
  %48 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %u.i, align 8
  %49 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx.i, align 4
  %call.i.1 = call i32 @tee_client_invoke_func(ptr noundef %50, ptr noundef nonnull %inv_arg.i, ptr noundef nonnull %param.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %while.body.1.do.end.i.1_crit_edge, label %lor.lhs.false.i.1

while.body.1.do.end.i.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.1

lor.lhs.false.i.1:                                ; preds = %while.body.1
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp7.not.i.1 = icmp eq i32 %52, 0
  br i1 %cmp7.not.i.1, label %if.end.i.1, label %lor.lhs.false.i.1.do.end.i.1_crit_edge

lor.lhs.false.i.1.do.end.i.1_crit_edge:           ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.1

if.end.i.1:                                       ; preds = %lor.lhs.false.i.1
  %53 = ptrtoint ptr %entropy_shm_pool.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %entropy_shm_pool.i, align 4
  %call10.i.1 = call ptr @tee_shm_get_va(ptr noundef %54, i32 noundef 0) #7
  %cmp.i.i.1 = icmp ugt ptr %call10.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1, label %do.end15.i.1, label %if.end17.i.1

if.end17.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i, align 4
  %57 = call ptr @memcpy(ptr %add.ptr2, ptr %call10.i.1, i32 %56)
  br label %get_optee_rng_data.exit.1

do.end15.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.14) #10
  br label %get_optee_rng_data.exit.1

do.end.i.1:                                       ; preds = %lor.lhs.false.i.1.do.end.i.1_crit_edge, %while.body.1.do.end.i.1_crit_edge
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 4
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.11, i32 noundef %63) #10
  br label %get_optee_rng_data.exit.1

get_optee_rng_data.exit.1:                        ; preds = %do.end.i.1, %do.end15.i.1, %if.end17.i.1
  %retval.0.i.1 = phi i32 [ 0, %do.end.i.1 ], [ 0, %do.end15.i.1 ], [ %56, %if.end17.i.1 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i) #7
  %add.1 = add i32 %retval.0.i.1, %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %get_optee_rng_data.exit.1, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %get_optee_rng_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %if.end8.cleanup_crit_edge ], [ %retval.0.i, %get_optee_rng_data.exit.cleanup_crit_edge ], [ %retval.0.i, %land.lhs.true.cleanup_crit_edge ], [ %add.1, %get_optee_rng_data.exit.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_invoke_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_get_va(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_optee_rng__183_300_optee_rng_mod_init6, !1, !"__initcall__kmod_optee_rng__183_300_optee_rng_mod_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/optee-rng.c", i32 300, i32 1}
!2 = !{ptr @__exitcall_optee_rng_mod_exit, !3, !"__exitcall_optee_rng_mod_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/hw_random/optee-rng.c", i32 301, i32 1}
!4 = !{ptr @__UNIQUE_ID_file184, !5, !"__UNIQUE_ID_file184", i1 false, i1 false}
!5 = !{!"../drivers/char/hw_random/optee-rng.c", i32 303, i32 1}
!6 = !{ptr @__UNIQUE_ID_license185, !5, !"__UNIQUE_ID_license185", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author186, !8, !"__UNIQUE_ID_author186", i1 false, i1 false}
!8 = !{!"../drivers/char/hw_random/optee-rng.c", i32 304, i32 1}
!9 = !{ptr @__UNIQUE_ID_description187, !10, !"__UNIQUE_ID_description187", i1 false, i1 false}
!10 = !{!"../drivers/char/hw_random/optee-rng.c", i32 305, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/char/hw_random/optee-rng.c", i32 283, i32 12}
!13 = !{ptr @optee_rng_driver, !14, !"optee_rng_driver", i1 false, i1 false}
!14 = !{!"../drivers/char/hw_random/optee-rng.c", i32 280, i32 33}
!15 = !{ptr @optee_rng_id_table, !16, !"optee_rng_id_table", i1 false, i1 false}
!16 = !{!"../drivers/char/hw_random/optee-rng.c", i32 272, i32 42}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/char/hw_random/optee-rng.c", i32 235, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @optee_rng_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @optee_rng_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/char/hw_random/optee-rng.c", i32 248, i32 3}
!27 = !{ptr @optee_rng_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @optee_rng_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @pvt_data, !30, !"pvt_data", i1 false, i1 false}
!30 = !{!"../drivers/char/hw_random/optee-rng.c", i32 167, i32 33}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/hw_random/optee-rng.c", i32 151, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @optee_rng_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @optee_rng_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/hw_random/optee-rng.c", i32 98, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @get_optee_rng_data._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @get_optee_rng_data._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/hw_random/optee-rng.c", i32 105, i32 3}
!43 = !{ptr @get_optee_rng_data._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @get_optee_rng_data._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/hw_random/optee-rng.c", i32 195, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @get_optee_rng_info._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @get_optee_rng_info._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
