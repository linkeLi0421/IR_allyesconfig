; ModuleID = '/llk/IR_all_yes/drivers/bus/fsl-mc/fsl-mc-uapi.c_pt.bc'
source_filename = "../drivers/bus/fsl-mc/fsl-mc-uapi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fsl_mc_cmd_desc = type { i16, i16, i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsl_mc_bus = type { %struct.fsl_mc_device, [4 x %struct.fsl_mc_resource_pool], ptr, %struct.mutex, %struct.dprc_attributes, %struct.fsl_mc_uapi, i32 }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.fsl_mc_resource_pool = type { i32, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dprc_attributes = type { i32, i32, i32, i64 }
%struct.fsl_mc_uapi = type { %struct.miscdevice, ptr, %struct.mutex, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.fsl_mc_command = type { i64, [7 x i64] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.uapi_priv_data = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }

@fsl_mc_uapi_dev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_mc_uapi_dev_ioctl, ptr null, ptr null, i32 0, ptr @fsl_mc_uapi_dev_open, ptr null, ptr @fsl_mc_uapi_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fsl_mc_uapi_create_device_file.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mc_uapi->mutex\00", [16 x i8] zeroinitializer }, align 32
@fsl_mc_uapi_dev_ioctl.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl_mc_uapi\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_mc_uapi_dev_ioctl\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/bus/fsl-mc/fsl-mc-uapi.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unexpected ioctl call number\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fsl_mc_accepted_cmds = internal constant { [45 x %struct.fsl_mc_cmd_desc], [176 x i8] } { [45 x %struct.fsl_mc_cmd_desc] [%struct.fsl_mc_cmd_desc { i16 4864, i16 -16, i32 28, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5120, i16 -16, i32 28, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 -32000, i16 -16, i32 8, i8 0, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5392, i16 -16, i32 40, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5408, i16 -16, i32 12, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5488, i16 -16, i32 40, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5504, i16 -16, i32 40, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5520, i16 -16, i32 16, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5536, i16 -16, i32 12, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5552, i16 -16, i32 32, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5568, i16 -16, i32 40, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5648, i16 -16, i32 48, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5808, i16 -16, i32 16, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5744, i16 -16, i32 56, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5760, i16 -16, i32 32, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 5776, i16 -16, i32 12, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5792, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 5824, i16 -16, i32 32, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 3600, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 3616, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 10272, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 10288, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 -31984, i16 -16, i32 8, i8 0, i32 0 }, %struct.fsl_mc_cmd_desc { i16 6512, i16 -16, i32 14, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 3136, i16 -16, i32 9, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 3152, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 8768, i16 -16, i32 16, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 8784, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 9680, i16 -16, i32 10, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 8528, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 8560, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 2688, i16 -16, i32 14, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 2704, i16 -16, i32 24, i8 1, i32 2 }, %struct.fsl_mc_cmd_desc { i16 832, i16 -16, i32 11, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 1104, i16 -16, i32 10, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 2848, i16 -16, i32 11, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 2592, i16 -16, i32 10, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 64, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 336, i16 -16, i32 13, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 352, i16 -16, i32 13, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 -32768, i16 -16, i32 8, i8 1, i32 0 }, %struct.fsl_mc_cmd_desc { i16 -32768, i16 -1024, i32 12, i8 0, i32 1 }, %struct.fsl_mc_cmd_desc { i16 -24576, i16 -1024, i32 8, i8 0, i32 1 }, %struct.fsl_mc_cmd_desc { i16 -26624, i16 -1024, i32 12, i8 1, i32 3 }, %struct.fsl_mc_cmd_desc { i16 -28672, i16 -1024, i32 64, i8 1, i32 3 }], [176 x i8] zeroinitializer }, align 32
@fsl_mc_command_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 392, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MC command 0x%04x: cmdid not accepted\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_mc_command_check\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_mc_command_check._entry_ptr = internal global ptr @fsl_mc_command_check._entry, section ".printk_index", align 4
@fsl_mc_command_check._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 405, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"MC command 0x%04x: garbage beyond max size of %d bytes!\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_mc_command_check._entry_ptr.14 = internal global ptr @fsl_mc_command_check._entry.12, section ".printk_index", align 4
@fsl_mc_command_check._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.3, i32 416, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MC command 0x%04x: token 0x%04x is invalid!\0A\00", [51 x i8] zeroinitializer }, align 32
@fsl_mc_command_check._entry_ptr.17 = internal global ptr @fsl_mc_command_check._entry.15, section ".printk_index", align 4
@fsl_mc_command_check._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.3, i32 426, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MC command 0x%04x: unknown module ID 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@fsl_mc_command_check._entry_ptr.20 = internal global ptr @fsl_mc_command_check._entry.18, section ".printk_index", align 4
@fsl_mc_command_check._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.3, i32 437, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MC command 0x%04x: needs CAP_NET_ADMIN!\0A\00", [55 x i8] zeroinitializer }, align 32
@fsl_mc_command_check._entry_ptr.23 = internal global ptr @fsl_mc_command_check._entry.21, section ".printk_index", align 4
@fsl_mc_uapi_dev_open.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_mc_uapi_dev_open\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not allocate MC portal\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"fsl_mc_uapi_dev_fops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 566, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 589, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 559, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 156, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"fsl_mc_accepted_cmds\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 80, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 392, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 404, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 415, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 425, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 436, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [36 x i8] c"../drivers/bus/fsl-mc/fsl-mc-uapi.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 496, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @fsl_mc_command_check._entry, ptr @fsl_mc_command_check._entry.12, ptr @fsl_mc_command_check._entry.15, ptr @fsl_mc_command_check._entry.18, ptr @fsl_mc_command_check._entry.21, ptr @fsl_mc_command_check._entry_ptr, ptr @fsl_mc_command_check._entry_ptr.14, ptr @fsl_mc_command_check._entry_ptr.17, ptr @fsl_mc_command_check._entry_ptr.20, ptr @fsl_mc_command_check._entry_ptr.23, ptr @fsl_mc_uapi_dev_fops, ptr @fsl_mc_uapi_create_device_file.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @fsl_mc_accepted_cmds, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_uapi_dev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_uapi_create_device_file.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_accepted_cmds to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_command_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_command_check._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_command_check._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_command_check._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_command_check._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_uapi_create_device_file(ptr noundef %mc_bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uapi_misc = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus, i32 0, i32 5
  %0 = ptrtoint ptr %uapi_misc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %uapi_misc, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %mc_bus, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %mc_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_bus, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %entry.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %retval.0.i, ptr %name, align 4
  %fops = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fsl_mc_uapi_dev_fops, ptr %fops, align 4
  %call5 = tail call i32 @misc_register(ptr noundef %uapi_misc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_bus, i32 0, i32 5
  %7 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_io, align 4
  %static_mc_io = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %static_mc_io to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %static_mc_io, align 4
  %mutex = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus, i32 0, i32 5, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @fsl_mc_uapi_create_device_file.__key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_mc_uapi_remove_device_file(ptr noundef %mc_bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uapi_misc = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus, i32 0, i32 5
  tail call void @misc_deregister(ptr noundef %uapi_misc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_uapi_dev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %mc_cmd.i = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -1608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1069526304, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1069526304
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  %mc_io = getelementptr inbounds %struct.uapi_priv_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mc_cmd.i) #7
  %6 = call ptr @memset(ptr %mc_cmd.i, i32 255, i32 64)
  %7 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 64, i32 -1226833920) #10
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !57

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mc_cmd.i, i32 noundef 64) #7
  %9 = call i32 @llvm.read_register.i32(metadata !47) #7
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !58
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mc_cmd.i, ptr noundef %7, i32 noundef 64) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #7, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !57

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 64, %sw.bb.if.then11.i.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 64, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %mc_cmd.i, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %fsl_mc_uapi_send_command.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %call.i.i = call zeroext i16 @mc_cmd_hdr_read_cmdid(ptr noundef nonnull %mc_cmd.i) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.0125.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [45 x %struct.fsl_mc_cmd_desc], ptr @fsl_mc_accepted_cmds, i32 0, i32 %i.0125.i.i
  %cmdid_mask.i.i = getelementptr [45 x %struct.fsl_mc_cmd_desc], ptr @fsl_mc_accepted_cmds, i32 0, i32 %i.0125.i.i, i32 1
  %13 = ptrtoint ptr %cmdid_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cmdid_mask.i.i, align 2
  %and118.i.i = and i16 %14, %call.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and118.i.i, i16 %16)
  %cmp3.i.i = icmp eq i16 %and118.i.i, %16
  br i1 %cmp3.i.i, label %if.end9.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0125.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 45
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i.i = zext i16 %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.8, i32 noundef %conv8.i.i) #11
  br label %fsl_mc_uapi_send_command.exit

