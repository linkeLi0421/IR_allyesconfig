; ModuleID = '/llk/IR_all_yes/fs/pstore/ram.c_pt.bc'
source_filename = "../fs/pstore/ram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ramoops_context = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.persistent_ram_ecc_info, i32, i32, i32, i32, i32, i32, i32, %struct.pstore_info }
%struct.persistent_ram_ecc_info = type { i32, i32, i32, i32, ptr }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.ramoops_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.persistent_ram_ecc_info }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.persistent_ram_zone = type { i32, i32, ptr, ptr, i32, i32, %struct.raw_spinlock, ptr, i32, ptr, ptr, ptr, i32, i32, %struct.persistent_ram_ecc_info, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_record_size = internal constant [20 x i8] c"ramoops.record_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@record_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_record_size = internal constant %struct.kernel_param { ptr @__param_str_record_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @record_size } }, section "__param", align 4
@__UNIQUE_ID_record_sizetype183 = internal constant [35 x i8] c"ramoops.parmtype=record_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_record_size184 = internal constant [62 x i8] c"ramoops.parm=record_size:size of each dump done on oops/panic\00", section ".modinfo", align 1
@__param_str_console_size = internal constant [21 x i8] c"ramoops.console_size\00", align 1
@ramoops_console_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_console_size = internal constant %struct.kernel_param { ptr @__param_str_console_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @ramoops_console_size } }, section "__param", align 4
@__UNIQUE_ID_console_sizetype185 = internal constant [36 x i8] c"ramoops.parmtype=console_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_console_size186 = internal constant [53 x i8] c"ramoops.parm=console_size:size of kernel console log\00", section ".modinfo", align 1
@__param_str_ftrace_size = internal constant [20 x i8] c"ramoops.ftrace_size\00", align 1
@ramoops_ftrace_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_ftrace_size = internal constant %struct.kernel_param { ptr @__param_str_ftrace_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @ramoops_ftrace_size } }, section "__param", align 4
@__UNIQUE_ID_ftrace_sizetype187 = internal constant [35 x i8] c"ramoops.parmtype=ftrace_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_ftrace_size188 = internal constant [44 x i8] c"ramoops.parm=ftrace_size:size of ftrace log\00", section ".modinfo", align 1
@__param_str_pmsg_size = internal constant [18 x i8] c"ramoops.pmsg_size\00", align 1
@ramoops_pmsg_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_pmsg_size = internal constant %struct.kernel_param { ptr @__param_str_pmsg_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @ramoops_pmsg_size } }, section "__param", align 4
@__UNIQUE_ID_pmsg_sizetype189 = internal constant [33 x i8] c"ramoops.parmtype=pmsg_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_pmsg_size190 = internal constant [54 x i8] c"ramoops.parm=pmsg_size:size of user space message log\00", section ".modinfo", align 1
@__param_str_mem_address = internal constant [20 x i8] c"ramoops.mem_address\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@mem_address = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__param_mem_address = internal constant %struct.kernel_param { ptr @__param_str_mem_address, ptr null, ptr @param_ops_ullong, i16 256, i8 -1, i8 2, %union.anon.41 { ptr @mem_address } }, section "__param", align 4
@__UNIQUE_ID_mem_addresstype191 = internal constant [36 x i8] c"ramoops.parmtype=mem_address:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_address192 = internal constant [77 x i8] c"ramoops.parm=mem_address:start of reserved RAM used to store oops/panic logs\00", section ".modinfo", align 1
@__param_str_mem_size = internal constant [17 x i8] c"ramoops.mem_size\00", align 1
@mem_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mem_size = internal constant %struct.kernel_param { ptr @__param_str_mem_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @mem_size } }, section "__param", align 4
@__UNIQUE_ID_mem_sizetype193 = internal constant [32 x i8] c"ramoops.parmtype=mem_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_size194 = internal constant [73 x i8] c"ramoops.parm=mem_size:size of reserved RAM used to store oops/panic logs\00", section ".modinfo", align 1
@__param_str_mem_type = internal constant [17 x i8] c"ramoops.mem_type\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mem_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mem_type = internal constant %struct.kernel_param { ptr @__param_str_mem_type, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @mem_type } }, section "__param", align 4
@__UNIQUE_ID_mem_typetype195 = internal constant [31 x i8] c"ramoops.parmtype=mem_type:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_type196 = internal constant [86 x i8] c"ramoops.parm=mem_type:memory type: 0=write-combined (default), 1=unbuffered, 2=cached\00", section ".modinfo", align 1
@__param_str_max_reason = internal constant [19 x i8] c"ramoops.max_reason\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ramoops_max_reason = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_max_reason = internal constant %struct.kernel_param { ptr @__param_str_max_reason, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @ramoops_max_reason } }, section "__param", align 4
@__UNIQUE_ID_max_reasontype197 = internal constant [32 x i8] c"ramoops.parmtype=max_reason:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_reason198 = internal constant [82 x i8] c"ramoops.parm=max_reason:maximum reason for kmsg dump (default 2: Oops and Panic) \00", section ".modinfo", align 1
@__param_str_ecc = internal constant [12 x i8] c"ramoops.ecc\00", align 1
@ramoops_ecc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ecc = internal constant %struct.kernel_param { ptr @__param_str_ecc, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @ramoops_ecc } }, section "__param", align 4
@__UNIQUE_ID_ecctype199 = internal constant [25 x i8] c"ramoops.parmtype=ecc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ramoops_ecc200 = internal constant [151 x i8] c"ramoops.parm=ramoops_ecc:if non-zero, the option enables ECC support and specifies ECC buffer size in bytes (1 is a special value, means 16 bytes ECC)\00", section ".modinfo", align 1
@__param_str_dump_oops = internal constant [18 x i8] c"ramoops.dump_oops\00", align 1
@ramoops_dump_oops = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_dump_oops = internal constant %struct.kernel_param { ptr @__param_str_dump_oops, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @ramoops_dump_oops } }, section "__param", align 4
@__UNIQUE_ID_dump_oopstype201 = internal constant [31 x i8] c"ramoops.parmtype=dump_oops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_oops202 = internal constant [116 x i8] c"ramoops.parm=dump_oops:(deprecated: use max_reason instead) set to 1 to dump oopses & panics, 0 to only dump panics\00", section ".modinfo", align 1
@__initcall__kmod_ramoops__204_966_ramoops_init2 = internal global ptr @ramoops_init, section ".initcall2.init", align 4
@ramoops_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ramoops_probe, ptr @ramoops_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ramoops_exit = internal global ptr @ramoops_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file205 = internal constant [31 x i8] c"ramoops.file=fs/pstore/ramoops\00", section ".modinfo", align 1
@__UNIQUE_ID_license206 = internal constant [20 x i8] c"ramoops.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author207 = internal constant [59 x i8] c"ramoops.author=Marco Stornelli <marco.stornelli@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [49 x i8] c"ramoops.description=RAM Oops/Panic logger/driver\00", section ".modinfo", align 1
@ramoops_register_dummy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016ramoops: using module parameters\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ramoops_register_dummy\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/pstore/ram.c\00", [16 x i8] zeroinitializer }, align 32
@ramoops_register_dummy._entry_ptr = internal global ptr @ramoops_register_dummy._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ramoops\00", [24 x i8] zeroinitializer }, align 32
@dummy = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ramoops_register_dummy._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ramoops: could not create platform device: %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@ramoops_register_dummy._entry_ptr.6 = internal global ptr @ramoops_register_dummy._entry.4, section ".printk_index", align 4
@dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ramoops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@oops_cxt = internal global { %struct.ramoops_context, [88 x i8] } { %struct.ramoops_context { ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.persistent_ram_ecc_info zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pstore_info { ptr null, ptr @.str.3, %struct.semaphore zeroinitializer, ptr null, i32 0, %struct.mutex zeroinitializer, i32 0, i32 0, ptr null, ptr @ramoops_pstore_open, ptr null, ptr @ramoops_pstore_read, ptr @ramoops_pstore_write, ptr @ramoops_pstore_write_user, ptr @ramoops_pstore_erase } }, [88 x i8] zeroinitializer }, align 32
@ramoops_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ramoops: already initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ramoops_probe\00", [18 x i8] zeroinitializer }, align 32
@ramoops_probe._entry_ptr = internal global ptr @ramoops_probe._entry, section ".printk_index", align 4
@ramoops_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ramoops: NULL platform data\0A\00", [33 x i8] zeroinitializer }, align 32
@ramoops_probe._entry_ptr.11 = internal global ptr @ramoops_probe._entry.9, section ".printk_index", align 4
@ramoops_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013ramoops: The memory size and the record/console size must be non-zero\0A\00", [55 x i8] zeroinitializer }, align 32
@ramoops_probe._entry_ptr.14 = internal global ptr @ramoops_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmesg\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ftrace\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmsg\00", [27 x i8] zeroinitializer }, align 32
@ramoops_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ramoops: cannot allocate pstore crash dump buffer\0A\00", [43 x i8] zeroinitializer }, align 32
@ramoops_probe._entry_ptr.21 = internal global ptr @ramoops_probe._entry.19, section ".printk_index", align 4
@ramoops_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.2, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ramoops: registering with pstore failed\0A\00", [53 x i8] zeroinitializer }, align 32
@ramoops_probe._entry_ptr.24 = internal global ptr @ramoops_probe._entry.22, section ".printk_index", align 4
@ramoops_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ramoops: using 0x%lx@0x%llx, ecc: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ramoops_probe._entry_ptr.27 = internal global ptr @ramoops_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"====%lld.%lu-%c\0A%n\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"====%lld.%lu\0A%n\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ramoops_pstore_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ramoops_pstore_write = private unnamed_addr constant [21 x i8] c"ramoops_pstore_write\00", align 1
@ramoops_pstore_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.ramoops_pstore_write, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014ramoops: PMSG shouldn't call %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ramoops_pstore_write._entry_ptr = internal global ptr @ramoops_pstore_write._entry, section ".printk_index", align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"====%lld.%06lu-%c\0A\00", [45 x i8] zeroinitializer }, align 32
@ramoops_parse_dt.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ramoops_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using Device Tree\0A\00", [45 x i8] zeroinitializer }, align 32
@ramoops_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 645, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to locate DT /reserved-memory resource\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ramoops_parse_dt._entry_ptr = internal global ptr @ramoops_parse_dt._entry, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unbuffered\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no-dump-oops\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mem-type\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"record-size\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"console-size\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ftrace-size\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pmsg-size\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecc-size\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max-reason\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reserved-memory\00", [16 x i8] zeroinitializer }, align 32
@ramoops_parse_dt_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 617, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to parse property %s: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ramoops_parse_dt_u32\00", [43 x i8] zeroinitializer }, align 32
@ramoops_parse_dt_u32._entry_ptr = internal global ptr @ramoops_parse_dt_u32._entry, section ".printk_index", align 4
@ramoops_parse_dt_u32._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 623, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s %u > INT_MAX\0A\00", [47 x i8] zeroinitializer }, align 32
@ramoops_parse_dt_u32._entry_ptr.53 = internal global ptr @ramoops_parse_dt_u32._entry.51, section ".printk_index", align 4
@ramoops_init_przs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 501, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s record size == 0 (%zu / %u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ramoops_init_przs\00", [46 x i8] zeroinitializer }, align 32
@ramoops_init_przs._entry_ptr = internal global ptr @ramoops_init_przs._entry, section ".printk_index", align 4
@ramoops_init_przs._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 508, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s record count == 0 (%zu / %zu)\0A\00", [62 x i8] zeroinitializer }, align 32
@ramoops_init_przs._entry_ptr.58 = internal global ptr @ramoops_init_przs._entry.56, section ".printk_index", align 4
@ramoops_init_przs._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 517, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\0A\00", [36 x i8] zeroinitializer }, align 32
@ramoops_init_przs._entry_ptr.61 = internal global ptr @ramoops_init_przs._entry.59, section ".printk_index", align 4
@ramoops_init_przs._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 523, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s zone size == 0\0A\00", [45 x i8] zeroinitializer }, align 32
@ramoops_init_przs._entry_ptr.64 = internal global ptr @ramoops_init_przs._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ramoops:%s\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ramoops:%s(%d/%d)\00", [46 x i8] zeroinitializer }, align 32
@ramoops_init_przs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.55, ptr @.str.2, i32 547, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to request %s mem region (0x%zx@0x%llx): %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ramoops_init_przs._entry_ptr.69 = internal global ptr @ramoops_init_przs._entry.67, section ".printk_index", align 4
@ramoops_init_prz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.70, ptr @.str.2, i32 581, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ramoops_init_prz\00", [47 x i8] zeroinitializer }, align 32
@ramoops_init_prz._entry_ptr = internal global ptr @ramoops_init_prz._entry, section ".printk_index", align 4
@ramoops_init_prz._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.70, ptr @.str.2, i32 593, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@ramoops_init_prz._entry_ptr.72 = internal global ptr @ramoops_init_prz._entry.71, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 7]
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"record_size\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 29, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"ramoops_console_size\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 34, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"ramoops_ftrace_size\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 38, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"ramoops_pmsg_size\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 42, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"mem_address\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 46, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"mem_size\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 51, i32 14 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"mem_type\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 56, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"ramoops_max_reason\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 61, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"ramoops_ecc\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 66, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"ramoops_dump_oops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 73, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"ramoops_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 891, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 918, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 946, i32 46 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 103, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 949, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [9 x i8] c"dt_match\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 886, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"oops_cxt\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 438, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 722, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 737, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 743, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 771, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 777, i32 25 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 785, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 793, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 826, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 834, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 850, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 149, i32 21 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 157, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 335, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 298, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 640, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 644, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 655, i32 51 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 660, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 673, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 674, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 675, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 676, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 677, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 678, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 679, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 680, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 696, i32 36 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 616, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 623, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 500, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 507, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 514, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 523, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 535, i32 34 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 537, i32 34 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 545, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 579, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private constant [19 x i8] c"../fs/pstore/ram.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 592, i32 3 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_console_size186, ptr @__UNIQUE_ID_console_sizetype185, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_dump_oops202, ptr @__UNIQUE_ID_dump_oopstype201, ptr @__UNIQUE_ID_ecctype199, ptr @__UNIQUE_ID_file205, ptr @__UNIQUE_ID_ftrace_size188, ptr @__UNIQUE_ID_ftrace_sizetype187, ptr @__UNIQUE_ID_license206, ptr @__UNIQUE_ID_max_reason198, ptr @__UNIQUE_ID_max_reasontype197, ptr @__UNIQUE_ID_mem_address192, ptr @__UNIQUE_ID_mem_addresstype191, ptr @__UNIQUE_ID_mem_size194, ptr @__UNIQUE_ID_mem_sizetype193, ptr @__UNIQUE_ID_mem_type196, ptr @__UNIQUE_ID_mem_typetype195, ptr @__UNIQUE_ID_pmsg_size190, ptr @__UNIQUE_ID_pmsg_sizetype189, ptr @__UNIQUE_ID_ramoops_ecc200, ptr @__UNIQUE_ID_record_size184, ptr @__UNIQUE_ID_record_sizetype183, ptr @__exitcall_ramoops_exit, ptr @__initcall__kmod_ramoops__204_966_ramoops_init2, ptr @__param_console_size, ptr @__param_dump_oops, ptr @__param_ecc, ptr @__param_ftrace_size, ptr @__param_max_reason, ptr @__param_mem_address, ptr @__param_mem_size, ptr @__param_mem_type, ptr @__param_pmsg_size, ptr @__param_record_size, ptr @ramoops_exit, ptr @ramoops_init_prz._entry, ptr @ramoops_init_prz._entry.71, ptr @ramoops_init_prz._entry_ptr, ptr @ramoops_init_prz._entry_ptr.72, ptr @ramoops_init_przs._entry, ptr @ramoops_init_przs._entry.56, ptr @ramoops_init_przs._entry.59, ptr @ramoops_init_przs._entry.62, ptr @ramoops_init_przs._entry.67, ptr @ramoops_init_przs._entry_ptr, ptr @ramoops_init_przs._entry_ptr.58, ptr @ramoops_init_przs._entry_ptr.61, ptr @ramoops_init_przs._entry_ptr.64, ptr @ramoops_init_przs._entry_ptr.69, ptr @ramoops_parse_dt._entry, ptr @ramoops_parse_dt._entry_ptr, ptr @ramoops_parse_dt_u32._entry, ptr @ramoops_parse_dt_u32._entry.51, ptr @ramoops_parse_dt_u32._entry_ptr, ptr @ramoops_parse_dt_u32._entry_ptr.53, ptr @ramoops_probe._entry, ptr @ramoops_probe._entry.12, ptr @ramoops_probe._entry.19, ptr @ramoops_probe._entry.22, ptr @ramoops_probe._entry.25, ptr @ramoops_probe._entry.9, ptr @ramoops_probe._entry_ptr, ptr @ramoops_probe._entry_ptr.11, ptr @ramoops_probe._entry_ptr.14, ptr @ramoops_probe._entry_ptr.21, ptr @ramoops_probe._entry_ptr.24, ptr @ramoops_probe._entry_ptr.27, ptr @ramoops_pstore_write._entry, ptr @ramoops_pstore_write._entry_ptr, ptr @ramoops_register_dummy._entry, ptr @ramoops_register_dummy._entry.4, ptr @ramoops_register_dummy._entry_ptr, ptr @ramoops_register_dummy._entry_ptr.6, ptr @record_size, ptr @ramoops_console_size, ptr @ramoops_ftrace_size, ptr @ramoops_pmsg_size, ptr @mem_address, ptr @mem_size, ptr @mem_type, ptr @ramoops_max_reason, ptr @ramoops_ecc, ptr @ramoops_dump_oops, ptr @ramoops_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dummy, ptr @.str.5, ptr @dt_match, ptr @oops_cxt, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @ramoops_pstore_write._rs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @record_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_console_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_ftrace_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_pmsg_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_address to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_max_reason to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_ecc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_dump_oops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_register_dummy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_register_dummy._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oops_cxt to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_pstore_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_pstore_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_parse_dt_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_parse_dt_u32._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_init_przs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_init_przs._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_init_przs._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_init_przs._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_init_przs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_init_prz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramoops_init_prz._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ramoops_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ramoops_register_dummy() #14
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ramoops_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @dummy, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #11
  store ptr null, ptr @dummy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ramoops_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @ramoops_driver) #11
  %0 = load ptr, ptr @dummy, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #11
  store ptr null, ptr @dummy, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ramoops_register_dummy() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %pdata = alloca %struct.ramoops_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdata) #11
  %0 = load i32, ptr @mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  %1 = getelementptr inbounds i8, ptr %pdata, i32 28
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %3 = load i32, ptr @mem_size, align 4
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pdata, align 4
  %5 = load i64, ptr @mem_address, align 8
  %conv = trunc i64 %5 to i32
  %mem_address = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 1
  %6 = ptrtoint ptr %mem_address to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %mem_address, align 4
  %7 = load i32, ptr @mem_type, align 4
  %mem_type = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 2
  %8 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mem_type, align 4
  %9 = load i32, ptr @record_size, align 4
  %record_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 3
  %10 = ptrtoint ptr %record_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %record_size, align 4
  %11 = load i32, ptr @ramoops_console_size, align 4
  %console_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 4
  %12 = ptrtoint ptr %console_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %console_size, align 4
  %13 = load i32, ptr @ramoops_ftrace_size, align 4
  %ftrace_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 5
  %14 = ptrtoint ptr %ftrace_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ftrace_size, align 4
  %15 = load i32, ptr @ramoops_pmsg_size, align 4
  %pmsg_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 6
  %16 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pmsg_size, align 4
  %17 = load i32, ptr @ramoops_max_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp = icmp sgt i32 %17, -1
  br i1 %cmp, label %do.end.if.end11_crit_edge, label %if.else

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.else:                                          ; preds = %do.end
  %18 = load i32, ptr @ramoops_dump_oops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp3.not = icmp eq i32 %18, -1
  br i1 %cmp3.not, label %if.else.if.end11_crit_edge, label %if.then5

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool6.not, i32 1, i32 2
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.else.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %cond.sink = phi i32 [ %cond, %if.then5 ], [ %17, %do.end.if.end11_crit_edge ], [ 2, %if.else.if.end11_crit_edge ]
  %max_reason7 = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 7
  %19 = ptrtoint ptr %max_reason7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.sink, ptr %max_reason7, align 4
  %flags = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %flags, align 4
  %21 = load i32, ptr @ramoops_ecc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp12 = icmp eq i32 %21, 1
  %spec.select = select i1 %cmp12, i32 16, i32 %21
  %ecc_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %ecc_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %ecc_size, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %23 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 255, i32 48)
  %25 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %fwnode.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %23, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.3, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pdata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 56, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  store ptr %call.i.i, ptr @dummy, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %call.i.i to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %35) #15
  store ptr null, ptr @dummy, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdata) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ramoops_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %pdata_local = alloca %struct.ramoops_platform_data, align 4
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdata_local) #11
  %2 = call ptr @memset(ptr %pdata_local, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #11
  %3 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %dev_of_node.exit

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

dev_of_node.exit:                                 ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool3.not = icmp ne ptr %5, null
  %tobool4.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool3.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.then5, label %dev_of_node.exit.if.end9_crit_edge

dev_of_node.exit.if.end9_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %dev_of_node.exit
  %6 = call ptr @memset(ptr %pdata_local, i32 0, i32 56)
  %call6 = call fastcc i32 @ramoops_parse_dt(ptr noundef %pdev, ptr noundef nonnull %pdata_local)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.then5.if.end17_crit_edge

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %dev_of_node.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end14, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end9.if.end17_crit_edge, %if.then5.if.end17_crit_edge
  %pdata.0452 = phi ptr [ %1, %if.end9.if.end17_crit_edge ], [ %pdata_local, %if.then5.if.end17_crit_edge ]
  %err.0451 = phi i32 [ -22, %if.end9.if.end17_crit_edge ], [ %call6, %if.then5.if.end17_crit_edge ]
  %7 = ptrtoint ptr %pdata.0452 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdata.0452, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  br i1 %tobool18.not, label %if.end17.do.end29_crit_edge, label %lor.lhs.false

if.end17.do.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

lor.lhs.false:                                    ; preds = %if.end17
  %record_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 3
  %9 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %record_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true35

land.lhs.true20:                                  ; preds = %lor.lhs.false
  %console_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 4
  %11 = ptrtoint ptr %console_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %console_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %land.lhs.true20.if.end57_crit_edge

land.lhs.true20.if.end57_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %ftrace_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 5
  %13 = ptrtoint ptr %ftrace_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ftrace_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not = icmp eq i32 %14, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true22.if.end57_crit_edge

land.lhs.true22.if.end57_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %pmsg_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 6
  %15 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmsg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %land.lhs.true24.do.end29_crit_edge, label %land.lhs.true24.if.end57_crit_edge

land.lhs.true24.if.end57_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

do.end29:                                         ; preds = %land.lhs.true24.do.end29_crit_edge, %if.end17.do.end29_crit_edge
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %cleanup

land.lhs.true35:                                  ; preds = %lor.lhs.false
  %17 = tail call i32 @llvm.ctpop.i32(i32 %10) #11, !range !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp1.i = icmp ult i32 %17, 2
  br i1 %cmp1.i, label %land.lhs.true35.if.end57_crit_edge, label %cond.end54

land.lhs.true35.if.end57_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

cond.end54:                                       ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  %18 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #11, !range !240
  %shl.i = lshr i32 -2147483648, %18
  %19 = ptrtoint ptr %record_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl.i, ptr %record_size, align 4
  br label %if.end57

if.end57:                                         ; preds = %cond.end54, %land.lhs.true35.if.end57_crit_edge, %land.lhs.true24.if.end57_crit_edge, %land.lhs.true22.if.end57_crit_edge, %land.lhs.true20.if.end57_crit_edge
  %console_size58 = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 4
  %20 = ptrtoint ptr %console_size58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %console_size58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool59.not = icmp eq i32 %21, 0
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #11, !range !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp1.i438 = icmp ult i32 %22, 2
  %or.cond458 = or i1 %tobool59.not, %cmp1.i438
  br i1 %or.cond458, label %if.end57.if.end91_crit_edge, label %cond.end88

if.end57.if.end91_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

cond.end88:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %23 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #11, !range !240
  %shl.i439 = lshr i32 -2147483648, %23
  %24 = ptrtoint ptr %console_size58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl.i439, ptr %console_size58, align 4
  br label %if.end91

if.end91:                                         ; preds = %cond.end88, %if.end57.if.end91_crit_edge
  %ftrace_size92 = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 5
  %25 = ptrtoint ptr %ftrace_size92 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ftrace_size92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool93.not = icmp eq i32 %26, 0
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #11, !range !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp1.i440 = icmp ult i32 %27, 2
  %or.cond459 = or i1 %tobool93.not, %cmp1.i440
  br i1 %or.cond459, label %if.end91.if.end125_crit_edge, label %cond.end122

if.end91.if.end125_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

cond.end122:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 false) #11, !range !240
  %shl.i441 = lshr i32 -2147483648, %28
  %29 = ptrtoint ptr %ftrace_size92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl.i441, ptr %ftrace_size92, align 4
  br label %if.end125