if.end9.i.i:                                      ; preds = %for.body.i.i
  %size.i.i = getelementptr [45 x %struct.fsl_mc_cmd_desc], ptr @fsl_mc_accepted_cmds, i32 0, i32 %i.0125.i.i, i32 2
  %17 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i.i, align 4
  %19 = and i32 %i.0125.i.i, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %19)
  %cmp12126.not.i.i = icmp eq i32 %19, 44
  br i1 %cmp12126.not.i.i, label %if.end9.i.i.if.end28.i.i_crit_edge, label %for.body14.preheader.i.i

if.end9.i.i.if.end28.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

for.body14.preheader.i.i:                         ; preds = %if.end9.i.i
  %add.ptr.i.i = getelementptr i8, ptr %mc_cmd.i, i32 %18
  %smax.i.i = call i32 @llvm.smax.i32(i32 %18, i32 63) #7
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %for.body14.i.i.for.body14.i.i_crit_edge, %for.body14.preheader.i.i
  %sum.0129.i.i = phi i8 [ %or117.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ], [ 0, %for.body14.preheader.i.i ]
  %mc_cmd_end.0128.i.i = phi ptr [ %incdec.ptr.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ], [ %add.ptr.i.i, %for.body14.preheader.i.i ]
  %i.1127.i.i = phi i32 [ %inc19.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ], [ %18, %for.body14.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %mc_cmd_end.0128.i.i, i32 1
  %20 = ptrtoint ptr %mc_cmd_end.0128.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mc_cmd_end.0128.i.i, align 1
  %or117.i.i = or i8 %21, %sum.0129.i.i
  %inc19.i.i = add i32 %i.1127.i.i, 1
  %exitcond132.not.i.i = icmp eq i32 %i.1127.i.i, %smax.i.i
  br i1 %exitcond132.not.i.i, label %for.end20.i.i, label %for.body14.i.i.for.body14.i.i_crit_edge

for.body14.i.i.for.body14.i.i_crit_edge:          ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14.i.i

for.end20.i.i:                                    ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or117.i.i)
  %phi.cmp.i.i = icmp eq i8 %or117.i.i, 0
  br i1 %phi.cmp.i.i, label %for.end20.i.i.if.end28.i.i_crit_edge, label %do.end24.i.i