if.end125:                                        ; preds = %cond.end122, %if.end91.if.end125_crit_edge
  %pmsg_size126 = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 6
  %30 = ptrtoint ptr %pmsg_size126 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmsg_size126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool127.not = icmp eq i32 %31, 0
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #11, !range !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp1.i442 = icmp ult i32 %32, 2
  %or.cond460 = or i1 %tobool127.not, %cmp1.i442
  br i1 %or.cond460, label %if.end125.if.end159_crit_edge, label %cond.end156

if.end125.if.end159_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

cond.end156:                                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  %33 = tail call i32 @llvm.ctlz.i32(i32 %31, i1 false) #11, !range !240
  %shl.i443 = lshr i32 -2147483648, %33
  %34 = ptrtoint ptr %pmsg_size126 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl.i443, ptr %pmsg_size126, align 4
  br label %if.end159

if.end159:                                        ; preds = %cond.end156, %if.end125.if.end159_crit_edge
  %35 = ptrtoint ptr %pdata.0452 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pdata.0452, align 4
  store i32 %36, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %mem_address = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 1
  %37 = ptrtoint ptr %mem_address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mem_address, align 4
  store i32 %38, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %mem_type = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 2
  %39 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mem_type, align 4
  store i32 %40, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %41 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %record_size, align 4
  store i32 %42, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 7), align 4
  %43 = ptrtoint ptr %console_size58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %console_size58, align 4
  store i32 %44, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  %45 = ptrtoint ptr %ftrace_size92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ftrace_size92, align 4
  store i32 %46, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 9), align 4
  %47 = ptrtoint ptr %pmsg_size126 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pmsg_size126, align 4
  store i32 %48, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  %flags = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 8
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  store i32 %50, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 11), align 4
  %ecc_info170 = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 9
  %51 = call ptr @memcpy(ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12), ptr %ecc_info170, i32 20)
  %52 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %38, ptr %paddr, align 4
  %53 = add i32 %44, %46
  %54 = add i32 %53, %48
  %sub178 = sub i32 %36, %54
  %call181 = call fastcc i32 @ramoops_init_przs(ptr noundef nonnull @.str.15, ptr noundef %dev1, ptr noundef nonnull @oops_cxt, ptr noundef nonnull %paddr, i32 noundef %sub178, i32 noundef %42, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end184:                                        ; preds = %if.end159
  %55 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  %call186 = call fastcc i32 @ramoops_init_prz(ptr noundef nonnull @.str.16, ptr noundef %dev1, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 1), ptr noundef nonnull %paddr, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %if.end184.fail_init_cprz_crit_edge

if.end184.fail_init_cprz_crit_edge:               ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_init_cprz

if.end189:                                        ; preds = %if.end184
  %56 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 11), align 4
  %and = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool191.not = icmp eq i32 %and, 0
  br i1 %tobool191.not, label %if.end189.cond.end194_crit_edge, label %cond.true192

if.end189.cond.end194_crit_edge:                  ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end194

cond.true192:                                     ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %57 = load i32, ptr @nr_cpu_ids, align 4
  br label %cond.end194

cond.end194:                                      ; preds = %cond.true192, %if.end189.cond.end194_crit_edge
  %cond195 = phi i32 [ %57, %cond.true192 ], [ 1, %if.end189.cond.end194_crit_edge ]
  store i32 %cond195, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 9), align 4
  %call202 = call fastcc i32 @ramoops_init_przs(ptr noundef nonnull @.str.17, ptr noundef %dev1, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 2), ptr noundef nonnull %paddr, i32 noundef %58, i32 noundef -1, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), i32 noundef 332032, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %cond.end194.fail_init_fprz_crit_edge

cond.end194.fail_init_fprz_crit_edge:             ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_init_fprz

if.end205:                                        ; preds = %cond.end194
  %59 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  %call207 = call fastcc i32 @ramoops_init_prz(ptr noundef nonnull @.str.18, ptr noundef %dev1, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 3), ptr noundef nonnull %paddr, i32 noundef %59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end210, label %if.end205.fail_init_fprz_crit_edge

if.end205.fail_init_fprz_crit_edge:               ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_init_fprz

if.end210:                                        ; preds = %if.end205
  store ptr @oops_cxt, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %60 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool214.not = icmp eq i32 %60, 0
  br i1 %tobool214.not, label %if.end210.if.end220_crit_edge, label %if.then215

if.end210.if.end220_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then215:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %max_reason = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 7
  %61 = ptrtoint ptr %max_reason to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_reason, align 4
  store i32 %62, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 7), align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then215, %if.end210.if.end220_crit_edge
  %63 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool222.not = icmp eq i32 %63, 0
  br i1 %tobool222.not, label %if.end220.if.end227_crit_edge, label %if.then223

if.end220.if.end227_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

if.then223:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %64 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %or226 = or i32 %64, 2
  store i32 %or226, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  br label %if.end227

if.end227:                                        ; preds = %if.then223, %if.end220.if.end227_crit_edge
  %65 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool229.not = icmp eq i32 %65, 0
  br i1 %tobool229.not, label %if.end227.if.end234_crit_edge, label %if.then230

if.end227.if.end234_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end234

if.then230:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  %66 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %or233 = or i32 %66, 4
  store i32 %or233, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  br label %if.end234

if.end234:                                        ; preds = %if.then230, %if.end227.if.end234_crit_edge
  %67 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool236.not = icmp eq i32 %67, 0
  br i1 %tobool236.not, label %if.end234.if.end241_crit_edge, label %if.then237

if.end234.if.end241_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then237:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  %68 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %or240 = or i32 %68, 8
  store i32 %or240, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then237, %if.end234.if.end241_crit_edge
  %69 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %and244 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.end241.if.end263_crit_edge, label %if.then246

if.end241.if.end263_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end263

if.then246:                                       ; preds = %if.end241
  %70 = load ptr, ptr @oops_cxt, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %buffer_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buffer_size, align 4
  store i32 %74, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 4), align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #16
  store ptr %call9.i.i, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 3), align 4
  %tobool255.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool255.not, label %do.end259, label %if.then246.if.end263_crit_edge

if.then246.if.end263_crit_edge:                   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end263

do.end259:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #13
  %call261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  br label %fail_clear

if.end263:                                        ; preds = %if.then246.if.end263_crit_edge, %if.end241.if.end263_crit_edge
  %call265 = tail call i32 @pstore_register(ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end273, label %do.end270

do.end270:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #13
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  %75 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 3), align 4
  tail call void @kfree(ptr noundef %75) #11
  br label %fail_clear

if.end273:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %pdata.0452 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pdata.0452, align 4
  store i32 %77, ptr @mem_size, align 4
  %78 = ptrtoint ptr %mem_address to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mem_address, align 4
  %conv276 = zext i32 %79 to i64
  store i64 %conv276, ptr @mem_address, align 8
  %80 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %record_size, align 4
  store i32 %81, ptr @record_size, align 4
  %max_reason278 = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata.0452, i32 0, i32 7
  %82 = ptrtoint ptr %max_reason278 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_reason278, align 4
  store i32 %83, ptr @ramoops_max_reason, align 4
  %84 = ptrtoint ptr %console_size58 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %console_size58, align 4
  store i32 %85, ptr @ramoops_console_size, align 4
  %86 = ptrtoint ptr %pmsg_size126 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pmsg_size126, align 4
  store i32 %87, ptr @ramoops_pmsg_size, align 4
  %88 = ptrtoint ptr %ftrace_size92 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ftrace_size92, align 4
  store i32 %89, ptr @ramoops_ftrace_size, align 4
  %90 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %91 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %conv288 = zext i32 %91 to i64
  %92 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12, i32 1), align 4
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %90, i64 noundef %conv288, i32 noundef %92) #15
  br label %cleanup

fail_clear:                                       ; preds = %do.end270, %do.end259
  %err.1 = phi i32 [ %call265, %do.end270 ], [ -12, %do.end259 ]
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 4), align 4
  %93 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 3), align 4
  tail call void @persistent_ram_free(ptr noundef %93) #11
  br label %fail_init_fprz

fail_init_fprz:                                   ; preds = %fail_clear, %if.end205.fail_init_fprz_crit_edge, %cond.end194.fail_init_fprz_crit_edge
  %err.2 = phi i32 [ %call202, %cond.end194.fail_init_fprz_crit_edge ], [ %call207, %if.end205.fail_init_fprz_crit_edge ], [ %err.1, %fail_clear ]
  %94 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  tail call void @persistent_ram_free(ptr noundef %94) #11
  br label %fail_init_cprz

fail_init_cprz:                                   ; preds = %fail_init_fprz, %if.end184.fail_init_cprz_crit_edge
  %err.3 = phi i32 [ %call186, %if.end184.fail_init_cprz_crit_edge ], [ %err.2, %fail_init_fprz ]
  tail call fastcc void @ramoops_free_przs()
  br label %cleanup

cleanup:                                          ; preds = %fail_init_cprz, %if.end273, %if.end159.cleanup_crit_edge, %do.end29, %do.end14, %if.then5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end273 ], [ -22, %do.end ], [ %call181, %if.end159.cleanup_crit_edge ], [ %err.3, %fail_init_cprz ], [ %err.0451, %do.end29 ], [ -22, %do.end14 ], [ %call6, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdata_local) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ramoops_remove(ptr nocapture noundef readnone %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pstore_unregister(ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20)) #11
  %0 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 3), align 4
  tail call void @kfree(ptr noundef %0) #11
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 4), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 3), align 4
  tail call void @persistent_ram_free(ptr noundef %1) #11
  %2 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  tail call void @persistent_ram_free(ptr noundef %2) #11
  tail call fastcc void @ramoops_free_przs()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ramoops_parse_dt(ptr noundef %pdev, ptr nocapture noundef %pdata) unnamed_addr #4 align 64 {
entry:
  %val32.i244 = alloca i32, align 4
  %val32.i227 = alloca i32, align 4
  %val32.i210 = alloca i32, align 4
  %val32.i193 = alloca i32, align 4
  %val32.i176 = alloca i32, align 4
  %val32.i159 = alloca i32, align 4
  %val32.i142 = alloca i32, align 4
  %val32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ramoops_parse_dt.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ramoops_parse_dt, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ramoops_parse_dt.__UNIQUE_ID_ddebug203, ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #15
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call5, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %pdata, align 4
  %7 = load i32, ptr %call5, align 4
  %mem_address = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 1
  %8 = ptrtoint ptr %mem_address to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mem_address, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i, null
  %conv = zext i1 %tobool.i to i32
  %mem_type = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 2
  %9 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %mem_type, align 4
  %call.i139 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef null) #11
  %tobool.i140.not = icmp eq ptr %call.i139, null
  %spec.select = select i1 %tobool.i140.not, i32 2, i32 1
  %10 = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %12 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #11
  %14 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val32.i, align 4
  %15 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node1, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.40, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #11
  %17 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %17)
  %cmp.i = icmp eq i32 %17, -22
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %val32.i, align 4
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp1.i, label %ramoops_parse_dt_u32.exit, label %if.end4thread-pre-split.i

if.end4thread-pre-split.i:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i = load i32, ptr %val32.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4thread-pre-split.i, %if.then.i
  %20 = phi i32 [ %.pr.i, %if.end4thread-pre-split.i ], [ %13, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5.i = icmp slt i32 %20, 0
  br i1 %cmp5.i, label %ramoops_parse_dt_u32.exit.thread, label %ramoops_parse_dt_u32.exit.thread272

ramoops_parse_dt_u32.exit.thread272:              ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #11
  %record_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 3
  %21 = ptrtoint ptr %record_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %record_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i142) #11
  %22 = ptrtoint ptr %val32.i142 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %val32.i142, align 4
  %23 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node1, align 8
  %call.i.i.i145 = call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.41, ptr noundef nonnull %val32.i142, i32 noundef 1, i32 noundef 0) #11
  %25 = call i32 @llvm.smin.i32(i32 %call.i.i.i145, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %25)
  %cmp.i146 = icmp eq i32 %25, -22
  br i1 %cmp.i146, label %ramoops_parse_dt_u32.exit.thread272.ramoops_parse_dt_u32.exit158.thread_crit_edge, label %if.else.i149

ramoops_parse_dt_u32.exit.thread272.ramoops_parse_dt_u32.exit158.thread_crit_edge: ; preds = %ramoops_parse_dt_u32.exit.thread272
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit158.thread

ramoops_parse_dt_u32.exit.thread:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.40, i32 noundef %20) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #11
  br label %cleanup

ramoops_parse_dt_u32.exit:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.40, i32 noundef %17) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #11
  br label %cleanup

if.else.i149:                                     ; preds = %ramoops_parse_dt_u32.exit.thread272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i145)
  %cmp1.i148 = icmp slt i32 %call.i.i.i145, 0
  br i1 %cmp1.i148, label %ramoops_parse_dt_u32.exit158, label %if.end4.i154

if.end4.i154:                                     ; preds = %if.else.i149
  %26 = ptrtoint ptr %val32.i142 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i151 = load i32, ptr %val32.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i151)
  %cmp5.i153 = icmp slt i32 %.pr.i151, 0
  br i1 %cmp5.i153, label %ramoops_parse_dt_u32.exit158.thread282, label %if.end4.i154.ramoops_parse_dt_u32.exit158.thread_crit_edge

if.end4.i154.ramoops_parse_dt_u32.exit158.thread_crit_edge: ; preds = %if.end4.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit158.thread

ramoops_parse_dt_u32.exit158.thread282:           ; preds = %if.end4.i154
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.41, i32 noundef %.pr.i151) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i142) #11
  br label %cleanup

ramoops_parse_dt_u32.exit158.thread:              ; preds = %if.end4.i154.ramoops_parse_dt_u32.exit158.thread_crit_edge, %ramoops_parse_dt_u32.exit.thread272.ramoops_parse_dt_u32.exit158.thread_crit_edge
  %value.1.ph = phi i32 [ %.pr.i151, %if.end4.i154.ramoops_parse_dt_u32.exit158.thread_crit_edge ], [ 0, %ramoops_parse_dt_u32.exit.thread272.ramoops_parse_dt_u32.exit158.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i142) #11
  %27 = ptrtoint ptr %record_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %value.1.ph, ptr %record_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i159) #11
  %28 = ptrtoint ptr %val32.i159 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val32.i159, align 4
  %29 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node1, align 8
  %call.i.i.i162 = call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.42, ptr noundef nonnull %val32.i159, i32 noundef 1, i32 noundef 0) #11
  %31 = call i32 @llvm.smin.i32(i32 %call.i.i.i162, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %31)
  %cmp.i163 = icmp eq i32 %31, -22
  br i1 %cmp.i163, label %ramoops_parse_dt_u32.exit158.thread.ramoops_parse_dt_u32.exit175.thread_crit_edge, label %if.else.i166

ramoops_parse_dt_u32.exit158.thread.ramoops_parse_dt_u32.exit175.thread_crit_edge: ; preds = %ramoops_parse_dt_u32.exit158.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit175.thread

ramoops_parse_dt_u32.exit158:                     ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41, i32 noundef %25) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i142) #11
  br label %cleanup

if.else.i166:                                     ; preds = %ramoops_parse_dt_u32.exit158.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i162)
  %cmp1.i165 = icmp slt i32 %call.i.i.i162, 0
  br i1 %cmp1.i165, label %ramoops_parse_dt_u32.exit175, label %if.end4.i171

if.end4.i171:                                     ; preds = %if.else.i166
  %32 = ptrtoint ptr %val32.i159 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i168 = load i32, ptr %val32.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i168)
  %cmp5.i170 = icmp slt i32 %.pr.i168, 0
  br i1 %cmp5.i170, label %ramoops_parse_dt_u32.exit175.thread291, label %if.end4.i171.ramoops_parse_dt_u32.exit175.thread_crit_edge

if.end4.i171.ramoops_parse_dt_u32.exit175.thread_crit_edge: ; preds = %if.end4.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit175.thread

ramoops_parse_dt_u32.exit175.thread291:           ; preds = %if.end4.i171
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.42, i32 noundef %.pr.i168) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i159) #11
  br label %cleanup

ramoops_parse_dt_u32.exit175.thread:              ; preds = %if.end4.i171.ramoops_parse_dt_u32.exit175.thread_crit_edge, %ramoops_parse_dt_u32.exit158.thread.ramoops_parse_dt_u32.exit175.thread_crit_edge
  %value.2.ph = phi i32 [ %.pr.i168, %if.end4.i171.ramoops_parse_dt_u32.exit175.thread_crit_edge ], [ 0, %ramoops_parse_dt_u32.exit158.thread.ramoops_parse_dt_u32.exit175.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i159) #11
  %console_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 4
  %33 = ptrtoint ptr %console_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %value.2.ph, ptr %console_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i176) #11
  %34 = ptrtoint ptr %val32.i176 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %val32.i176, align 4
  %35 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node1, align 8
  %call.i.i.i179 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.43, ptr noundef nonnull %val32.i176, i32 noundef 1, i32 noundef 0) #11
  %37 = call i32 @llvm.smin.i32(i32 %call.i.i.i179, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %37)
  %cmp.i180 = icmp eq i32 %37, -22
  br i1 %cmp.i180, label %ramoops_parse_dt_u32.exit175.thread.ramoops_parse_dt_u32.exit192.thread_crit_edge, label %if.else.i183

ramoops_parse_dt_u32.exit175.thread.ramoops_parse_dt_u32.exit192.thread_crit_edge: ; preds = %ramoops_parse_dt_u32.exit175.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit192.thread

ramoops_parse_dt_u32.exit175:                     ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.42, i32 noundef %31) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i159) #11
  br label %cleanup

if.else.i183:                                     ; preds = %ramoops_parse_dt_u32.exit175.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i179)
  %cmp1.i182 = icmp slt i32 %call.i.i.i179, 0
  br i1 %cmp1.i182, label %ramoops_parse_dt_u32.exit192, label %if.end4.i188

if.end4.i188:                                     ; preds = %if.else.i183
  %38 = ptrtoint ptr %val32.i176 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i185 = load i32, ptr %val32.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i185)
  %cmp5.i187 = icmp slt i32 %.pr.i185, 0
  br i1 %cmp5.i187, label %ramoops_parse_dt_u32.exit192.thread300, label %if.end4.i188.ramoops_parse_dt_u32.exit192.thread_crit_edge

if.end4.i188.ramoops_parse_dt_u32.exit192.thread_crit_edge: ; preds = %if.end4.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit192.thread

ramoops_parse_dt_u32.exit192.thread300:           ; preds = %if.end4.i188
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.43, i32 noundef %.pr.i185) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i176) #11
  br label %cleanup

ramoops_parse_dt_u32.exit192.thread:              ; preds = %if.end4.i188.ramoops_parse_dt_u32.exit192.thread_crit_edge, %ramoops_parse_dt_u32.exit175.thread.ramoops_parse_dt_u32.exit192.thread_crit_edge
  %value.3.ph = phi i32 [ %.pr.i185, %if.end4.i188.ramoops_parse_dt_u32.exit192.thread_crit_edge ], [ 0, %ramoops_parse_dt_u32.exit175.thread.ramoops_parse_dt_u32.exit192.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i176) #11
  %ftrace_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 5
  %39 = ptrtoint ptr %ftrace_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %value.3.ph, ptr %ftrace_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i193) #11
  %40 = ptrtoint ptr %val32.i193 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %val32.i193, align 4
  %41 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node1, align 8
  %call.i.i.i196 = call i32 @of_property_read_variable_u32_array(ptr noundef %42, ptr noundef nonnull @.str.44, ptr noundef nonnull %val32.i193, i32 noundef 1, i32 noundef 0) #11
  %43 = call i32 @llvm.smin.i32(i32 %call.i.i.i196, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %43)
  %cmp.i197 = icmp eq i32 %43, -22
  br i1 %cmp.i197, label %ramoops_parse_dt_u32.exit192.thread.ramoops_parse_dt_u32.exit209.thread_crit_edge, label %if.else.i200

ramoops_parse_dt_u32.exit192.thread.ramoops_parse_dt_u32.exit209.thread_crit_edge: ; preds = %ramoops_parse_dt_u32.exit192.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit209.thread

ramoops_parse_dt_u32.exit192:                     ; preds = %if.else.i183
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, i32 noundef %37) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i176) #11
  br label %cleanup

if.else.i200:                                     ; preds = %ramoops_parse_dt_u32.exit192.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i196)
  %cmp1.i199 = icmp slt i32 %call.i.i.i196, 0
  br i1 %cmp1.i199, label %ramoops_parse_dt_u32.exit209, label %if.end4.i205

if.end4.i205:                                     ; preds = %if.else.i200
  %44 = ptrtoint ptr %val32.i193 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr.i202 = load i32, ptr %val32.i193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i202)
  %cmp5.i204 = icmp slt i32 %.pr.i202, 0
  br i1 %cmp5.i204, label %ramoops_parse_dt_u32.exit209.thread309, label %if.end4.i205.ramoops_parse_dt_u32.exit209.thread_crit_edge

if.end4.i205.ramoops_parse_dt_u32.exit209.thread_crit_edge: ; preds = %if.end4.i205
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit209.thread

ramoops_parse_dt_u32.exit209.thread309:           ; preds = %if.end4.i205
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.44, i32 noundef %.pr.i202) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i193) #11
  br label %cleanup