for.end20.i.i.if.end28.i.i_crit_edge:             ; preds = %for.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

do.end24.i.i:                                     ; preds = %for.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv26.i.i = zext i16 %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.13, i32 noundef %conv26.i.i, i32 noundef %18) #11
  br label %fsl_mc_uapi_send_command.exit

if.end28.i.i:                                     ; preds = %for.end20.i.i.if.end28.i.i_crit_edge, %if.end9.i.i.if.end28.i.i_crit_edge
  %token1.i.i.i = getelementptr inbounds %struct.mc_cmd_header, ptr %mc_cmd.i, i32 0, i32 4
  %22 = ptrtoint ptr %token1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %token1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool31.i.i = icmp ne i16 %23, 0
  %token.i.i = getelementptr [45 x %struct.fsl_mc_cmd_desc], ptr @fsl_mc_accepted_cmds, i32 0, i32 %i.0125.i.i, i32 3
  %24 = ptrtoint ptr %token.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %token.i.i, align 4, !range !61
  %26 = zext i1 %tobool31.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %26)
  %cmp37.not.i.i = icmp eq i8 %25, %26
  br i1 %cmp37.not.i.i, label %if.end47.i.i, label %do.end42.i.i

do.end42.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = call i16 @llvm.bswap.i16(i16 %23) #7
  %conv44.i.i = zext i16 %call.i.i to i32
  %conv46.i.i = zext i16 %27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.16, i32 noundef %conv44.i.i, i32 noundef %conv46.i.i) #11
  br label %fsl_mc_uapi_send_command.exit