ramoops_parse_dt_u32.exit209.thread:              ; preds = %if.end4.i205.ramoops_parse_dt_u32.exit209.thread_crit_edge, %ramoops_parse_dt_u32.exit192.thread.ramoops_parse_dt_u32.exit209.thread_crit_edge
  %value.4.ph = phi i32 [ %.pr.i202, %if.end4.i205.ramoops_parse_dt_u32.exit209.thread_crit_edge ], [ 0, %ramoops_parse_dt_u32.exit192.thread.ramoops_parse_dt_u32.exit209.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i193) #11
  %pmsg_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 6
  %45 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %value.4.ph, ptr %pmsg_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i210) #11
  %46 = ptrtoint ptr %val32.i210 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %val32.i210, align 4
  %47 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node1, align 8
  %call.i.i.i213 = call i32 @of_property_read_variable_u32_array(ptr noundef %48, ptr noundef nonnull @.str.45, ptr noundef nonnull %val32.i210, i32 noundef 1, i32 noundef 0) #11
  %49 = call i32 @llvm.smin.i32(i32 %call.i.i.i213, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %49)
  %cmp.i214 = icmp eq i32 %49, -22
  br i1 %cmp.i214, label %ramoops_parse_dt_u32.exit209.thread.ramoops_parse_dt_u32.exit226.thread_crit_edge, label %if.else.i217

ramoops_parse_dt_u32.exit209.thread.ramoops_parse_dt_u32.exit226.thread_crit_edge: ; preds = %ramoops_parse_dt_u32.exit209.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit226.thread

ramoops_parse_dt_u32.exit209:                     ; preds = %if.else.i200
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, i32 noundef %43) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i193) #11
  br label %cleanup

if.else.i217:                                     ; preds = %ramoops_parse_dt_u32.exit209.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i213)
  %cmp1.i216 = icmp slt i32 %call.i.i.i213, 0
  br i1 %cmp1.i216, label %ramoops_parse_dt_u32.exit226, label %if.end4.i222

if.end4.i222:                                     ; preds = %if.else.i217
  %50 = ptrtoint ptr %val32.i210 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr.i219 = load i32, ptr %val32.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i219)
  %cmp5.i221 = icmp slt i32 %.pr.i219, 0
  br i1 %cmp5.i221, label %ramoops_parse_dt_u32.exit226.thread318, label %if.end4.i222.ramoops_parse_dt_u32.exit226.thread_crit_edge

if.end4.i222.ramoops_parse_dt_u32.exit226.thread_crit_edge: ; preds = %if.end4.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit226.thread

ramoops_parse_dt_u32.exit226.thread318:           ; preds = %if.end4.i222
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.45, i32 noundef %.pr.i219) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i210) #11
  br label %cleanup

ramoops_parse_dt_u32.exit226.thread:              ; preds = %if.end4.i222.ramoops_parse_dt_u32.exit226.thread_crit_edge, %ramoops_parse_dt_u32.exit209.thread.ramoops_parse_dt_u32.exit226.thread_crit_edge
  %value.5.ph = phi i32 [ %.pr.i219, %if.end4.i222.ramoops_parse_dt_u32.exit226.thread_crit_edge ], [ 0, %ramoops_parse_dt_u32.exit209.thread.ramoops_parse_dt_u32.exit226.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i210) #11
  %ecc_size = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 9, i32 1
  %51 = ptrtoint ptr %ecc_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %value.5.ph, ptr %ecc_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i227) #11
  %52 = ptrtoint ptr %val32.i227 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %val32.i227, align 4
  %53 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node1, align 8
  %call.i.i.i230 = call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.46, ptr noundef nonnull %val32.i227, i32 noundef 1, i32 noundef 0) #11
  %55 = call i32 @llvm.smin.i32(i32 %call.i.i.i230, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %55)
  %cmp.i231 = icmp eq i32 %55, -22
  br i1 %cmp.i231, label %ramoops_parse_dt_u32.exit226.thread.ramoops_parse_dt_u32.exit243.thread_crit_edge, label %if.else.i234

ramoops_parse_dt_u32.exit226.thread.ramoops_parse_dt_u32.exit243.thread_crit_edge: ; preds = %ramoops_parse_dt_u32.exit226.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit243.thread

ramoops_parse_dt_u32.exit226:                     ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef %49) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i210) #11
  br label %cleanup

if.else.i234:                                     ; preds = %ramoops_parse_dt_u32.exit226.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i230)
  %cmp1.i233 = icmp slt i32 %call.i.i.i230, 0
  br i1 %cmp1.i233, label %ramoops_parse_dt_u32.exit243, label %if.end4.i239

if.end4.i239:                                     ; preds = %if.else.i234
  %56 = ptrtoint ptr %val32.i227 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr.i236 = load i32, ptr %val32.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i236)
  %cmp5.i238 = icmp slt i32 %.pr.i236, 0
  br i1 %cmp5.i238, label %ramoops_parse_dt_u32.exit243.thread327, label %if.end4.i239.ramoops_parse_dt_u32.exit243.thread_crit_edge

if.end4.i239.ramoops_parse_dt_u32.exit243.thread_crit_edge: ; preds = %if.end4.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %ramoops_parse_dt_u32.exit243.thread

ramoops_parse_dt_u32.exit243.thread327:           ; preds = %if.end4.i239
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.46, i32 noundef %.pr.i236) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i227) #11
  br label %cleanup

ramoops_parse_dt_u32.exit243.thread:              ; preds = %if.end4.i239.ramoops_parse_dt_u32.exit243.thread_crit_edge, %ramoops_parse_dt_u32.exit226.thread.ramoops_parse_dt_u32.exit243.thread_crit_edge
  %value.6.ph = phi i32 [ %.pr.i236, %if.end4.i239.ramoops_parse_dt_u32.exit243.thread_crit_edge ], [ 0, %ramoops_parse_dt_u32.exit226.thread.ramoops_parse_dt_u32.exit243.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i227) #11
  %flags = getelementptr inbounds %struct.ramoops_platform_data, ptr %pdata, i32 0, i32 8
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %value.6.ph, ptr %flags, align 4
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i244) #11
  %60 = ptrtoint ptr %val32.i244 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %val32.i244, align 4
  %61 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %of_node1, align 8
  %call.i.i.i247 = call i32 @of_property_read_variable_u32_array(ptr noundef %62, ptr noundef nonnull @.str.47, ptr noundef nonnull %val32.i244, i32 noundef 1, i32 noundef 0) #11
  %63 = call i32 @llvm.smin.i32(i32 %call.i.i.i247, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %63)
  %cmp.i248 = icmp eq i32 %63, -22
  br i1 %cmp.i248, label %if.then.i249, label %if.else.i251

ramoops_parse_dt_u32.exit243:                     ; preds = %if.else.i234
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.46, i32 noundef %55) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i227) #11
  br label %cleanup

if.then.i249:                                     ; preds = %ramoops_parse_dt_u32.exit243.thread
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %val32.i244 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %59, ptr %val32.i244, align 4
  br label %if.end4.i256

if.else.i251:                                     ; preds = %ramoops_parse_dt_u32.exit243.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i247)
  %cmp1.i250 = icmp slt i32 %call.i.i.i247, 0
  br i1 %cmp1.i250, label %ramoops_parse_dt_u32.exit260, label %if.end4thread-pre-split.i254

if.end4thread-pre-split.i254:                     ; preds = %if.else.i251
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %val32.i244 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr.i253 = load i32, ptr %val32.i244, align 4
  br label %if.end4.i256

if.end4.i256:                                     ; preds = %if.end4thread-pre-split.i254, %if.then.i249
  %66 = phi i32 [ %.pr.i253, %if.end4thread-pre-split.i254 ], [ %59, %if.then.i249 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp5.i255 = icmp slt i32 %66, 0
  br i1 %cmp5.i255, label %ramoops_parse_dt_u32.exit260.thread, label %ramoops_parse_dt_u32.exit260.thread334

ramoops_parse_dt_u32.exit260.thread334:           ; preds = %if.end4.i256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i244) #11
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %10, align 4
  %call62 = call ptr @of_get_parent(ptr noundef %1) #11
  %call63 = call zeroext i1 @of_node_name_eq(ptr noundef %call62, ptr noundef nonnull @.str.48) #11
  br i1 %call63, label %ramoops_parse_dt_u32.exit260.thread334.if.end81_crit_edge, label %land.lhs.true

ramoops_parse_dt_u32.exit260.thread334.if.end81_crit_edge: ; preds = %ramoops_parse_dt_u32.exit260.thread334
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

ramoops_parse_dt_u32.exit260.thread:              ; preds = %if.end4.i256
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47, i32 noundef %66) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i244) #11
  br label %cleanup

ramoops_parse_dt_u32.exit260:                     ; preds = %if.else.i251
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %63) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i244) #11
  br label %cleanup

land.lhs.true:                                    ; preds = %ramoops_parse_dt_u32.exit260.thread334
  %68 = ptrtoint ptr %console_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %console_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool65.not = icmp eq i32 %69, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

land.lhs.true66:                                  ; preds = %land.lhs.true
  %70 = ptrtoint ptr %ftrace_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ftrace_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool68.not = icmp eq i32 %71, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %land.lhs.true66.if.end81_crit_edge

land.lhs.true66.if.end81_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %72 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pmsg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool71.not = icmp eq i32 %73, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %land.lhs.true69.if.end81_crit_edge

land.lhs.true69.if.end81_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %74 = ptrtoint ptr %ecc_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ecc_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool75.not = icmp eq i32 %75, 0
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true72.if.end81_crit_edge

land.lhs.true72.if.end81_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %record_size, align 4
  %78 = ptrtoint ptr %console_size to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %console_size, align 4
  %79 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %77, ptr %pmsg_size, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %land.lhs.true72.if.end81_crit_edge, %land.lhs.true69.if.end81_crit_edge, %land.lhs.true66.if.end81_crit_edge, %land.lhs.true.if.end81_crit_edge, %ramoops_parse_dt_u32.exit260.thread334.if.end81_crit_edge
  call void @of_node_put(ptr noundef %call62) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %ramoops_parse_dt_u32.exit260, %ramoops_parse_dt_u32.exit260.thread, %ramoops_parse_dt_u32.exit243, %ramoops_parse_dt_u32.exit243.thread327, %ramoops_parse_dt_u32.exit226, %ramoops_parse_dt_u32.exit226.thread318, %ramoops_parse_dt_u32.exit209, %ramoops_parse_dt_u32.exit209.thread309, %ramoops_parse_dt_u32.exit192, %ramoops_parse_dt_u32.exit192.thread300, %ramoops_parse_dt_u32.exit175, %ramoops_parse_dt_u32.exit175.thread291, %ramoops_parse_dt_u32.exit158, %ramoops_parse_dt_u32.exit158.thread282, %ramoops_parse_dt_u32.exit, %ramoops_parse_dt_u32.exit.thread, %do.end10
  %retval.0 = phi i32 [ 0, %if.end81 ], [ -22, %do.end10 ], [ %17, %ramoops_parse_dt_u32.exit ], [ %25, %ramoops_parse_dt_u32.exit158 ], [ %31, %ramoops_parse_dt_u32.exit175 ], [ %37, %ramoops_parse_dt_u32.exit192 ], [ %43, %ramoops_parse_dt_u32.exit209 ], [ %49, %ramoops_parse_dt_u32.exit226 ], [ %55, %ramoops_parse_dt_u32.exit243 ], [ %63, %ramoops_parse_dt_u32.exit260 ], [ -75, %ramoops_parse_dt_u32.exit.thread ], [ -75, %ramoops_parse_dt_u32.exit158.thread282 ], [ -75, %ramoops_parse_dt_u32.exit175.thread291 ], [ -75, %ramoops_parse_dt_u32.exit192.thread300 ], [ -75, %ramoops_parse_dt_u32.exit209.thread309 ], [ -75, %ramoops_parse_dt_u32.exit226.thread318 ], [ -75, %ramoops_parse_dt_u32.exit243.thread327 ], [ -75, %ramoops_parse_dt_u32.exit260.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ramoops_init_przs(ptr noundef %name, ptr noundef %dev, ptr nocapture noundef writeonly %przs, ptr nocapture noundef %paddr, i32 noundef %mem_sz, i32 noundef %record_size, ptr nocapture noundef %cnt, i32 noundef %sig, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_sz)
  %cmp = icmp eq i32 %mem_sz, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %record_size)
  %cmp1 = icmp eq i32 %record_size, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cnt, align 4
  br label %cleanup63

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %record_size)
  %cmp2 = icmp slt i32 %record_size, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then3.cleanup63_crit_edge, label %if.end6

if.then3.cleanup63_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

if.end6:                                          ; preds = %if.then3
  %div = udiv i32 %mem_sz, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %mem_sz)
  %cmp7 = icmp ugt i32 %2, %mem_sz
  br i1 %cmp7, label %do.end, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %name, i32 noundef %mem_sz, i32 noundef %2) #15
  br label %fail

if.else:                                          ; preds = %if.end
  %div10 = udiv i32 %mem_sz, %record_size
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div10, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %record_size, i32 %mem_sz)
  %cmp11 = icmp ugt i32 %record_size, %mem_sz
  br i1 %cmp11, label %do.end15, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %mem_sz, i32 noundef %record_size) #15
  br label %fail

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %record_size.addr.0 = phi i32 [ %div, %if.end6.if.end17_crit_edge ], [ %record_size, %if.else.if.end17_crit_edge ]
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr, align 4
  %add = add i32 %5, %mem_sz
  %6 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %sub = sub i32 %add, %6
  %7 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp18 = icmp ugt i32 %sub, %7
  br i1 %cmp18, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %5 to i64
  %conv25 = zext i32 %6 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef %name, i32 noundef %mem_sz, i64 noundef %conv, i32 noundef %7, i64 noundef %conv25) #15
  br label %fail

if.end26:                                         ; preds = %if.end17
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 4
  %div27 = udiv i32 %mem_sz, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mem_sz)
  %tobool.not = icmp ugt i32 %9, %mem_sz
  br i1 %tobool.not, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef %name) #15
  br label %fail

if.end32:                                         ; preds = %if.end26
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #11
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end32.fail_crit_edge, label %if.end7.i.i, !prof !242

if.end32.fail_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end7.i.i:                                      ; preds = %if.end32
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #16
  %tobool33.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool33.not, label %if.end7.i.i.fail_crit_edge, label %for.cond.preheader

if.end7.i.i.fail_crit_edge:                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

for.cond.preheader:                               ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3611.not = icmp eq i32 %14, 0
  br i1 %cmp3611.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %15 = phi i32 [ %33, %for.inc.for.body_crit_edge ], [ %14, %for.cond.preheader.for.body_crit_edge ]
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp38 = icmp eq i32 %15, 1
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call41 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.65, ptr noundef %name) #11
  br label %if.end45

if.else42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub43 = add i32 %15, -1
  %call44 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.66, ptr noundef %name, i32 noundef %i.012, i32 noundef %sub43) #11
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40
  %label.0 = phi ptr [ %call41, %if.then40 ], [ %call44, %if.else42 ]
  %16 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %paddr, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %call46 = tail call ptr @persistent_ram_new(i32 noundef %17, i32 noundef %div27, i32 noundef %sig, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12), i32 noundef %18, i32 noundef %flags, ptr noundef %label.0) #11
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.012
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call46, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %label.0) #11
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then49, label %for.inc

if.then49:                                        ; preds = %if.end45
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %paddr, align 4
  %conv55 = zext i32 %24 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %record_size.addr.0, i64 noundef %conv55, i32 noundef %22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.012)
  %cmp5613 = icmp sgt i32 %i.012, 0
  br i1 %cmp5613, label %if.then49.while.body_crit_edge, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49.while.body_crit_edge:                   ; preds = %if.then49
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then49.while.body_crit_edge
  %i.114 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.012, %if.then49.while.body_crit_edge ]
  %dec = add nsw i32 %i.114, -1
  %arrayidx58 = getelementptr ptr, ptr %call8.i.i, i32 %dec
  %25 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx58, align 4
  tail call void @persistent_ram_free(ptr noundef %26) #11
  %cmp56 = icmp ugt i32 %i.114, 1
  br i1 %cmp56, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.then49.cleanup_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %fail

for.inc:                                          ; preds = %if.end45
  %27 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %paddr, align 4
  %add60 = add i32 %28, %div27
  store i32 %add60, ptr %paddr, align 4
  %call61 = tail call i32 @pstore_name_to_type(ptr noundef %name) #11
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %type = getelementptr inbounds %struct.persistent_ram_zone, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call61, ptr %type, align 4
  %inc = add nuw i32 %i.012, 1
  %32 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cnt, align 4
  %cmp36 = icmp ult i32 %inc, %33
  br i1 %cmp36, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %34 = ptrtoint ptr %przs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i, ptr %przs, align 4
  br label %cleanup63

fail:                                             ; preds = %cleanup, %if.end7.i.i.fail_crit_edge, %if.end32.fail_crit_edge, %do.end31, %do.end22, %do.end15, %do.end
  %err.2 = phi i32 [ -12, %do.end ], [ -12, %do.end22 ], [ %22, %cleanup ], [ -12, %if.end7.i.i.fail_crit_edge ], [ -12, %do.end31 ], [ -12, %do.end15 ], [ -12, %if.end32.fail_crit_edge ]
  %35 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cnt, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %fail, %for.end, %if.then3.cleanup63_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.2, %fail ], [ 0, %for.end ], [ 0, %if.then3.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ramoops_init_prz(ptr noundef %name, ptr noundef %dev, ptr nocapture noundef %prz, ptr nocapture noundef %paddr, i32 noundef %sz) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %tobool.not = icmp eq i32 %sz, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %paddr, align 4
  %add = add i32 %1, %sz
  %2 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %sub = sub i32 %add, %2
  %3 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp = icmp ugt i32 %sub, %3
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %1 to i64
  %conv4 = zext i32 %2 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef %name, i32 noundef %sz, i64 noundef %conv, i32 noundef %3, i64 noundef %conv4) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.65, ptr noundef %name) #11
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %call6 = tail call ptr @persistent_ram_new(i32 noundef %5, i32 noundef %sz, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12), i32 noundef %6, i32 noundef 2, ptr noundef %call) #11
  %7 = ptrtoint ptr %prz to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %prz, align 4
  tail call void @kfree(ptr noundef %call) #11
  %8 = ptrtoint ptr %prz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prz, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %paddr, align 4
  %conv13 = zext i32 %12 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %sz, i64 noundef %conv13, i32 noundef %10) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %paddr, align 4
  %add15 = add i32 %14, %sz
  store i32 %add15, ptr %paddr, align 4
  %call16 = tail call i32 @pstore_name_to_type(ptr noundef %name) #11
  %15 = ptrtoint ptr %prz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prz, align 4
  %type = getelementptr inbounds %struct.persistent_ram_zone, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call16, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %10, %if.then8 ], [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ramoops_free_przs() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @oops_cxt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = load ptr, ptr @oops_cxt, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %i.02
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @persistent_ram_free(ptr noundef %4) #11
  %inc = add nuw i32 %i.02, 1
  %5 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %6 = load ptr, ptr @oops_cxt, align 4
  tail call void @kfree(ptr noundef %6) #11
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %7 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 2), align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %for.cond6.preheader

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

for.cond6.preheader:                              ; preds = %if.end
  %8 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp73.not = icmp eq i32 %8, 0
  br i1 %cmp73.not, label %for.cond6.preheader.for.end13_crit_edge, label %for.cond6.preheader.for.body8_crit_edge

for.cond6.preheader.for.body8_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body8

for.cond6.preheader.for.end13_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end13

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.cond6.preheader.for.body8_crit_edge
  %i.14 = phi i32 [ %inc12, %for.body8.for.body8_crit_edge ], [ 0, %for.cond6.preheader.for.body8_crit_edge ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 2), align 4
  %arrayidx10 = getelementptr ptr, ptr %9, i32 %i.14
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  tail call void @persistent_ram_free(ptr noundef %11) #11
  %inc12 = add nuw i32 %i.14, 1
  %12 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  %cmp7 = icmp ult i32 %inc12, %12
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end13_crit_edge

for.body8.for.end13_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end13

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.end13:                                        ; preds = %for.body8.for.end13_crit_edge, %for.cond6.preheader.for.end13_crit_edge
  %13 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %13) #11
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  br label %if.end16

if.end16:                                         ; preds = %for.end13, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ramoops_pstore_open(ptr nocapture noundef readonly %psi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dump_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dump_read_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dump_read_cnt, align 4
  %console_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %console_read_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %console_read_cnt, align 4
  %ftrace_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %ftrace_read_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ftrace_read_cnt, align 4
  %pmsg_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %pmsg_read_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pmsg_read_cnt, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_read(ptr noundef %record) #4 align 64 {
entry:
  %data_type.i = alloca i8, align 1
  %header_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %record, align 8
  %data = getelementptr inbounds %struct.pstore_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %time = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  %4 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %time, align 8
  %tv_nsec = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tv_nsec, align 8
  %compressed = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 10
  %6 = ptrtoint ptr %compressed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %compressed, align 8
  %dump_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 15
  %max_dump_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %dump_read_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dump_read_cnt, align 4
  %9 = ptrtoint ptr %max_dump_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_dump_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp324332 = icmp ult i32 %8, %10
  br i1 %cmp324332, label %while.body.lr.ph.lr.ph, label %land.lhs.true.thread

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %type10.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %id11.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.lr.ph.lr.ph
  %11 = phi i32 [ %8, %while.body.lr.ph.lr.ph ], [ %.be, %while.body.backedge ]
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %inc = add nuw i32 %11, 1
  %14 = ptrtoint ptr %dump_read_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc, ptr %dump_read_cnt, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body.while.cond.backedge_crit_edge, label %if.end.i158

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i158:                                      ; preds = %while.body
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %11
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.end.i158.while.cond.backedge_crit_edge, label %if.end3.i

if.end.i158.while.cond.backedge_crit_edge:        ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end3.i:                                        ; preds = %if.end.i158
  %type.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i159 = icmp eq i32 %18, 0
  br i1 %cmp.i159, label %if.then4.i, label %if.end3.i.if.end5.i_crit_edge

if.end3.i.if.end5.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @persistent_ram_save_old(ptr noundef nonnull %16) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end3.i.if.end5.i_crit_edge
  %call.i = call i32 @persistent_ram_old_size(ptr noundef nonnull %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.while.cond.backedge_crit_edge, label %land.rhs.i

if.end5.i.while.cond.backedge_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

land.rhs.i:                                       ; preds = %if.end5.i
  %type.i.le = getelementptr inbounds %struct.persistent_ram_zone, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %type.i.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i.le, align 4
  %21 = ptrtoint ptr %type10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %type10.i, align 4
  %conv.i = sext i32 %11 to i64
  %22 = ptrtoint ptr %id11.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.i, ptr %id11.i, align 8
  %call.i162 = call i32 @persistent_ram_old_size(ptr noundef nonnull %16) #11
  %call1.i = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %16, ptr noundef null, i32 noundef 0) #11
  %add.i = sub i32 0, %call1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i162, i32 %add.i)
  %tobool2.i.not = icmp eq i32 %call.i162, %add.i
  br i1 %tobool2.i.not, label %land.rhs.i.prz_ok.exit172_crit_edge, label %if.end

land.rhs.i.prz_ok.exit172_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit172

while.cond.backedge:                              ; preds = %if.end5.i.while.cond.backedge_crit_edge, %if.end.i158.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %23 = ptrtoint ptr %dump_read_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dump_read_cnt, align 4
  %25 = ptrtoint ptr %max_dump_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_dump_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp = icmp ult i32 %24, %26
  br i1 %cmp, label %while.cond.backedge.while.body.backedge_crit_edge, label %while.cond.backedge.land.lhs.true_crit_edge

while.cond.backedge.land.lhs.true_crit_edge:      ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

while.cond.backedge.while.body.backedge_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.end10.while.body.backedge_crit_edge, %while.cond.backedge.while.body.backedge_crit_edge
  %.be = phi i32 [ %24, %while.cond.backedge.while.body.backedge_crit_edge ], [ %41, %if.end10.while.body.backedge_crit_edge ]
  br label %while.body

if.end:                                           ; preds = %land.rhs.i
  %call4 = call ptr @persistent_ram_old(ptr noundef nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data_type.i) #11
  %27 = ptrtoint ptr %data_type.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %data_type.i, align 1, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_length.i) #11
  %28 = ptrtoint ptr %header_length.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %header_length.i, align 4
  %call.i163 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call4, ptr noundef nonnull @.str.28, ptr noundef %time, ptr noundef %tv_nsec, ptr noundef nonnull %data_type.i, ptr noundef nonnull %header_length.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i163)
  %cmp.i164 = icmp eq i32 %call.i163, 3
  br i1 %cmp.i164, label %if.then.i165, label %if.else5.i

if.then.i165:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tv_nsec, align 8
  %mul.i = mul i32 %30, 1000
  store i32 %mul.i, ptr %tv_nsec, align 8
  %31 = ptrtoint ptr %data_type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %32)
  %cmp2.i = icmp eq i8 %32, 67
  %..i = zext i1 %cmp2.i to i8
  br label %ramoops_read_kmsg_hdr.exit

if.else5.i:                                       ; preds = %if.end
  %call8.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call4, ptr noundef nonnull @.str.29, ptr noundef %time, ptr noundef %tv_nsec, ptr noundef nonnull %header_length.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 2
  br i1 %cmp9.i, label %if.then11.i, label %if.else14.i

if.then11.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tv_nsec, align 8
  %mul13.i = mul i32 %34, 1000
  store i32 %mul13.i, ptr %tv_nsec, align 8
  br label %ramoops_read_kmsg_hdr.exit

if.else14.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %time, align 8
  %36 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tv_nsec, align 8
  br label %ramoops_read_kmsg_hdr.exit

ramoops_read_kmsg_hdr.exit:                       ; preds = %if.else14.i, %if.then11.i, %if.then.i165
  %.sink.i = phi i8 [ 0, %if.then11.i ], [ 0, %if.else14.i ], [ %..i, %if.then.i165 ]
  %37 = ptrtoint ptr %compressed to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink.i, ptr %compressed, align 1
  %38 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %header_length.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_length.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_type.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not = icmp eq i32 %39, 0
  br i1 %tobool8.not, label %if.end10, label %ramoops_read_kmsg_hdr.exit.prz_ok.exit172_crit_edge

ramoops_read_kmsg_hdr.exit.prz_ok.exit172_crit_edge: ; preds = %ramoops_read_kmsg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit172

if.end10:                                         ; preds = %ramoops_read_kmsg_hdr.exit
  call void @persistent_ram_free_old(ptr noundef nonnull %16) #11
  call void @persistent_ram_zap(ptr noundef nonnull %16) #11
  %40 = ptrtoint ptr %dump_read_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dump_read_cnt, align 4
  %42 = ptrtoint ptr %max_dump_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_dump_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp324 = icmp ult i32 %41, %43
  br i1 %cmp324, label %if.end10.while.body.backedge_crit_edge, label %if.end10.land.lhs.true_crit_edge

if.end10.land.lhs.true_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end10.while.body.backedge_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.backedge

prz_ok.exit172:                                   ; preds = %ramoops_read_kmsg_hdr.exit.prz_ok.exit172_crit_edge, %land.rhs.i.prz_ok.exit172_crit_edge
  %header_length.0.ph.lcssa364.ph = phi i32 [ %39, %ramoops_read_kmsg_hdr.exit.prz_ok.exit172_crit_edge ], [ 0, %land.rhs.i.prz_ok.exit172_crit_edge ]
  %call.i167 = call i32 @persistent_ram_old_size(ptr noundef nonnull %16) #11
  %call1.i168 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %16, ptr noundef null, i32 noundef 0) #11
  %add.i169 = sub i32 0, %call1.i168
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i167, i32 %add.i169)
  %tobool2.i170.not = icmp eq i32 %call.i167, %add.i169
  br i1 %tobool2.i170.not, label %prz_ok.exit172.land.lhs.true_crit_edge, label %prz_ok.exit172.prz_ok.exit194_crit_edge

prz_ok.exit172.prz_ok.exit194_crit_edge:          ; preds = %prz_ok.exit172
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit194

prz_ok.exit172.land.lhs.true_crit_edge:           ; preds = %prz_ok.exit172
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %prz_ok.exit172.land.lhs.true_crit_edge, %if.end10.land.lhs.true_crit_edge, %while.cond.backedge.land.lhs.true_crit_edge
  %prz.0.lcssa363 = phi ptr [ %16, %prz_ok.exit172.land.lhs.true_crit_edge ], [ null, %while.cond.backedge.land.lhs.true_crit_edge ], [ null, %if.end10.land.lhs.true_crit_edge ]
  %header_length.0.ph.lcssa362 = phi i32 [ %header_length.0.ph.lcssa364.ph, %prz_ok.exit172.land.lhs.true_crit_edge ], [ 0, %while.cond.backedge.land.lhs.true_crit_edge ], [ 0, %if.end10.land.lhs.true_crit_edge ]
  %console_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 16
  %44 = ptrtoint ptr %console_read_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %console_read_cnt, align 4
  %inc12 = add i32 %45, 1
  store i32 %inc12, ptr %console_read_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool13.not = icmp eq i32 %45, 0
  br i1 %tobool13.not, label %land.lhs.true.if.then14_crit_edge, label %if.end16

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

land.lhs.true.thread:                             ; preds = %entry
  %console_read_cnt368 = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 16
  %46 = ptrtoint ptr %console_read_cnt368 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %console_read_cnt368, align 4
  %inc12369 = add i32 %47, 1
  store i32 %inc12369, ptr %console_read_cnt368, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool13.not370 = icmp eq i32 %47, 0
  br i1 %tobool13.not370, label %land.lhs.true.thread.if.then14_crit_edge, label %land.lhs.true.thread.land.lhs.true18_crit_edge

land.lhs.true.thread.land.lhs.true18_crit_edge:   ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true18

land.lhs.true.thread.if.then14_crit_edge:         ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %land.lhs.true.thread.if.then14_crit_edge, %land.lhs.true.if.then14_crit_edge
  %header_length.0.ph.lcssa362373 = phi i32 [ 0, %land.lhs.true.thread.if.then14_crit_edge ], [ %header_length.0.ph.lcssa362, %land.lhs.true.if.then14_crit_edge ]
  %cprz = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 1
  %tobool.not.i173 = icmp eq ptr %cprz, null
  br i1 %tobool.not.i173, label %if.then14.land.lhs.true18_crit_edge, label %if.end.i175

if.then14.land.lhs.true18_crit_edge:              ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true18

if.end.i175:                                      ; preds = %if.then14
  %48 = ptrtoint ptr %cprz to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cprz, align 4
  %tobool1.not.i174 = icmp eq ptr %49, null
  br i1 %tobool1.not.i174, label %if.end.i175.land.lhs.true18_crit_edge, label %if.end3.i178

if.end.i175.land.lhs.true18_crit_edge:            ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true18

if.end3.i178:                                     ; preds = %if.end.i175
  %type.i176 = getelementptr inbounds %struct.persistent_ram_zone, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %type.i176 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i177 = icmp eq i32 %51, 0
  br i1 %cmp.i177, label %if.then4.i179, label %if.end3.i178.if.end5.i182_crit_edge

if.end3.i178.if.end5.i182_crit_edge:              ; preds = %if.end3.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i182

if.then4.i179:                                    ; preds = %if.end3.i178
  call void @__sanitizer_cov_trace_pc() #13
  call void @persistent_ram_save_old(ptr noundef nonnull %49) #11
  br label %if.end5.i182