if.end47.i.i:                                     ; preds = %if.end28.i.i
  %flags.i.i = getelementptr [45 x %struct.fsl_mc_cmd_desc], ptr @fsl_mc_accepted_cmds, i32 0, i32 %i.0125.i.i, i32 4
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %19)
  %tobool49.not.i.i = icmp ult i32 %19, 41
  br i1 %tobool49.not.i.i, label %if.end47.i.i.if.end68.i.i_crit_edge, label %if.then50.i.i

if.end47.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i.i

if.then50.i.i:                                    ; preds = %if.end47.i.i
  %and52.i.i = lshr i16 %call.i.i, 4
  %shr.i.i = and i16 %and52.i.i, 63
  %30 = add nsw i16 %shr.i.i, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %30)
  %31 = icmp ult i16 %30, -16
  br i1 %31, label %do.end63.i.i, label %if.then50.i.i.if.end68.i.i_crit_edge

if.then50.i.i.if.end68.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i.i

do.end63.i.i:                                     ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv54.i.i = zext i16 %shr.i.i to i32
  %conv51.i.i = zext i16 %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.19, i32 noundef %conv51.i.i, i32 noundef %conv54.i.i) #11
  br label %fsl_mc_uapi_send_command.exit

if.end68.i.i:                                     ; preds = %if.then50.i.i.if.end68.i.i_crit_edge, %if.end47.i.i.if.end68.i.i_crit_edge
  %and70.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i.i)
  %tobool71.not.i.i = icmp eq i32 %and70.i.i, 0
  br i1 %tobool71.not.i.i, label %if.end68.i.i.if.end4.i_crit_edge, label %if.then72.i.i

if.end68.i.i.if.end4.i_crit_edge:                 ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then72.i.i:                                    ; preds = %if.end68.i.i
  %call73.i.i = call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call73.i.i, label %if.then72.i.i.if.end4.i_crit_edge, label %do.end77.i.i

if.then72.i.i.if.end4.i_crit_edge:                ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end77.i.i:                                     ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv79.i.i = zext i16 %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.22, i32 noundef %conv79.i.i) #11
  br label %fsl_mc_uapi_send_command.exit

if.end4.i:                                        ; preds = %if.then72.i.i.if.end4.i_crit_edge, %if.end68.i.i.if.end4.i_crit_edge
  %call5.i = call i32 @mc_send_command(ptr noundef %5, ptr noundef nonnull %mc_cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then.i23.i, label %if.end4.i.fsl_mc_uapi_send_command.exit_crit_edge

if.end4.i.fsl_mc_uapi_send_command.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsl_mc_uapi_send_command.exit

if.then.i23.i:                                    ; preds = %if.end4.i
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i22.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i22.i, label %if.then.i23.i.fsl_mc_uapi_send_command.exit_crit_edge, label %copy_to_user.exit.i

if.then.i23.i.fsl_mc_uapi_send_command.exit_crit_edge: ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsl_mc_uapi_send_command.exit

copy_to_user.exit.i:                              ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i27.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mc_cmd.i, i32 noundef 64) #7
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %mc_cmd.i, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool10.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 0, i32 -14
  br label %fsl_mc_uapi_send_command.exit

fsl_mc_uapi_send_command.exit:                    ; preds = %copy_to_user.exit.i, %if.then.i23.i.fsl_mc_uapi_send_command.exit_crit_edge, %if.end4.i.fsl_mc_uapi_send_command.exit_crit_edge, %do.end77.i.i, %do.end63.i.i, %do.end42.i.i, %do.end24.i.i, %do.end.i.i, %if.then11.i.i.i
  %retval.0.i7 = phi i32 [ %call5.i, %if.end4.i.fsl_mc_uapi_send_command.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -1, %do.end77.i.i ], [ -13, %do.end63.i.i ], [ -13, %do.end42.i.i ], [ -13, %do.end24.i.i ], [ -13, %do.end.i.i ], [ -14, %if.then.i23.i.fsl_mc_uapi_send_command.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mc_cmd.i) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_mc_uapi_dev_ioctl.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_mc_uapi_dev_ioctl, %if.then)) #7
          to label %sw.epilog [label %if.then], !srcloc !62

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_mc_uapi_dev_ioctl.__UNIQUE_ID_ddebug228, ptr noundef %add.ptr, ptr noundef nonnull @.str.4) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %fsl_mc_uapi_send_command.exit
  %error.0 = phi i32 [ %retval.0.i7, %fsl_mc_uapi_send_command.exit ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_uapi_dev_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filep) #0 align 64 {