if.end5.i182:                                     ; preds = %if.then4.i179, %if.end3.i178.if.end5.i182_crit_edge
  %call.i180 = call i32 @persistent_ram_old_size(ptr noundef nonnull %49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool6.not.i181 = icmp eq i32 %call.i180, 0
  br i1 %tobool6.not.i181, label %if.end5.i182.land.lhs.true18_crit_edge, label %if.end8.i185

if.end5.i182.land.lhs.true18_crit_edge:           ; preds = %if.end5.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true18

if.end8.i185:                                     ; preds = %if.end5.i182
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %type.i176 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i176, align 4
  %type10.i183 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %54 = ptrtoint ptr %type10.i183 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %type10.i183, align 4
  %id11.i184 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %55 = ptrtoint ptr %id11.i184 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %id11.i184, align 8
  br label %prz_ok.exit194

if.end16:                                         ; preds = %land.lhs.true
  %tobool.not.i188 = icmp eq ptr %prz.0.lcssa363, null
  br i1 %tobool.not.i188, label %if.end16.land.lhs.true18_crit_edge, label %if.end16.prz_ok.exit194_crit_edge

if.end16.prz_ok.exit194_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit194

if.end16.land.lhs.true18_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true18

prz_ok.exit194:                                   ; preds = %if.end16.prz_ok.exit194_crit_edge, %if.end8.i185, %prz_ok.exit172.prz_ok.exit194_crit_edge
  %header_length.0.ph.lcssa360 = phi i32 [ %header_length.0.ph.lcssa362, %if.end16.prz_ok.exit194_crit_edge ], [ %header_length.0.ph.lcssa362373, %if.end8.i185 ], [ %header_length.0.ph.lcssa364.ph, %prz_ok.exit172.prz_ok.exit194_crit_edge ]
  %prz.2275 = phi ptr [ %prz.0.lcssa363, %if.end16.prz_ok.exit194_crit_edge ], [ %49, %if.end8.i185 ], [ %16, %prz_ok.exit172.prz_ok.exit194_crit_edge ]
  %call.i189 = call i32 @persistent_ram_old_size(ptr noundef nonnull %prz.2275) #11
  %call1.i190 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %prz.2275, ptr noundef null, i32 noundef 0) #11
  %add.i191 = sub i32 0, %call1.i190
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i189, i32 %add.i191)
  %tobool2.i192.not = icmp eq i32 %call.i189, %add.i191
  br i1 %tobool2.i192.not, label %prz_ok.exit194.land.lhs.true18_crit_edge, label %prz_ok.exit194.prz_ok.exit216_crit_edge

prz_ok.exit194.prz_ok.exit216_crit_edge:          ; preds = %prz_ok.exit194
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit216

prz_ok.exit194.land.lhs.true18_crit_edge:         ; preds = %prz_ok.exit194
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true18

land.lhs.true18:                                  ; preds = %prz_ok.exit194.land.lhs.true18_crit_edge, %if.end16.land.lhs.true18_crit_edge, %if.end5.i182.land.lhs.true18_crit_edge, %if.end.i175.land.lhs.true18_crit_edge, %if.then14.land.lhs.true18_crit_edge, %land.lhs.true.thread.land.lhs.true18_crit_edge
  %header_length.0.ph.lcssa361 = phi i32 [ %header_length.0.ph.lcssa360, %prz_ok.exit194.land.lhs.true18_crit_edge ], [ %header_length.0.ph.lcssa362, %if.end16.land.lhs.true18_crit_edge ], [ %header_length.0.ph.lcssa362373, %if.then14.land.lhs.true18_crit_edge ], [ %header_length.0.ph.lcssa362373, %if.end.i175.land.lhs.true18_crit_edge ], [ %header_length.0.ph.lcssa362373, %if.end5.i182.land.lhs.true18_crit_edge ], [ 0, %land.lhs.true.thread.land.lhs.true18_crit_edge ]
  %prz.2270277 = phi ptr [ %prz.2275, %prz_ok.exit194.land.lhs.true18_crit_edge ], [ null, %if.end16.land.lhs.true18_crit_edge ], [ null, %if.then14.land.lhs.true18_crit_edge ], [ null, %if.end.i175.land.lhs.true18_crit_edge ], [ null, %if.end5.i182.land.lhs.true18_crit_edge ], [ null, %land.lhs.true.thread.land.lhs.true18_crit_edge ]
  %pmsg_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 19
  %56 = ptrtoint ptr %pmsg_read_cnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pmsg_read_cnt, align 4
  %inc19 = add i32 %57, 1
  store i32 %inc19, ptr %pmsg_read_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool20.not = icmp eq i32 %57, 0
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true18
  %mprz = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 3
  %tobool.not.i195 = icmp eq ptr %mprz, null
  br i1 %tobool.not.i195, label %if.then21.if.then25_crit_edge, label %if.end.i197

if.then21.if.then25_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.i197:                                      ; preds = %if.then21
  %58 = ptrtoint ptr %mprz to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mprz, align 4
  %tobool1.not.i196 = icmp eq ptr %59, null
  br i1 %tobool1.not.i196, label %if.end.i197.if.then25_crit_edge, label %if.end3.i200

if.end.i197.if.then25_crit_edge:                  ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end3.i200:                                     ; preds = %if.end.i197
  %type.i198 = getelementptr inbounds %struct.persistent_ram_zone, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %type.i198 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i199 = icmp eq i32 %61, 0
  br i1 %cmp.i199, label %if.then4.i201, label %if.end3.i200.if.end5.i204_crit_edge

if.end3.i200.if.end5.i204_crit_edge:              ; preds = %if.end3.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i204

if.then4.i201:                                    ; preds = %if.end3.i200
  call void @__sanitizer_cov_trace_pc() #13
  call void @persistent_ram_save_old(ptr noundef nonnull %59) #11
  br label %if.end5.i204

if.end5.i204:                                     ; preds = %if.then4.i201, %if.end3.i200.if.end5.i204_crit_edge
  %call.i202 = call i32 @persistent_ram_old_size(ptr noundef nonnull %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool6.not.i203 = icmp eq i32 %call.i202, 0
  br i1 %tobool6.not.i203, label %if.end5.i204.if.then25_crit_edge, label %if.end8.i207

if.end5.i204.if.then25_crit_edge:                 ; preds = %if.end5.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end8.i207:                                     ; preds = %if.end5.i204
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %type.i198 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type.i198, align 4
  %type10.i205 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %64 = ptrtoint ptr %type10.i205 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %type10.i205, align 4
  %id11.i206 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %65 = ptrtoint ptr %id11.i206 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %id11.i206, align 8
  br label %prz_ok.exit216

if.end23:                                         ; preds = %land.lhs.true18
  %tobool.not.i210 = icmp eq ptr %prz.2270277, null
  br i1 %tobool.not.i210, label %if.end23.if.then25_crit_edge, label %if.end23.prz_ok.exit216_crit_edge

if.end23.prz_ok.exit216_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit216

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

prz_ok.exit216:                                   ; preds = %if.end23.prz_ok.exit216_crit_edge, %if.end8.i207, %prz_ok.exit194.prz_ok.exit216_crit_edge
  %header_length.0.ph.lcssa359 = phi i32 [ %header_length.0.ph.lcssa361, %if.end23.prz_ok.exit216_crit_edge ], [ %header_length.0.ph.lcssa361, %if.end8.i207 ], [ %header_length.0.ph.lcssa360, %prz_ok.exit194.prz_ok.exit216_crit_edge ]
  %prz.3285 = phi ptr [ %prz.2270277, %if.end23.prz_ok.exit216_crit_edge ], [ %59, %if.end8.i207 ], [ %prz.2275, %prz_ok.exit194.prz_ok.exit216_crit_edge ]
  %call.i211 = call i32 @persistent_ram_old_size(ptr noundef nonnull %prz.3285) #11
  %call1.i212 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %prz.3285, ptr noundef null, i32 noundef 0) #11
  %add.i213 = sub i32 0, %call1.i212
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i211, i32 %add.i213)
  %tobool2.i214.not = icmp eq i32 %call.i211, %add.i213
  br i1 %tobool2.i214.not, label %prz_ok.exit216.if.then25_crit_edge, label %prz_ok.exit216.prz_ok.exit263_crit_edge

prz_ok.exit216.prz_ok.exit263_crit_edge:          ; preds = %prz_ok.exit216
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit263

prz_ok.exit216.if.then25_crit_edge:               ; preds = %prz_ok.exit216
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then25:                                        ; preds = %prz_ok.exit216.if.then25_crit_edge, %if.end23.if.then25_crit_edge, %if.end5.i204.if.then25_crit_edge, %if.end.i197.if.then25_crit_edge, %if.then21.if.then25_crit_edge
  %header_length.0.ph.lcssa358 = phi i32 [ %header_length.0.ph.lcssa361, %if.end5.i204.if.then25_crit_edge ], [ %header_length.0.ph.lcssa361, %if.end.i197.if.then25_crit_edge ], [ %header_length.0.ph.lcssa361, %if.then21.if.then25_crit_edge ], [ %header_length.0.ph.lcssa361, %if.end23.if.then25_crit_edge ], [ %header_length.0.ph.lcssa359, %prz_ok.exit216.if.then25_crit_edge ]
  %flags = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 11
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %and = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %if.then25.if.else_crit_edge

if.then25.if.else_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true27:                                  ; preds = %if.then25
  %ftrace_read_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 18
  %68 = ptrtoint ptr %ftrace_read_cnt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ftrace_read_cnt, align 4
  %inc28 = add i32 %69, 1
  store i32 %inc28, ptr %ftrace_read_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool29.not = icmp eq i32 %69, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true27.if.else_crit_edge

land.lhs.true27.if.else_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true27
  %fprzs = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %fprzs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fprzs, align 4
  %tobool.not.i217 = icmp eq ptr %71, null
  br i1 %tobool.not.i217, label %if.then30.cleanup85_crit_edge, label %if.end.i219

if.then30.cleanup85_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.end.i219:                                      ; preds = %if.then30
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tobool1.not.i218 = icmp eq ptr %73, null
  br i1 %tobool1.not.i218, label %if.end.i219.cleanup85_crit_edge, label %if.end3.i222

if.end.i219.cleanup85_crit_edge:                  ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.end3.i222:                                     ; preds = %if.end.i219
  %type.i220 = getelementptr inbounds %struct.persistent_ram_zone, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %type.i220 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i221 = icmp eq i32 %75, 0
  br i1 %cmp.i221, label %if.then4.i223, label %if.end3.i222.if.end5.i226_crit_edge

if.end3.i222.if.end5.i226_crit_edge:              ; preds = %if.end3.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i226

if.then4.i223:                                    ; preds = %if.end3.i222
  call void @__sanitizer_cov_trace_pc() #13
  call void @persistent_ram_save_old(ptr noundef nonnull %73) #11
  br label %if.end5.i226

if.end5.i226:                                     ; preds = %if.then4.i223, %if.end3.i222.if.end5.i226_crit_edge
  %call.i224 = call i32 @persistent_ram_old_size(ptr noundef nonnull %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool6.not.i225 = icmp eq i32 %call.i224, 0
  br i1 %tobool6.not.i225, label %if.end5.i226.cleanup85_crit_edge, label %if.end8.i229

if.end5.i226.cleanup85_crit_edge:                 ; preds = %if.end5.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.end8.i229:                                     ; preds = %if.end5.i226
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %type.i220 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i220, align 4
  %type10.i227 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %78 = ptrtoint ptr %type10.i227 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %type10.i227, align 4
  br label %prz_ok.exit263.sink.split

if.else:                                          ; preds = %land.lhs.true27.if.else_crit_edge, %if.then25.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 124) #17
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %if.else.cleanup85_crit_edge, label %while.cond36.preheader

if.else.cleanup85_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

while.cond36.preheader:                           ; preds = %if.else
  %ftrace_read_cnt37 = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 18
  %max_ftrace_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 17
  %80 = ptrtoint ptr %ftrace_read_cnt37 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ftrace_read_cnt37, align 4
  %82 = ptrtoint ptr %max_ftrace_cnt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_ftrace_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp38337 = icmp ult i32 %81, %83
  br i1 %cmp38337, label %while.body39.lr.ph, label %while.cond36.preheader.prz_ok.exit263.sink.split_crit_edge

while.cond36.preheader.prz_ok.exit263.sink.split_crit_edge: ; preds = %while.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit263.sink.split

while.body39.lr.ph:                               ; preds = %while.cond36.preheader
  %fprzs40 = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 2
  %type10.i244 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %id11.i246 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %ecc_info = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 14
  %corrected_bytes48 = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 12
  %bad_blocks49 = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 13
  %old_log = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 15
  %old_log_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 16
  br label %while.body39

while.body39:                                     ; preds = %while.cond36.backedge.while.body39_crit_edge, %while.body39.lr.ph
  %84 = phi i32 [ %81, %while.body39.lr.ph ], [ %110, %while.cond36.backedge.while.body39_crit_edge ]
  %85 = ptrtoint ptr %fprzs40 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fprzs40, align 4
  %inc42 = add nuw i32 %84, 1
  %87 = ptrtoint ptr %ftrace_read_cnt37 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %inc42, ptr %ftrace_read_cnt37, align 4
  %tobool.not.i233 = icmp eq ptr %86, null
  br i1 %tobool.not.i233, label %while.body39.while.cond36.backedge_crit_edge, label %if.end.i236

while.body39.while.cond36.backedge_crit_edge:     ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond36.backedge

if.end.i236:                                      ; preds = %while.body39
  %arrayidx.i234 = getelementptr ptr, ptr %86, i32 %84
  %88 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i234, align 4
  %tobool1.not.i235 = icmp eq ptr %89, null
  br i1 %tobool1.not.i235, label %if.end.i236.while.cond36.backedge_crit_edge, label %if.end3.i239

if.end.i236.while.cond36.backedge_crit_edge:      ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond36.backedge

if.end3.i239:                                     ; preds = %if.end.i236
  %type.i237 = getelementptr inbounds %struct.persistent_ram_zone, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %type.i237 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i238 = icmp eq i32 %91, 0
  br i1 %cmp.i238, label %if.then4.i240, label %if.end3.i239.if.end5.i243_crit_edge

if.end3.i239.if.end5.i243_crit_edge:              ; preds = %if.end3.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i243

if.then4.i240:                                    ; preds = %if.end3.i239
  call void @__sanitizer_cov_trace_pc() #13
  call void @persistent_ram_save_old(ptr noundef nonnull %89) #11
  br label %if.end5.i243

if.end5.i243:                                     ; preds = %if.then4.i240, %if.end3.i239.if.end5.i243_crit_edge
  %call.i241 = call i32 @persistent_ram_old_size(ptr noundef nonnull %89) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool6.not.i242 = icmp eq i32 %call.i241, 0
  br i1 %tobool6.not.i242, label %if.end5.i243.while.cond36.backedge_crit_edge, label %land.rhs.i255

if.end5.i243.while.cond36.backedge_crit_edge:     ; preds = %if.end5.i243
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond36.backedge

land.rhs.i255:                                    ; preds = %if.end5.i243
  %92 = ptrtoint ptr %type.i237 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %type.i237, align 4
  %94 = ptrtoint ptr %type10.i244 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %type10.i244, align 4
  %conv.i245 = sext i32 %84 to i64
  %95 = ptrtoint ptr %id11.i246 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv.i245, ptr %id11.i246, align 8
  %call.i251 = call i32 @persistent_ram_old_size(ptr noundef nonnull %89) #11
  %call1.i252 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %89, ptr noundef null, i32 noundef 0) #11
  %add.i253 = sub i32 0, %call1.i252
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i251, i32 %add.i253)
  %tobool2.i254.not = icmp eq i32 %call.i251, %add.i253
  br i1 %tobool2.i254.not, label %land.rhs.i255.while.cond36.backedge_crit_edge, label %if.end46

land.rhs.i255.while.cond36.backedge_crit_edge:    ; preds = %land.rhs.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond36.backedge

if.end46:                                         ; preds = %land.rhs.i255
  %ecc_info47 = getelementptr inbounds %struct.persistent_ram_zone, ptr %89, i32 0, i32 14
  %96 = call ptr @memcpy(ptr %ecc_info, ptr %ecc_info47, i32 20)
  %corrected_bytes = getelementptr inbounds %struct.persistent_ram_zone, ptr %89, i32 0, i32 12
  %97 = ptrtoint ptr %corrected_bytes to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %corrected_bytes, align 4
  %99 = ptrtoint ptr %corrected_bytes48 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %corrected_bytes48, align 8
  %add = add i32 %100, %98
  store i32 %add, ptr %corrected_bytes48, align 8
  %bad_blocks = getelementptr inbounds %struct.persistent_ram_zone, ptr %89, i32 0, i32 13
  %101 = ptrtoint ptr %bad_blocks to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bad_blocks, align 4
  %103 = ptrtoint ptr %bad_blocks49 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bad_blocks49, align 4
  %add50 = add i32 %104, %102
  store i32 %add50, ptr %bad_blocks49, align 4
  %old_log51 = getelementptr inbounds %struct.persistent_ram_zone, ptr %89, i32 0, i32 15
  %105 = ptrtoint ptr %old_log51 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %old_log51, align 4
  %old_log_size52 = getelementptr inbounds %struct.persistent_ram_zone, ptr %89, i32 0, i32 16
  %107 = ptrtoint ptr %old_log_size52 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %old_log_size52, align 4
  %call53 = call i32 @pstore_ftrace_combine_log(ptr noundef %old_log, ptr noundef %old_log_size, ptr noundef %106, i32 noundef %108) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end46.while.cond36.backedge_crit_edge, label %if.end46.if.then82_crit_edge

if.end46.if.then82_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.end46.while.cond36.backedge_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond36.backedge

while.cond36.backedge:                            ; preds = %if.end46.while.cond36.backedge_crit_edge, %land.rhs.i255.while.cond36.backedge_crit_edge, %if.end5.i243.while.cond36.backedge_crit_edge, %if.end.i236.while.cond36.backedge_crit_edge, %while.body39.while.cond36.backedge_crit_edge
  %109 = ptrtoint ptr %ftrace_read_cnt37 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ftrace_read_cnt37, align 4
  %111 = ptrtoint ptr %max_ftrace_cnt to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_ftrace_cnt, align 4
  %cmp38 = icmp ult i32 %110, %112
  br i1 %cmp38, label %while.cond36.backedge.while.body39_crit_edge, label %while.cond36.backedge.prz_ok.exit263.sink.split_crit_edge

while.cond36.backedge.prz_ok.exit263.sink.split_crit_edge: ; preds = %while.cond36.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %prz_ok.exit263.sink.split

while.cond36.backedge.while.body39_crit_edge:     ; preds = %while.cond36.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body39

prz_ok.exit263.sink.split:                        ; preds = %while.cond36.backedge.prz_ok.exit263.sink.split_crit_edge, %while.cond36.preheader.prz_ok.exit263.sink.split_crit_edge, %if.end8.i229
  %free_prz.1.off0310.ph = phi i1 [ false, %if.end8.i229 ], [ true, %while.cond36.preheader.prz_ok.exit263.sink.split_crit_edge ], [ true, %while.cond36.backedge.prz_ok.exit263.sink.split_crit_edge ]
  %prz.5309.ph = phi ptr [ %73, %if.end8.i229 ], [ %call7.i.i, %while.cond36.preheader.prz_ok.exit263.sink.split_crit_edge ], [ %call7.i.i, %while.cond36.backedge.prz_ok.exit263.sink.split_crit_edge ]
  %id = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %113 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 0, ptr %id, align 8
  br label %prz_ok.exit263

prz_ok.exit263:                                   ; preds = %prz_ok.exit263.sink.split, %prz_ok.exit216.prz_ok.exit263_crit_edge
  %header_length.0.ph.lcssa357 = phi i32 [ %header_length.0.ph.lcssa359, %prz_ok.exit216.prz_ok.exit263_crit_edge ], [ %header_length.0.ph.lcssa358, %prz_ok.exit263.sink.split ]
  %free_prz.1.off0310 = phi i1 [ false, %prz_ok.exit216.prz_ok.exit263_crit_edge ], [ %free_prz.1.off0310.ph, %prz_ok.exit263.sink.split ]
  %prz.5309 = phi ptr [ %prz.3285, %prz_ok.exit216.prz_ok.exit263_crit_edge ], [ %prz.5309.ph, %prz_ok.exit263.sink.split ]
  %call.i258 = call i32 @persistent_ram_old_size(ptr noundef nonnull %prz.5309) #11
  %call1.i259 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %prz.5309, ptr noundef null, i32 noundef 0) #11
  %add.i260 = sub i32 0, %call1.i259
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i258, i32 %add.i260)
  %tobool2.i261.not = icmp eq i32 %call.i258, %add.i260
  br i1 %tobool2.i261.not, label %prz_ok.exit263.out_crit_edge, label %if.end63

prz_ok.exit263.out_crit_edge:                     ; preds = %prz_ok.exit263
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end63:                                         ; preds = %prz_ok.exit263
  %call64 = call i32 @persistent_ram_old_size(ptr noundef nonnull %prz.5309) #11
  %sub = sub i32 %call64, %header_length.0.ph.lcssa357
  %call65 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %prz.5309, ptr noundef null, i32 noundef 0) #11
  %ecc_notice_size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 6
  %114 = ptrtoint ptr %ecc_notice_size to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call65, ptr %ecc_notice_size, align 8
  %add67 = add i32 %sub, %call65
  %add68 = add i32 %add67, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add68, i32 noundef 3264) #16
  %buf = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %115 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call9.i, ptr %buf, align 8
  %cmp71 = icmp eq ptr %call9.i, null
  br i1 %cmp71, label %if.end63.out_crit_edge, label %if.end73

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end73:                                         ; preds = %if.end63
  %call75 = call ptr @persistent_ram_old(ptr noundef nonnull %prz.5309) #11
  %add.ptr = getelementptr i8, ptr %call75, i32 %header_length.0.ph.lcssa357
  %116 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr, i32 %sub)
  %117 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buf, align 8
  %add.ptr77 = getelementptr i8, ptr %118, i32 %sub
  %119 = ptrtoint ptr %ecc_notice_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ecc_notice_size, align 8
  %add79 = add i32 %120, 1
  %call80 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %prz.5309, ptr noundef %add.ptr77, i32 noundef %add79) #11
  br i1 %free_prz.1.off0310, label %if.end73.if.then82_crit_edge, label %if.end73.cleanup85_crit_edge

if.end73.cleanup85_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.end73.if.then82_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

out:                                              ; preds = %if.end63.out_crit_edge, %prz_ok.exit263.out_crit_edge
  %size.2 = phi i32 [ 0, %prz_ok.exit263.out_crit_edge ], [ -12, %if.end63.out_crit_edge ]
  br i1 %free_prz.1.off0310, label %out.if.then82_crit_edge, label %out.cleanup85_crit_edge

out.cleanup85_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

out.if.then82_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.then82:                                        ; preds = %out.if.then82_crit_edge, %if.end73.if.then82_crit_edge, %if.end46.if.then82_crit_edge
  %prz.6319 = phi ptr [ %prz.5309, %if.end73.if.then82_crit_edge ], [ %prz.5309, %out.if.then82_crit_edge ], [ %call7.i.i, %if.end46.if.then82_crit_edge ]
  %size.2318 = phi i32 [ %sub, %if.end73.if.then82_crit_edge ], [ %size.2, %out.if.then82_crit_edge ], [ %call53, %if.end46.if.then82_crit_edge ]
  %old_log83 = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz.6319, i32 0, i32 15
  %121 = ptrtoint ptr %old_log83 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %old_log83, align 4
  call void @kfree(ptr noundef %122) #11
  call void @kfree(ptr noundef %prz.6319) #11
  br label %cleanup85

cleanup85:                                        ; preds = %if.then82, %out.cleanup85_crit_edge, %if.end73.cleanup85_crit_edge, %if.else.cleanup85_crit_edge, %if.end5.i226.cleanup85_crit_edge, %if.end.i219.cleanup85_crit_edge, %if.then30.cleanup85_crit_edge
  %retval.1 = phi i32 [ %size.2318, %if.then82 ], [ %size.2, %out.cleanup85_crit_edge ], [ %sub, %if.end73.cleanup85_crit_edge ], [ -12, %if.else.cleanup85_crit_edge ], [ 0, %if.then30.cleanup85_crit_edge ], [ 0, %if.end.i219.cleanup85_crit_edge ], [ 0, %if.end5.i226.cleanup85_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_write(ptr nocapture noundef readonly %record) #4 align 64 {
entry:
  %hdr.i = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %record, align 8
  %data = getelementptr inbounds %struct.pstore_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup57_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then6
    i32 7, label %if.then22
    i32 0, label %if.end34
  ]

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.then:                                          ; preds = %entry
  %cprz = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %cprz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cprz, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.cleanup57_crit_edge, label %if.end

if.then.cleanup57_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %buf = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 8
  %size3 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %11 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size3, align 4
  %call = tail call i32 @persistent_ram_write(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12) #11
  br label %cleanup57

if.then6:                                         ; preds = %entry
  %fprzs = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %fprzs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fprzs, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.then6.cleanup57_crit_edge, label %if.end9

if.then6.cleanup57_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end9:                                          ; preds = %if.then6
  %flags = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %17 = tail call i32 @llvm.read_register.i32(metadata !230) #11
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %zonenum.0 = phi i32 [ %20, %if.then11 ], [ 0, %if.end9.if.end14_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %14, i32 %zonenum.0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %buf16 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %23 = ptrtoint ptr %buf16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf16, align 8
  %size17 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %25 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size17, align 4
  %call18 = tail call i32 @persistent_ram_write(ptr noundef %22, ptr noundef %24, i32 noundef %26) #11
  br label %cleanup57

if.then22:                                        ; preds = %entry
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @ramoops_pstore_write._rs, ptr noundef nonnull @__func__.ramoops_pstore_write) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup57_crit_edge, label %do.end

if.then22.cleanup57_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.ramoops_pstore_write) #15
  br label %cleanup57

if.end34:                                         ; preds = %entry
  %part = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 9
  %27 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp35.not = icmp eq i32 %28, 1
  br i1 %cmp35.not, label %if.end37, label %if.end34.cleanup57_crit_edge

if.end34.cleanup57_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end37:                                         ; preds = %if.end34
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %tobool38.not = icmp eq ptr %30, null
  br i1 %tobool38.not, label %if.end37.cleanup57_crit_edge, label %if.end40