entry:
  %dynamic_mc_io = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dynamic_mc_io) #7
  %0 = ptrtoint ptr %dynamic_mc_io to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dynamic_mc_io, align 4, !annotation !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 -1608
  %mutex = getelementptr inbounds %struct.fsl_mc_uapi, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %local_instance_in_use = getelementptr inbounds %struct.fsl_mc_uapi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %local_instance_in_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_instance_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %static_mc_io = getelementptr inbounds %struct.fsl_mc_uapi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %static_mc_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %static_mc_io, align 4
  %mc_io = getelementptr inbounds %struct.uapi_priv_data, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %mc_io to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %mc_io, align 4
  %9 = ptrtoint ptr %local_instance_in_use to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %local_instance_in_use, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  %call7 = call i32 @fsl_mc_portal_allocate(ptr noundef %add.ptr3, i16 noundef zeroext 0, ptr noundef nonnull %dynamic_mc_io) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_mc_uapi_dev_open.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_mc_uapi_dev_open, %if.then15)) #7
          to label %error_portal_allocate [label %if.then15], !srcloc !62

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_mc_uapi_dev_open.__UNIQUE_ID_ddebug227, ptr noundef %add.ptr3, ptr noundef nonnull @.str.25) #7
  br label %error_portal_allocate

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dynamic_mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dynamic_mc_io, align 4
  %mc_io18 = getelementptr inbounds %struct.uapi_priv_data, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %mc_io18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %mc_io18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then5
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %call7.i.i, align 8
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %private_data, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

error_portal_allocate:                            ; preds = %if.then15, %do.body
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error_portal_allocate, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %error_portal_allocate ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dynamic_mc_io) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_uapi_dev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mc_io1 = getelementptr inbounds %struct.uapi_priv_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mc_io1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io1, align 4
  %mutex = getelementptr inbounds %struct.fsl_mc_uapi, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %static_mc_io = getelementptr inbounds %struct.fsl_mc_uapi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %static_mc_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %static_mc_io, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %local_instance_in_use = getelementptr inbounds %struct.fsl_mc_uapi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %local_instance_in_use to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %local_instance_in_use, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fsl_mc_portal_free(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %10) #7
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %private_data, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc_send_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mc_cmd_hdr_read_cmdid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_portal_allocate(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_portal_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @fsl_mc_uapi_create_device_file.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 589, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @fsl_mc_uapi_dev_fops, !4, !"fsl_mc_uapi_dev_fops", i1 false, i1 false}
!4 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 566, i32 37}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 559, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @fsl_mc_uapi_dev_ioctl.__UNIQUE_ID_ddebug228, !6, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!13 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 392, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fsl_mc_command_check._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @fsl_mc_command_check._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 404, i32 3}
!27 = !{ptr @fsl_mc_command_check._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fsl_mc_command_check._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 415, i32 3}
!31 = !{ptr @fsl_mc_command_check._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fsl_mc_command_check._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 425, i32 4}
!35 = !{ptr @fsl_mc_command_check._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fsl_mc_command_check._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 436, i32 4}
!39 = !{ptr @fsl_mc_command_check._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @fsl_mc_command_check._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @fsl_mc_accepted_cmds, !42, !"fsl_mc_accepted_cmds", i1 false, i1 false}
!42 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 80, i32 31}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bus/fsl-mc/fsl-mc-uapi.c", i32 496, i32 4}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fsl_mc_uapi_dev_open.__UNIQUE_ID_ddebug227, !44, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 5071952}
!59 = !{i64 5072149}
!60 = !{i64 2152557382}
!61 = !{i8 0, i8 2}
!62 = !{i64 2148212076, i64 2148212081, i64 2148212094, i64 2148212138, i64 2148212172, i64 2148212193}
!63 = !{!"auto-init"}