if.end37.cleanup57_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end40:                                         ; preds = %if.end37
  %dump_write_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 14
  %31 = ptrtoint ptr %dump_write_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dump_write_cnt, align 4
  %arrayidx42 = getelementptr ptr, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx42, align 4
  tail call void @persistent_ram_zap(ptr noundef %34) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hdr.i) #11
  %35 = call ptr @memset(ptr %hdr.i, i32 255, i32 36)
  %time.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  %36 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %time.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %39, 1000
  %compressed.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 10
  %40 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %compressed.i, align 8, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  %cond.i = select i1 %tobool.not.i, i32 68, i32 67
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %hdr.i, i32 noundef 36, ptr noundef nonnull @.str.32, i64 noundef %37, i32 noundef %div.i, i32 noundef %cond.i) #11
  %call3.i = call i32 @persistent_ram_write(ptr noundef %34, ptr noundef nonnull %hdr.i, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hdr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool44.not = icmp eq i32 %call.i, 0
  br i1 %tobool44.not, label %if.end40.cleanup57_crit_edge, label %if.end46

if.end40.cleanup57_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %size47 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %42 = ptrtoint ptr %size47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size47, align 4
  %add = add i32 %43, %call.i
  %buffer_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %34, i32 0, i32 8
  %44 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %45)
  %cmp48 = icmp ugt i32 %add, %45
  %sub = sub i32 %45, %call.i
  %spec.select = select i1 %cmp48, i32 %sub, i32 %43
  %buf52 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %46 = ptrtoint ptr %buf52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf52, align 8
  %call53 = call i32 @persistent_ram_write(ptr noundef %34, ptr noundef %47, i32 noundef %spec.select) #11
  %48 = ptrtoint ptr %dump_write_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dump_write_cnt, align 4
  %add55 = add i32 %49, 1
  %max_dump_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 13
  %50 = ptrtoint ptr %max_dump_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_dump_cnt, align 4
  %rem = urem i32 %add55, %51
  store i32 %rem, ptr %dump_write_cnt, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %if.end46, %if.end40.cleanup57_crit_edge, %if.end37.cleanup57_crit_edge, %if.end34.cleanup57_crit_edge, %do.end, %if.then22.cleanup57_crit_edge, %if.end14, %if.then6.cleanup57_crit_edge, %if.end, %if.then.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.1 = phi i32 [ 0, %if.end ], [ 0, %if.end46 ], [ -12, %if.then.cleanup57_crit_edge ], [ 0, %if.end14 ], [ -12, %if.then6.cleanup57_crit_edge ], [ -22, %do.end ], [ -22, %if.then22.cleanup57_crit_edge ], [ -22, %entry.cleanup57_crit_edge ], [ -28, %if.end34.cleanup57_crit_edge ], [ -28, %if.end37.cleanup57_crit_edge ], [ -12, %if.end40.cleanup57_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_write_user(ptr nocapture noundef readonly %record, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %record, align 8
  %data = getelementptr inbounds %struct.pstore_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %mprz = getelementptr inbounds %struct.ramoops_context, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mprz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mprz, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %call = tail call i32 @persistent_ram_write_user(ptr noundef nonnull %7, ptr noundef %buf, i32 noundef %9) #11
  br label %return

return:                                           ; preds = %if.end, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.end ], [ -12, %if.then.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_erase(ptr nocapture noundef readonly %record) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %record, align 8
  %data = getelementptr inbounds %struct.pstore_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 7, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %id = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %id, align 8
  %max_dump_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %max_dump_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_dump_cnt, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp.not = icmp ult i64 %8, %conv
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %idxprom = trunc i64 %8 to i32
  %arrayidx = getelementptr ptr, ptr %12, i32 %idxprom
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cprz = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %id5 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 2
  %13 = ptrtoint ptr %id5 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %id5, align 8
  %max_ftrace_cnt = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %max_ftrace_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_ftrace_cnt, align 4
  %conv6 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv6)
  %cmp7.not = icmp ult i64 %14, %conv6
  br i1 %cmp7.not, label %if.end10, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %fprzs = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %fprzs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fprzs, align 4
  %idxprom12 = trunc i64 %14 to i32
  %arrayidx13 = getelementptr ptr, ptr %18, i32 %idxprom12
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mprz = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %if.end10, %sw.bb3, %if.end
  %prz.0.in = phi ptr [ %mprz, %sw.bb14 ], [ %arrayidx13, %if.end10 ], [ %cprz, %sw.bb3 ], [ %arrayidx, %if.end ]
  %19 = ptrtoint ptr %prz.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %prz.0 = load ptr, ptr %prz.0.in, align 4
  tail call void @persistent_ram_free_old(ptr noundef %prz.0) #11
  tail call void @persistent_ram_zap(ptr noundef %prz.0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @persistent_ram_old(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_free_old(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_zap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_ftrace_combine_log(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_old_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_ecc_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_save_old(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_write_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @persistent_ram_new(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_name_to_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !97, !99, !101, !102, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !126, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !146, !148, !149, !150, !151, !152, !153, !155, !157, !158, !159, !161, !162, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !217, !219, !220, !221, !223, !224, !225, !227, !228}
!llvm.named.register.sp = !{!230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__param_record_size, !1, !"__param_record_size", i1 false, i1 false}
!1 = !{!"../fs/pstore/ram.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_record_sizetype183, !1, !"__UNIQUE_ID_record_sizetype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_record_size184, !4, !"__UNIQUE_ID_record_size184", i1 false, i1 false}
!4 = !{!"../fs/pstore/ram.c", i32 31, i32 1}
!5 = !{ptr @__param_console_size, !6, !"__param_console_size", i1 false, i1 false}
!6 = !{!"../fs/pstore/ram.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_console_sizetype185, !6, !"__UNIQUE_ID_console_sizetype185", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_console_size186, !9, !"__UNIQUE_ID_console_size186", i1 false, i1 false}
!9 = !{!"../fs/pstore/ram.c", i32 36, i32 1}
!10 = !{ptr @__param_ftrace_size, !11, !"__param_ftrace_size", i1 false, i1 false}
!11 = !{!"../fs/pstore/ram.c", i32 39, i32 1}
!12 = !{ptr @__UNIQUE_ID_ftrace_sizetype187, !11, !"__UNIQUE_ID_ftrace_sizetype187", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ftrace_size188, !14, !"__UNIQUE_ID_ftrace_size188", i1 false, i1 false}
!14 = !{!"../fs/pstore/ram.c", i32 40, i32 1}
!15 = !{ptr @__param_pmsg_size, !16, !"__param_pmsg_size", i1 false, i1 false}
!16 = !{!"../fs/pstore/ram.c", i32 43, i32 1}
!17 = !{ptr @__UNIQUE_ID_pmsg_sizetype189, !16, !"__UNIQUE_ID_pmsg_sizetype189", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_pmsg_size190, !19, !"__UNIQUE_ID_pmsg_size190", i1 false, i1 false}
!19 = !{!"../fs/pstore/ram.c", i32 44, i32 1}
!20 = !{ptr @__param_mem_address, !21, !"__param_mem_address", i1 false, i1 false}
!21 = !{!"../fs/pstore/ram.c", i32 47, i32 1}
!22 = !{ptr @__UNIQUE_ID_mem_addresstype191, !21, !"__UNIQUE_ID_mem_addresstype191", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_mem_address192, !24, !"__UNIQUE_ID_mem_address192", i1 false, i1 false}
!24 = !{!"../fs/pstore/ram.c", i32 48, i32 1}
!25 = !{ptr @__param_mem_size, !26, !"__param_mem_size", i1 false, i1 false}
!26 = !{!"../fs/pstore/ram.c", i32 52, i32 1}
!27 = !{ptr @__UNIQUE_ID_mem_sizetype193, !26, !"__UNIQUE_ID_mem_sizetype193", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_mem_size194, !29, !"__UNIQUE_ID_mem_size194", i1 false, i1 false}
!29 = !{!"../fs/pstore/ram.c", i32 53, i32 1}
!30 = !{ptr @__param_mem_type, !31, !"__param_mem_type", i1 false, i1 false}
!31 = !{!"../fs/pstore/ram.c", i32 57, i32 1}
!32 = !{ptr @__UNIQUE_ID_mem_typetype195, !31, !"__UNIQUE_ID_mem_typetype195", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_mem_type196, !34, !"__UNIQUE_ID_mem_type196", i1 false, i1 false}
!34 = !{!"../fs/pstore/ram.c", i32 58, i32 1}
!35 = !{ptr @__param_max_reason, !36, !"__param_max_reason", i1 false, i1 false}
!36 = !{!"../fs/pstore/ram.c", i32 62, i32 1}
!37 = !{ptr @__UNIQUE_ID_max_reasontype197, !36, !"__UNIQUE_ID_max_reasontype197", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_max_reason198, !39, !"__UNIQUE_ID_max_reason198", i1 false, i1 false}
!39 = !{!"../fs/pstore/ram.c", i32 63, i32 1}
!40 = !{ptr @__param_ecc, !41, !"__param_ecc", i1 false, i1 false}
!41 = !{!"../fs/pstore/ram.c", i32 67, i32 1}
!42 = !{ptr @__UNIQUE_ID_ecctype199, !41, !"__UNIQUE_ID_ecctype199", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_ramoops_ecc200, !44, !"__UNIQUE_ID_ramoops_ecc200", i1 false, i1 false}
!44 = !{!"../fs/pstore/ram.c", i32 68, i32 1}
!45 = !{ptr @__param_dump_oops, !46, !"__param_dump_oops", i1 false, i1 false}
!46 = !{!"../fs/pstore/ram.c", i32 74, i32 1}
!47 = !{ptr @__UNIQUE_ID_dump_oopstype201, !46, !"__UNIQUE_ID_dump_oopstype201", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_dump_oops202, !49, !"__UNIQUE_ID_dump_oops202", i1 false, i1 false}
!49 = !{!"../fs/pstore/ram.c", i32 75, i32 1}
!50 = !{ptr @__initcall__kmod_ramoops__204_966_ramoops_init2, !51, !"__initcall__kmod_ramoops__204_966_ramoops_init2", i1 false, i1 false}
!51 = !{!"../fs/pstore/ram.c", i32 966, i32 1}
!52 = !{ptr @__exitcall_ramoops_exit, !53, !"__exitcall_ramoops_exit", i1 false, i1 false}
!53 = !{!"../fs/pstore/ram.c", i32 973, i32 1}
!54 = !{ptr @__UNIQUE_ID_file205, !55, !"__UNIQUE_ID_file205", i1 false, i1 false}
!55 = !{!"../fs/pstore/ram.c", i32 975, i32 1}
!56 = !{ptr @__UNIQUE_ID_license206, !55, !"__UNIQUE_ID_license206", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_author207, !58, !"__UNIQUE_ID_author207", i1 false, i1 false}
!58 = !{!"../fs/pstore/ram.c", i32 976, i32 1}
!59 = !{ptr @__UNIQUE_ID_description208, !60, !"__UNIQUE_ID_description208", i1 false, i1 false}
!60 = !{!"../fs/pstore/ram.c", i32 977, i32 1}
!61 = !{ptr @mem_address, !62, !"mem_address", i1 false, i1 false}
!62 = !{!"../fs/pstore/ram.c", i32 46, i32 27}
!63 = !{ptr @mem_size, !64, !"mem_size", i1 false, i1 false}
!64 = !{!"../fs/pstore/ram.c", i32 51, i32 14}
!65 = !{ptr @mem_type, !66, !"mem_type", i1 false, i1 false}
!66 = !{!"../fs/pstore/ram.c", i32 56, i32 21}
!67 = !{ptr @ramoops_ecc, !68, !"ramoops_ecc", i1 false, i1 false}
!68 = !{!"../fs/pstore/ram.c", i32 66, i32 12}
!69 = !{ptr @__param_str_record_size, !1, !"__param_str_record_size", i1 false, i1 false}
!70 = !{ptr @record_size, !71, !"record_size", i1 false, i1 false}
!71 = !{!"../fs/pstore/ram.c", i32 29, i32 14}
!72 = !{ptr @__param_str_console_size, !6, !"__param_str_console_size", i1 false, i1 false}
!73 = !{ptr @ramoops_console_size, !74, !"ramoops_console_size", i1 false, i1 false}
!74 = !{!"../fs/pstore/ram.c", i32 34, i32 14}
!75 = !{ptr @__param_str_ftrace_size, !11, !"__param_str_ftrace_size", i1 false, i1 false}
!76 = !{ptr @ramoops_ftrace_size, !77, !"ramoops_ftrace_size", i1 false, i1 false}
!77 = !{!"../fs/pstore/ram.c", i32 38, i32 14}
!78 = !{ptr @__param_str_pmsg_size, !16, !"__param_str_pmsg_size", i1 false, i1 false}
!79 = !{ptr @ramoops_pmsg_size, !80, !"ramoops_pmsg_size", i1 false, i1 false}
!80 = !{!"../fs/pstore/ram.c", i32 42, i32 14}
!81 = !{ptr @__param_str_mem_address, !21, !"__param_str_mem_address", i1 false, i1 false}
!82 = !{ptr @__param_str_mem_size, !26, !"__param_str_mem_size", i1 false, i1 false}
!83 = !{ptr @__param_str_mem_type, !31, !"__param_str_mem_type", i1 false, i1 false}
!84 = !{ptr @__param_str_max_reason, !36, !"__param_str_max_reason", i1 false, i1 false}
!85 = !{ptr @ramoops_max_reason, !86, !"ramoops_max_reason", i1 false, i1 false}
!86 = !{!"../fs/pstore/ram.c", i32 61, i32 12}
!87 = !{ptr @__param_str_ecc, !41, !"__param_str_ecc", i1 false, i1 false}
!88 = !{ptr @__param_str_dump_oops, !46, !"__param_str_dump_oops", i1 false, i1 false}
!89 = !{ptr @ramoops_dump_oops, !90, !"ramoops_dump_oops", i1 false, i1 false}
!90 = !{!"../fs/pstore/ram.c", i32 73, i32 12}
!91 = !{ptr @.str, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/pstore/ram.c", i32 918, i32 2}
!93 = !{ptr @.str.1, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.2, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ramoops_register_dummy._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @ramoops_register_dummy._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.3, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/pstore/ram.c", i32 946, i32 46}
!99 = !{ptr @.str.5, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/pstore/ram.c", i32 949, i32 3}
!101 = !{ptr @ramoops_register_dummy._entry.4, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ramoops_register_dummy._entry_ptr.6, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @dummy, !104, !"dummy", i1 false, i1 false}
!104 = !{!"../fs/pstore/ram.c", i32 103, i32 32}
!105 = !{ptr @ramoops_driver, !106, !"ramoops_driver", i1 false, i1 false}
!106 = !{!"../fs/pstore/ram.c", i32 891, i32 31}
!107 = !{ptr @.str.7, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/pstore/ram.c", i32 722, i32 3}
!109 = !{ptr @.str.8, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ramoops_probe._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @ramoops_probe._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.10, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/pstore/ram.c", i32 737, i32 3}
!114 = !{ptr @ramoops_probe._entry.9, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ramoops_probe._entry_ptr.11, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.13, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/pstore/ram.c", i32 743, i32 3}
!118 = !{ptr @ramoops_probe._entry.12, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ramoops_probe._entry_ptr.14, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.15, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/pstore/ram.c", i32 771, i32 26}
!122 = !{ptr @.str.16, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/pstore/ram.c", i32 777, i32 25}
!124 = !{ptr @.str.17, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/pstore/ram.c", i32 785, i32 26}
!126 = !{ptr @.str.18, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/pstore/ram.c", i32 793, i32 25}
!128 = !{ptr @.str.20, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/pstore/ram.c", i32 826, i32 4}
!130 = !{ptr @ramoops_probe._entry.19, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ramoops_probe._entry_ptr.21, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.23, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/pstore/ram.c", i32 834, i32 3}
!134 = !{ptr @ramoops_probe._entry.22, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ramoops_probe._entry_ptr.24, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.26, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/pstore/ram.c", i32 850, i32 2}
!138 = !{ptr @ramoops_probe._entry.25, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ramoops_probe._entry_ptr.27, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @oops_cxt, !141, !"oops_cxt", i1 false, i1 false}
!141 = !{!"../fs/pstore/ram.c", i32 438, i32 31}
!142 = !{ptr @.str.28, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/pstore/ram.c", i32 149, i32 21}
!144 = !{ptr @.str.29, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/pstore/ram.c", i32 157, i32 28}
!146 = !{ptr @.str.30, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/pstore/ram.c", i32 335, i32 3}
!148 = !{ptr @ramoops_pstore_write._rs, !147, !"_rs", i1 false, i1 false}
!149 = !{ptr @__func__.ramoops_pstore_write, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.31, !147, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ramoops_pstore_write._entry, !147, !"_entry", i1 false, i1 false}
!152 = !{ptr @ramoops_pstore_write._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.32, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/pstore/ram.c", i32 298, i32 3}
!155 = !{ptr @.str.33, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/pstore/ram.c", i32 640, i32 2}
!157 = !{ptr @.str.34, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ramoops_parse_dt.__UNIQUE_ID_ddebug203, !156, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!159 = !{ptr @.str.35, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/pstore/ram.c", i32 644, i32 3}
!161 = !{ptr @.str.36, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.37, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ramoops_parse_dt._entry, !160, !"_entry", i1 false, i1 false}
!164 = !{ptr @ramoops_parse_dt._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.38, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/pstore/ram.c", i32 655, i32 51}
!167 = !{ptr @.str.39, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/pstore/ram.c", i32 660, i32 37}
!169 = !{ptr @.str.40, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/pstore/ram.c", i32 673, i32 2}
!171 = !{ptr @.str.41, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/pstore/ram.c", i32 674, i32 2}
!173 = !{ptr @.str.42, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/pstore/ram.c", i32 675, i32 2}
!175 = !{ptr @.str.43, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/pstore/ram.c", i32 676, i32 2}
!177 = !{ptr @.str.44, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/pstore/ram.c", i32 677, i32 2}
!179 = !{ptr @.str.45, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/pstore/ram.c", i32 678, i32 2}
!181 = !{ptr @.str.46, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/pstore/ram.c", i32 679, i32 2}
!183 = !{ptr @.str.47, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/pstore/ram.c", i32 680, i32 2}
!185 = !{ptr @.str.48, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/pstore/ram.c", i32 696, i32 36}
!187 = !{ptr @.str.49, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/pstore/ram.c", i32 616, i32 3}
!189 = !{ptr @.str.50, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ramoops_parse_dt_u32._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @ramoops_parse_dt_u32._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.52, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/pstore/ram.c", i32 623, i32 3}
!194 = !{ptr @ramoops_parse_dt_u32._entry.51, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @ramoops_parse_dt_u32._entry_ptr.53, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.54, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/pstore/ram.c", i32 500, i32 4}
!198 = !{ptr @.str.55, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @ramoops_init_przs._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @ramoops_init_przs._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.57, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/pstore/ram.c", i32 507, i32 4}
!203 = !{ptr @ramoops_init_przs._entry.56, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @ramoops_init_przs._entry_ptr.58, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.60, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/pstore/ram.c", i32 514, i32 3}
!207 = !{ptr @ramoops_init_przs._entry.59, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ramoops_init_przs._entry_ptr.61, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/pstore/ram.c", i32 523, i32 3}
!211 = !{ptr @ramoops_init_przs._entry.62, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @ramoops_init_przs._entry_ptr.64, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.65, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/pstore/ram.c", i32 535, i32 34}
!215 = !{ptr @.str.66, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/pstore/ram.c", i32 537, i32 34}
!217 = !{ptr @.str.68, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/pstore/ram.c", i32 545, i32 4}
!219 = !{ptr @ramoops_init_przs._entry.67, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @ramoops_init_przs._entry_ptr.69, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.70, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/pstore/ram.c", i32 579, i32 3}
!223 = !{ptr @ramoops_init_prz._entry, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @ramoops_init_prz._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @ramoops_init_prz._entry.71, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../fs/pstore/ram.c", i32 592, i32 3}
!227 = !{ptr @ramoops_init_prz._entry_ptr.72, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @dt_match, !229, !"dt_match", i1 false, i1 false}
!229 = !{!"../fs/pstore/ram.c", i32 886, i32 34}
!230 = !{!"sp"}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{i32 0, i32 33}
!241 = !{i64 2148715619, i64 2148715624, i64 2148715637, i64 2148715681, i64 2148715715, i64 2148715736}
!242 = !{!"branch_weights", i32 1, i32 2000}
!243 = !{!"auto-init"}
!244 = !{i8 0, i8 2}
