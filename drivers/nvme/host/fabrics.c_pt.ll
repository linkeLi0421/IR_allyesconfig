; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/fabrics.c_pt.bc'
source_filename = "../drivers/nvme/host/fabrics.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nvmf_get_address\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_get_address\09\09\09\09"
module asm "\09.long\09__crc_nvmf_get_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_get_address:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_get_address\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_get_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_reg_read32\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_reg_read32\09\09\09\09"
module asm "\09.long\09__crc_nvmf_reg_read32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_reg_read32:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_reg_read32\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_reg_read32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_reg_read64\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_reg_read64\09\09\09\09"
module asm "\09.long\09__crc_nvmf_reg_read64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_reg_read64:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_reg_read64\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_reg_read64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_reg_write32\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_reg_write32\09\09\09\09"
module asm "\09.long\09__crc_nvmf_reg_write32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_reg_write32:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_reg_write32\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_reg_write32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_connect_admin_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_connect_admin_queue\09\09\09\09"
module asm "\09.long\09__crc_nvmf_connect_admin_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_connect_admin_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_connect_admin_queue\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_connect_admin_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_connect_io_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_connect_io_queue\09\09\09\09"
module asm "\09.long\09__crc_nvmf_connect_io_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_connect_io_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_connect_io_queue\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_connect_io_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_should_reconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_should_reconnect\09\09\09\09"
module asm "\09.long\09__crc_nvmf_should_reconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_should_reconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_should_reconnect\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_should_reconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_register_transport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_register_transport\09\09\09\09"
module asm "\09.long\09__crc_nvmf_register_transport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_register_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_register_transport\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_register_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_unregister_transport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_unregister_transport\09\09\09\09"
module asm "\09.long\09__crc_nvmf_unregister_transport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_unregister_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_unregister_transport\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_unregister_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_ip_options_match\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_ip_options_match\09\09\09\09"
module asm "\09.long\09__crc_nvmf_ip_options_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_ip_options_match:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_ip_options_match\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_ip_options_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmf_free_options\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmf_free_options\09\09\09\09"
module asm "\09.long\09__crc_nvmf_free_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmf_free_options:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmf_free_options\22\09\09\09\09\09"
module asm "__kstrtabns_nvmf_free_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nvme_command = type { %union.anon.83 }
%union.anon.83 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nvmf_ctrl_options = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i32, ptr, i32, i8, i8, i8, i32, i32, i32, i32 }
%union.nvme_result = type { i64 }
%struct.nvmf_property_get_command = type { i8, i8, i16, i8, [35 x i8], i8, [3 x i8], i32, [16 x i8] }
%struct.nvmf_property_set_command = type { i8, i8, i16, i8, [35 x i8], i8, [3 x i8], i32, i64, [8 x i8] }
%struct.nvmf_connect_command = type { i8, i8, i16, i8, [19 x i8], %union.nvme_data_ptr, i16, i16, i16, i8, i8, i32, [12 x i8] }
%struct.nvmf_host = type { %struct.kref, %struct.list_head, [223 x i8], %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.nvmf_connect_data = type { %struct.uuid_t, i16, [238 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.nvmf_transport_ops = type { %struct.list_head, ptr, ptr, i32, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.substring_t = type { ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"traddr=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%strsvcid=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%shost_traddr=%s\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%shost_iface=%s\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_nvmf_get_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_get_address = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_get_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_get_address to i32), ptr @__kstrtab_nvmf_get_address, ptr @__kstrtabns_nvmf_get_address }, section "___ksymtab_gpl+nvmf_get_address", align 4
@nvmf_reg_read32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 164, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Property Get error: %d, offset %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvmf_reg_read32\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/nvme/host/fabrics.c\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvmf_reg_read32._entry_ptr = internal global ptr @nvmf_reg_read32._entry, section ".printk_index", align 4
@__kstrtab_nvmf_reg_read32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_reg_read32 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_reg_read32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_reg_read32 to i32), ptr @__kstrtab_nvmf_reg_read32, ptr @__kstrtabns_nvmf_reg_read32 }, section "___ksymtab_gpl+nvmf_reg_read32", align 4
@nvmf_reg_read64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.9, i32 210, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvmf_reg_read64\00", [16 x i8] zeroinitializer }, align 32
@nvmf_reg_read64._entry_ptr = internal global ptr @nvmf_reg_read64._entry, section ".printk_index", align 4
@__kstrtab_nvmf_reg_read64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_reg_read64 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_reg_read64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_reg_read64 to i32), ptr @__kstrtab_nvmf_reg_read64, ptr @__kstrtabns_nvmf_reg_read64 }, section "___ksymtab_gpl+nvmf_reg_read64", align 4
@nvmf_reg_write32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 252, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Property Set error: %d, offset %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvmf_reg_write32\00", [47 x i8] zeroinitializer }, align 32
@nvmf_reg_write32._entry_ptr = internal global ptr @nvmf_reg_write32._entry, section ".printk_index", align 4
@__kstrtab_nvmf_reg_write32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_reg_write32 = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_reg_write32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_reg_write32 to i32), ptr @__kstrtab_nvmf_reg_write32, ptr @__kstrtabns_nvmf_reg_write32 }, section "___ksymtab_gpl+nvmf_reg_write32", align 4
@__kstrtab_nvmf_connect_admin_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_connect_admin_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_connect_admin_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_connect_admin_queue to i32), ptr @__kstrtab_nvmf_connect_admin_queue, ptr @__kstrtabns_nvmf_connect_admin_queue }, section "___ksymtab_gpl+nvmf_connect_admin_queue", align 4
@__kstrtab_nvmf_connect_io_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_connect_io_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_connect_io_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_connect_io_queue to i32), ptr @__kstrtab_nvmf_connect_io_queue, ptr @__kstrtabns_nvmf_connect_io_queue }, section "___ksymtab_gpl+nvmf_connect_io_queue", align 4
@__kstrtab_nvmf_should_reconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_should_reconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_should_reconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_should_reconnect to i32), ptr @__kstrtab_nvmf_should_reconnect, ptr @__kstrtabns_nvmf_should_reconnect }, section "___ksymtab_gpl+nvmf_should_reconnect", align 4
@nvmf_transports_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @nvmf_transports_rwsem, i64 56), ptr getelementptr (i8, ptr @nvmf_transports_rwsem, i64 56) }, ptr @nvmf_transports_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@nvmf_transports = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvmf_transports, ptr @nvmf_transports }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nvmf_register_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_register_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_register_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_register_transport to i32), ptr @__kstrtab_nvmf_register_transport, ptr @__kstrtabns_nvmf_register_transport }, section "___ksymtab_gpl+nvmf_register_transport", align 4
@__kstrtab_nvmf_unregister_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_unregister_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_unregister_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_unregister_transport to i32), ptr @__kstrtab_nvmf_unregister_transport, ptr @__kstrtabns_nvmf_unregister_transport }, section "___ksymtab_gpl+nvmf_unregister_transport", align 4
@__kstrtab_nvmf_ip_options_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_ip_options_match = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_ip_options_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_ip_options_match to i32), ptr @__kstrtab_nvmf_ip_options_match, ptr @__kstrtabns_nvmf_ip_options_match }, section "___ksymtab_gpl+nvmf_ip_options_match", align 4
@__kstrtab_nvmf_free_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmf_free_options = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmf_free_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmf_free_options to i32), ptr @__kstrtab_nvmf_free_options, ptr @__kstrtabns_nvmf_free_options }, section "___ksymtab_gpl+nvmf_free_options", align 4
@nvmf_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.52, ptr @nvmf_dev_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@nvmf_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nvmf_default_host = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file369 = internal constant [49 x i8] c"nvme_fabrics.file=drivers/nvme/host/nvme-fabrics\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [28 x i8] c"nvme_fabrics.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_nvme_fabrics__371_1201_nvmf_init6 = internal global ptr @nvmf_init, section ".initcall6.init", align 4
@__exitcall_nvmf_exit = internal global ptr @nvmf_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Connect Invalid Data Parameter\00", [33 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 283, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s, cntlid: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmf_log_connect_error\00", [41 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr = internal global ptr @nvmf_log_connect_error._entry, section ".printk_index", align 4
@nvmf_log_connect_error._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.9, i32 288, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, hostnqn \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.20 = internal global ptr @nvmf_log_connect_error._entry.18, section ".printk_index", align 4
@nvmf_log_connect_error._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.9, i32 293, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s, subsysnqn \22%s\22\0A\00", [44 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.23 = internal global ptr @nvmf_log_connect_error._entry.21, section ".printk_index", align 4
@nvmf_log_connect_error._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.9, i32 298, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s, starting byte offset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.26 = internal global ptr @nvmf_log_connect_error._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Connect Invalid SQE Parameter\00", [34 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.9, i32 308, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s, qid %d\0A\00", [20 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.30 = internal global ptr @nvmf_log_connect_error._entry.28, section ".printk_index", align 4
@nvmf_log_connect_error._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.9, i32 313, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.32 = internal global ptr @nvmf_log_connect_error._entry.31, section ".printk_index", align 4
@nvmf_log_connect_error._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.9, i32 320, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Connect for subsystem %s is not allowed, hostnqn: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.35 = internal global ptr @nvmf_log_connect_error._entry.33, section ".printk_index", align 4
@nvmf_log_connect_error._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.17, ptr @.str.9, i32 324, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Connect command failed: controller is busy or not available\0A\00", [35 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.38 = internal global ptr @nvmf_log_connect_error._entry.36, section ".printk_index", align 4
@nvmf_log_connect_error._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.17, ptr @.str.9, i32 329, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Connect incompatible format: %d\00", [32 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.41 = internal global ptr @nvmf_log_connect_error._entry.39, section ".printk_index", align 4
@nvmf_log_connect_error._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.17, ptr @.str.9, i32 333, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Connect command failed: host path error\0A\00", [55 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.44 = internal global ptr @nvmf_log_connect_error._entry.42, section ".printk_index", align 4
@nvmf_log_connect_error._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.17, ptr @.str.9, i32 338, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Connect command failed, error wo/DNR bit: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@nvmf_log_connect_error._entry_ptr.47 = internal global ptr @nvmf_log_connect_error._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvmf_transports_rwsem.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmf_transports_rwsem\00", [42 x i8] zeroinitializer }, align 32
@nvmf_hosts_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmf_hosts_mutex, i64 52), ptr getelementptr (i8, ptr @nvmf_hosts_mutex, i64 52) }, ptr @nvmf_hosts_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmf_hosts_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvmf_hosts_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme-fabrics\00", [19 x i8] zeroinitializer }, align 32
@nvmf_dev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr @nvmf_dev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nvmf_dev_open, ptr null, ptr @nvmf_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nvmf_dev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmf_dev_mutex, i64 52), ptr getelementptr (i8, ptr @nvmf_dev_mutex, i64 52) }, ptr @nvmf_dev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nvmf_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvmf_dev_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvmf_dev_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nvme-%s\00", [24 x i8] zeroinitializer }, align 32
@nvmf_create_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.9, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016nvme_fabrics: no handler found for transport %s.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvmf_create_ctrl\00", [47 x i8] zeroinitializer }, align 32
@nvmf_create_ctrl._entry_ptr = internal global ptr @nvmf_create_ctrl._entry, section ".printk_index", align 4
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@opt_tokens = internal constant { [23 x %struct.match_token], [40 x i8] } { [23 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.112 }, %struct.match_token { i32 4, ptr @.str }, %struct.match_token { i32 8, ptr @.str.113 }, %struct.match_token { i32 2, ptr @.str.114 }, %struct.match_token { i32 16, ptr @.str.115 }, %struct.match_token { i32 32, ptr @.str.116 }, %struct.match_token { i32 512, ptr @.str.117 }, %struct.match_token { i32 2048, ptr @.str.118 }, %struct.match_token { i32 128, ptr @.str.119 }, %struct.match_token { i32 256, ptr @.str.120 }, %struct.match_token { i32 1024, ptr @.str.121 }, %struct.match_token { i32 2097152, ptr @.str.122 }, %struct.match_token { i32 4096, ptr @.str.123 }, %struct.match_token { i32 8192, ptr @.str.124 }, %struct.match_token { i32 16384, ptr @.str.125 }, %struct.match_token { i32 32768, ptr @.str.126 }, %struct.match_token { i32 65536, ptr @.str.127 }, %struct.match_token { i32 131072, ptr @.str.128 }, %struct.match_token { i32 262144, ptr @.str.129 }, %struct.match_token { i32 524288, ptr @.str.130 }, %struct.match_token { i32 1048576, ptr @.str.131 }, %struct.match_token { i32 4194304, ptr @.str.132 }, %struct.match_token zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.9, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvme_fabrics: %s needs to be < %d bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvmf_parse_options\00", [45 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr = internal global ptr @nvmf_parse_options._entry, section ".printk_index", align 4
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nqn.2014-08.org.nvmexpress.discovery\00", [59 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.60, ptr @.str.9, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013nvme_fabrics: Invalid queue_size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.64 = internal global ptr @nvmf_parse_options._entry.62, section ".printk_index", align 4
@nvmf_parse_options._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.60, ptr @.str.9, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvme_fabrics: Invalid number of IOQs %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.67 = internal global ptr @nvmf_parse_options._entry.65, section ".printk_index", align 4
@nvmf_parse_options.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.60, ptr @.str.9, ptr @.str.69, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_fabrics\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Ignoring nr_io_queues value for discovery controller\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nvme_fabrics: Ignoring nr_io_queues value for discovery controller\0A\00", [60 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.60, ptr @.str.9, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvme_fabrics: Invalid keep_alive_tmo %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.73 = internal global ptr @nvmf_parse_options._entry.71, section ".printk_index", align 4
@nvmf_parse_options._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.60, ptr @.str.9, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014nvme_fabrics: keep_alive_tmo 0 won't execute keep alives!!!\0A\00", [33 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.76 = internal global ptr @nvmf_parse_options._entry.74, section ".printk_index", align 4
@nvmf_parse_options._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.60, ptr @.str.9, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014nvme_fabrics: ctrl_loss_tmo < 0 will reconnect forever\0A\00", [38 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.79 = internal global ptr @nvmf_parse_options._entry.77, section ".printk_index", align 4
@nvmf_parse_options._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.60, ptr @.str.9, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014nvme_fabrics: I/O fail on reconnect controller after %d sec\0A\00", [33 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.82 = internal global ptr @nvmf_parse_options._entry.80, section ".printk_index", align 4
@nvmf_parse_options._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.60, ptr @.str.9, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nvme_fabrics: hostnqn already user-assigned: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.85 = internal global ptr @nvmf_parse_options._entry.83, section ".printk_index", align 4
@nvmf_parse_options._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.9, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.87 = internal global ptr @nvmf_parse_options._entry.86, section ".printk_index", align 4
@nvmf_parse_options._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.60, ptr @.str.9, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvme_fabrics: Invalid reconnect_delay %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.90 = internal global ptr @nvmf_parse_options._entry.88, section ".printk_index", align 4
@nvmf_parse_options._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.60, ptr @.str.9, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013nvme_fabrics: Invalid hostid %s\0A\00", [61 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.93 = internal global ptr @nvmf_parse_options._entry.91, section ".printk_index", align 4
@nvmf_parse_options._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.60, ptr @.str.9, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvme_fabrics: Invalid nr_write_queues %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.96 = internal global ptr @nvmf_parse_options._entry.94, section ".printk_index", align 4
@nvmf_parse_options._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.60, ptr @.str.9, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvme_fabrics: Invalid nr_poll_queues %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.99 = internal global ptr @nvmf_parse_options._entry.97, section ".printk_index", align 4
@nvmf_parse_options._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.60, ptr @.str.9, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvme_fabrics: Invalid type of service %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.102 = internal global ptr @nvmf_parse_options._entry.100, section ".printk_index", align 4
@nvmf_parse_options._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.60, ptr @.str.9, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014nvme_fabrics: Clamping type of service to 255\0A\00", [47 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.105 = internal global ptr @nvmf_parse_options._entry.103, section ".printk_index", align 4
@nvmf_parse_options._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.60, ptr @.str.9, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014nvme_fabrics: unknown parameter or missing value '%s' in ctrl creation request\0A\00", [46 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.108 = internal global ptr @nvmf_parse_options._entry.106, section ".printk_index", align 4
@nvmf_parse_options._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.60, ptr @.str.9, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014nvme_fabrics: failfast tmo (%d) larger than controller loss tmo (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@nvmf_parse_options._entry_ptr.111 = internal global ptr @nvmf_parse_options._entry.109, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"transport=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trsvcid=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nqn=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"queue_size=%d\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nr_io_queues=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reconnect_delay=%d\00", [45 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctrl_loss_tmo=%d\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keep_alive_tmo=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hostnqn=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"host_traddr=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host_iface=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hostid=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"duplicate_connect\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disable_sqflow\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdr_digest\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data_digest\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_write_queues=%d\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_poll_queues=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tos=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fast_io_fail_tmo=%d\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"discovery\00", [22 x i8] zeroinitializer }, align 32
@nvmf_hosts = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvmf_hosts, ptr @nvmf_hosts }, [24 x i8] zeroinitializer }, align 32
@nvmf_check_required_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.9, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014nvme_fabrics: missing parameter '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvmf_check_required_opts\00", [39 x i8] zeroinitializer }, align 32
@nvmf_check_required_opts._entry_ptr = internal global ptr @nvmf_check_required_opts._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@nvmf_check_allowed_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.9, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014nvme_fabrics: invalid parameter '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvmf_check_allowed_opts\00", [40 x i8] zeroinitializer }, align 32
@nvmf_check_allowed_opts._entry_ptr = internal global ptr @nvmf_check_allowed_opts._entry, section ".printk_index", align 4
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"instance=%d,cntlid=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"instance=-1,cntlid=-1\00", [42 x i8] zeroinitializer }, align 32
@nvmf_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nvmf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.9, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013nvme_fabrics: couldn't register class nvme-fabrics\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvmf_init\00", [22 x i8] zeroinitializer }, align 32
@nvmf_init._entry_ptr = internal global ptr @nvmf_init._entry, section ".printk_index", align 4
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@nvmf_init._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.140, ptr @.str.9, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013nvme_fabrics: couldn't create nvme-fabris device!\0A\00", [43 x i8] zeroinitializer }, align 32
@nvmf_init._entry_ptr.144 = internal global ptr @nvmf_init._entry.142, section ".printk_index", align 4
@nvmf_init._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.140, ptr @.str.9, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nvme_fabrics: couldn't register misc device: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@nvmf_init._entry_ptr.147 = internal global ptr @nvmf_init._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nqn.2014-08.org.nvmexpress:uuid:%pUb\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 384, i64 385, i64 386, i64 388, i64 880]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 16, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.150 = internal global [24 x i64] [i64 22, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304]
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 108, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 110, i32 43 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 111, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 111, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 113, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 116, i32 43 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 118, i32 42 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 162, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 208, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 250, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"nvmf_transports_rwsem\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"nvmf_transports\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 16, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant [10 x i8] c"nvmf_misc\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1139, i32 26 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"nvmf_class\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1033, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"nvmf_default_host\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 22, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 277, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 281, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 286, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 291, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 296, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 302, i32 20 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 306, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 311, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 318, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 323, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 327, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 332, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 336, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 17, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"nvmf_hosts_mutex\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 20, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1141, i32 20 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"nvmf_dev_fops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1131, i32 37 }
@___asan_gen_.313 = private unnamed_addr constant [15 x i8] c"nvmf_dev_mutex\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [12 x i8] c"nvmf_device\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1034, i32 23 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1035, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 979, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 994, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 582, i32 25 }
@___asan_gen_.340 = private unnamed_addr constant [11 x i8] c"opt_tokens\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 529, i32 28 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 608, i32 5 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 615, i32 7 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 642, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 654, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 659, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 673, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 678, i32 5 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 689, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 699, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 708, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 720, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 739, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 771, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 796, i32 5 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 808, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 820, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 825, i32 5 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 834, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 856, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 530, i32 25 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 532, i32 23 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 533, i32 20 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 534, i32 26 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 535, i32 27 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 536, i32 30 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 537, i32 28 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 538, i32 20 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 539, i32 23 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 540, i32 27 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 541, i32 26 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 542, i32 23 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 543, i32 27 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 544, i32 29 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 545, i32 26 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 546, i32 27 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 547, i32 30 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 548, i32 29 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 549, i32 20 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 550, i32 28 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 551, i32 25 }
@___asan_gen_.520 = private unnamed_addr constant [11 x i8] c"nvmf_hosts\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 19, i32 8 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 881, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 931, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1103, i32 23 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1081, i32 21 }
@___asan_gen_.547 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1153, i32 15 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1155, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1161, i32 54 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1163, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1170, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.575 = private constant [31 x i8] c"../drivers/nvme/host/fabrics.c\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 71, i32 3 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_nvmf_exit, ptr @__initcall__kmod_nvme_fabrics__371_1201_nvmf_init6, ptr @__ksymtab_nvmf_connect_admin_queue, ptr @__ksymtab_nvmf_connect_io_queue, ptr @__ksymtab_nvmf_free_options, ptr @__ksymtab_nvmf_get_address, ptr @__ksymtab_nvmf_ip_options_match, ptr @__ksymtab_nvmf_reg_read32, ptr @__ksymtab_nvmf_reg_read64, ptr @__ksymtab_nvmf_reg_write32, ptr @__ksymtab_nvmf_register_transport, ptr @__ksymtab_nvmf_should_reconnect, ptr @__ksymtab_nvmf_unregister_transport, ptr @nvmf_check_allowed_opts._entry, ptr @nvmf_check_allowed_opts._entry_ptr, ptr @nvmf_check_required_opts._entry, ptr @nvmf_check_required_opts._entry_ptr, ptr @nvmf_create_ctrl._entry, ptr @nvmf_create_ctrl._entry_ptr, ptr @nvmf_exit, ptr @nvmf_init._entry, ptr @nvmf_init._entry.142, ptr @nvmf_init._entry.145, ptr @nvmf_init._entry_ptr, ptr @nvmf_init._entry_ptr.144, ptr @nvmf_init._entry_ptr.147, ptr @nvmf_log_connect_error._entry, ptr @nvmf_log_connect_error._entry.18, ptr @nvmf_log_connect_error._entry.21, ptr @nvmf_log_connect_error._entry.24, ptr @nvmf_log_connect_error._entry.28, ptr @nvmf_log_connect_error._entry.31, ptr @nvmf_log_connect_error._entry.33, ptr @nvmf_log_connect_error._entry.36, ptr @nvmf_log_connect_error._entry.39, ptr @nvmf_log_connect_error._entry.42, ptr @nvmf_log_connect_error._entry.45, ptr @nvmf_log_connect_error._entry_ptr, ptr @nvmf_log_connect_error._entry_ptr.20, ptr @nvmf_log_connect_error._entry_ptr.23, ptr @nvmf_log_connect_error._entry_ptr.26, ptr @nvmf_log_connect_error._entry_ptr.30, ptr @nvmf_log_connect_error._entry_ptr.32, ptr @nvmf_log_connect_error._entry_ptr.35, ptr @nvmf_log_connect_error._entry_ptr.38, ptr @nvmf_log_connect_error._entry_ptr.41, ptr @nvmf_log_connect_error._entry_ptr.44, ptr @nvmf_log_connect_error._entry_ptr.47, ptr @nvmf_parse_options._entry, ptr @nvmf_parse_options._entry.100, ptr @nvmf_parse_options._entry.103, ptr @nvmf_parse_options._entry.106, ptr @nvmf_parse_options._entry.109, ptr @nvmf_parse_options._entry.62, ptr @nvmf_parse_options._entry.65, ptr @nvmf_parse_options._entry.71, ptr @nvmf_parse_options._entry.74, ptr @nvmf_parse_options._entry.77, ptr @nvmf_parse_options._entry.80, ptr @nvmf_parse_options._entry.83, ptr @nvmf_parse_options._entry.86, ptr @nvmf_parse_options._entry.88, ptr @nvmf_parse_options._entry.91, ptr @nvmf_parse_options._entry.94, ptr @nvmf_parse_options._entry.97, ptr @nvmf_parse_options._entry_ptr, ptr @nvmf_parse_options._entry_ptr.102, ptr @nvmf_parse_options._entry_ptr.105, ptr @nvmf_parse_options._entry_ptr.108, ptr @nvmf_parse_options._entry_ptr.111, ptr @nvmf_parse_options._entry_ptr.64, ptr @nvmf_parse_options._entry_ptr.67, ptr @nvmf_parse_options._entry_ptr.73, ptr @nvmf_parse_options._entry_ptr.76, ptr @nvmf_parse_options._entry_ptr.79, ptr @nvmf_parse_options._entry_ptr.82, ptr @nvmf_parse_options._entry_ptr.85, ptr @nvmf_parse_options._entry_ptr.87, ptr @nvmf_parse_options._entry_ptr.90, ptr @nvmf_parse_options._entry_ptr.93, ptr @nvmf_parse_options._entry_ptr.96, ptr @nvmf_parse_options._entry_ptr.99, ptr @nvmf_reg_read32._entry, ptr @nvmf_reg_read32._entry_ptr, ptr @nvmf_reg_read64._entry, ptr @nvmf_reg_read64._entry_ptr, ptr @nvmf_reg_write32._entry, ptr @nvmf_reg_write32._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nvmf_transports_rwsem, ptr @nvmf_transports, ptr @nvmf_misc, ptr @nvmf_class, ptr @nvmf_default_host, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @nvmf_hosts_mutex, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @nvmf_dev_fops, ptr @nvmf_dev_mutex, ptr @nvmf_device, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @opt_tokens, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @nvmf_hosts, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @nvmf_init.__key, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.146, ptr @.str.148], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_reg_read32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_reg_read64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_reg_write32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_transports_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_transports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_default_host to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_log_connect_error._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_hosts_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_dev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_dev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_create_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_tokens to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_parse_options._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_hosts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_check_required_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_check_allowed_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_init._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmf_init._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmf_get_address(ptr nocapture noundef readonly %ctrl, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 93
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %traddr, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str, ptr noundef %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opts, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and4 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.0
  %sub = sub i32 %size, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool7.not = icmp eq i32 %len.0, 0
  %cond = select i1 %tobool7.not, ptr @.str.3, ptr @.str.2
  %trsvcid = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %trsvcid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trsvcid, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef %11) #15
  %add10 = add i32 %call9, %len.0
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %len.1 = phi i32 [ %add10, %if.then6 ], [ %len.0, %if.end.if.end11_crit_edge ]
  %12 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %opts, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and14 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.if.end24_crit_edge, label %if.then16

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %len.1
  %sub18 = sub i32 %size, %len.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %tobool19.not = icmp eq i32 %len.1, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.3, ptr @.str.2
  %host_traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_traddr, align 4
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond20, ptr noundef %17) #15
  %add23 = add i32 %call22, %len.1
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.end11.if.end24_crit_edge
  %len.2 = phi i32 [ %add23, %if.then16 ], [ %len.1, %if.end11.if.end24_crit_edge ]
  %18 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %opts, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and27 = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end24.if.end37_crit_edge, label %if.then29

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %len.2
  %sub31 = sub i32 %size, %len.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2)
  %tobool32.not = icmp eq i32 %len.2, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.3, ptr @.str.2
  %host_iface = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %host_iface to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_iface, align 4
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond33, ptr noundef %23) #15
  %add36 = add i32 %call35, %len.2
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end24.if.end37_crit_edge
  %len.3 = phi i32 [ %add36, %if.then29 ], [ %len.2, %if.end24.if.end37_crit_edge ]
  %add.ptr38 = getelementptr i8, ptr %buf, i32 %len.3
  %sub39 = sub i32 %size, %len.3
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.6) #15
  %add41 = add i32 %call40, %len.3
  ret i32 %add41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmf_reg_read32(ptr nocapture noundef readonly %ctrl, i32 noundef %off, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %cmd = alloca %struct.nvme_command, align 8
  %res = alloca %union.nvme_result, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #15
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %res, align 8, !annotation !306
  %1 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %cmd, align 8
  %fctype = getelementptr inbounds %struct.nvmf_property_get_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %fctype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %fctype, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %off)
  %offset = getelementptr inbounds %struct.nvmf_property_get_command, ptr %cmd, i32 0, i32 7
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %offset, align 4
  %fabrics_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fabrics_q, align 8
  %call = call i32 @__nvme_submit_sync_cmd(ptr noundef %7, ptr noundef nonnull %cmd, ptr noundef nonnull %res, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %res, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %9)
  %conv = trunc i64 %10 to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end.if.end7_crit_edge, label %if.end.do.end_crit_edge, !prof !307

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp sgt i32 %call, 0
  %and = and i32 %call, -16385
  %cond = select i1 %cmp5, i32 %and, i32 %call
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %cond, i32 noundef %off) #18
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #15
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nvme_submit_sync_cmd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmf_reg_read64(ptr nocapture noundef readonly %ctrl, i32 noundef %off, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %cmd = alloca %struct.nvme_command, align 8
  %res = alloca %union.nvme_result, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #15
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #15
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %res, align 8, !annotation !306
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %cmd, align 8
  %fctype = getelementptr inbounds %struct.nvmf_property_get_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %fctype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %fctype, align 4
  %attrib = getelementptr inbounds %struct.nvmf_property_get_command, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %attrib to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %attrib, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %off)
  %offset = getelementptr inbounds %struct.nvmf_property_get_command, ptr %cmd, i32 0, i32 7
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %offset, align 4
  %fabrics_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fabrics_q, align 8
  %call = call i32 @__nvme_submit_sync_cmd(ptr noundef %8, ptr noundef nonnull %cmd, ptr noundef nonnull %res, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %res, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %val, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end.if.end5_crit_edge, label %if.end.do.end_crit_edge, !prof !307

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp sgt i32 %call, 0
  %and = and i32 %call, -16385
  %cond = select i1 %cmp4, i32 %and, i32 %call
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.7, i32 noundef %cond, i32 noundef %off) #18
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmf_reg_write32(ptr nocapture noundef readonly %ctrl, i32 noundef %off, i32 noundef %val) #0 align 64 {
entry:
  %cmd = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #15
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 127, ptr %cmd, align 8
  %attrib = getelementptr inbounds %struct.nvmf_property_set_command, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %attrib to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %attrib, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %off)
  %offset = getelementptr inbounds %struct.nvmf_property_set_command, ptr %cmd, i32 0, i32 7
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %offset, align 4
  %conv = zext i32 %val to i64
  %5 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %value = getelementptr inbounds %struct.nvmf_property_set_command, ptr %cmd, i32 0, i32 8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %value, align 8
  %fabrics_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fabrics_q, align 8
  %call = call i32 @__nvme_submit_sync_cmd(ptr noundef %8, ptr noundef nonnull %cmd, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %and = and i32 %call, -16385
  %cond = select i1 %cmp, i32 %and, i32 %call
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %cond, i32 noundef %off) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmf_connect_admin_queue(ptr nocapture noundef %ctrl) #0 align 64 {
entry:
  %cmd = alloca %struct.nvme_command, align 8
  %res = alloca %union.nvme_result, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #15
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #15
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %res, align 8, !annotation !306
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %cmd, align 8
  %fctype = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %fctype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %fctype, align 4
  %qid = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 7
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %qid, align 2
  %sqsize = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 8
  %5 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 7936, ptr %sqsize, align 4
  %kato = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 59
  %6 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kato, align 8
  %mul = mul i32 %7, 1000
  %8 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %kato1 = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 11
  %9 = ptrtoint ptr %kato1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %kato1, align 8
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 93
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opts, align 8
  %disable_sqflow = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %disable_sqflow to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %disable_sqflow, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cattr = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 9
  %14 = ptrtoint ptr %cattr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cattr, align 2
  %16 = or i8 %15, 4
  store i8 %16, ptr %cattr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 1024) #19
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %18 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %opts, align 8
  %host = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %id = getelementptr inbounds %struct.nvmf_host, ptr %21, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %call7.i.i, ptr %id, i32 16)
  %cntlid = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %cntlid to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %cntlid, align 8
  %subsysnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i.i, i32 0, i32 3
  %subsysnqn8 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %subsysnqn8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subsysnqn8, align 4
  %call9 = tail call ptr @strncpy(ptr noundef %subsysnqn, ptr noundef %25, i32 noundef 223)
  %hostnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %nqn = getelementptr inbounds %struct.nvmf_host, ptr %27, i32 0, i32 2
  %call14 = tail call ptr @strncpy(ptr noundef %hostnqn, ptr noundef %nqn, i32 noundef 223)
  %fabrics_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 8
  %28 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fabrics_q, align 8
  %call15 = call i32 @__nvme_submit_sync_cmd(ptr noundef %29, ptr noundef nonnull %cmd, ptr noundef nonnull %res, ptr noundef nonnull %call7.i.i, i32 noundef 1024, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %res, align 8
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call fastcc void @nvmf_log_connect_error(ptr noundef %ctrl, i32 noundef %call15, i32 noundef %32, ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i.i)
  br label %out_free_data

if.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %res, align 8
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %cntlid19 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 27
  %36 = ptrtoint ptr %cntlid19 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %cntlid19, align 8
  br label %out_free_data

out_free_data:                                    ; preds = %if.end18, %if.then17
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free_data, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %out_free_data ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmf_log_connect_error(ptr nocapture noundef readonly %ctrl, i32 noundef %errval, i32 noundef %offset, ptr nocapture noundef readonly %cmd, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %errval, -16385
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end59 [
    i32 386, label %sw.bb
    i32 388, label %do.end34
    i32 385, label %do.end43
    i32 384, label %do.end48
    i32 880, label %do.end54
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 65536
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %trunc = trunc i32 %offset to i16
  %1 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.149)
  switch i16 %trunc, label %do.end16 [
    i16 16, label %do.end
    i16 512, label %do.end6
    i16 256, label %do.end11
  ]

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %cntlid = getelementptr inbounds %struct.nvmf_connect_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cntlid, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %conv) #18
  br label %sw.epilog61

do.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %device7 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %6 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device7, align 8
  %hostnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15, ptr noundef %hostnqn) #18
  br label %sw.epilog61

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %device12 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %8 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device12, align 8
  %subsysnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %data, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15, ptr noundef %subsysnqn) #18
  br label %sw.epilog61

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and1 = and i32 %offset, 65535
  %device17 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %10 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.15, i32 noundef %and1) #18
  br label %sw.epilog61

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %offset)
  %cond = icmp eq i32 %offset, 42
  %device23 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %12 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device23, align 8
  br i1 %cond, label %do.end22, label %do.end28

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %qid = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 7
  %14 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %qid, align 2
  %conv24 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv24) #18
  br label %sw.epilog61

do.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, i32 noundef %offset) #18
  br label %sw.epilog61

do.end34:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device35 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %16 = ptrtoint ptr %device35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device35, align 8
  %subsysnqn36 = getelementptr inbounds %struct.nvmf_connect_data, ptr %data, i32 0, i32 3
  %hostnqn38 = getelementptr inbounds %struct.nvmf_connect_data, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.34, ptr noundef %subsysnqn36, ptr noundef %hostnqn38) #18
  br label %sw.epilog61

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device44 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %18 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.37) #18
  br label %sw.epilog61

do.end48:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device49 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %20 = ptrtoint ptr %device49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device49, align 8
  %recfmt = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 6
  %22 = ptrtoint ptr %recfmt to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %recfmt, align 8
  %conv50 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.40, i32 noundef %conv50) #18
  br label %sw.epilog61

do.end54:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device55 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %24 = ptrtoint ptr %device55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.43) #18
  br label %sw.epilog61

do.end59:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device60 = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %26 = ptrtoint ptr %device60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.46, i32 noundef %and) #18
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %do.end59, %do.end54, %do.end48, %do.end43, %do.end34, %do.end28, %do.end22, %do.end16, %do.end11, %do.end6, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmf_connect_io_queue(ptr nocapture noundef readonly %ctrl, i16 noundef zeroext %qid) #0 align 64 {
entry:
  %cmd = alloca %struct.nvme_command, align 8
  %res = alloca %union.nvme_result, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #15
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #15
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %res, align 8, !annotation !306
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %cmd, align 8
  %fctype = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %fctype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %fctype, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %qid)
  %qid1 = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 7
  %5 = ptrtoint ptr %qid1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %qid1, align 2
  %sqsize = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 44
  %6 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sqsize, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %sqsize2 = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 8
  %9 = ptrtoint ptr %sqsize2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %sqsize2, align 4
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 93
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opts, align 8
  %disable_sqflow = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %disable_sqflow to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %disable_sqflow, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cattr = getelementptr inbounds %struct.nvmf_connect_command, ptr %cmd, i32 0, i32 9
  %14 = ptrtoint ptr %cattr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cattr, align 2
  %16 = or i8 %15, 4
  store i8 %16, ptr %cattr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 1024) #19
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %18 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %opts, align 8
  %host = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %id = getelementptr inbounds %struct.nvmf_host, ptr %21, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %call7.i.i, ptr %id, i32 16)
  %cntlid = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 27
  %23 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cntlid, align 8
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %cntlid8 = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %cntlid8 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %cntlid8, align 8
  %subsysnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i.i, i32 0, i32 3
  %subsysnqn10 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %19, i32 0, i32 2
  %27 = ptrtoint ptr %subsysnqn10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subsysnqn10, align 4
  %call11 = tail call ptr @strncpy(ptr noundef %subsysnqn, ptr noundef %28, i32 noundef 223)
  %hostnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %nqn = getelementptr inbounds %struct.nvmf_host, ptr %30, i32 0, i32 2
  %call16 = tail call ptr @strncpy(ptr noundef %hostnqn, ptr noundef %nqn, i32 noundef 223)
  %connect_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 7
  %31 = ptrtoint ptr %connect_q to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connect_q, align 4
  %conv17 = zext i16 %qid to i32
  %call18 = call i32 @__nvme_submit_sync_cmd(ptr noundef %32, ptr noundef nonnull %cmd, ptr noundef nonnull %res, ptr noundef nonnull %call7.i.i, i32 noundef 1024, i32 noundef 0, i32 noundef %conv17, i32 noundef 1, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end6.if.end21_crit_edge, label %if.then20

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %res, align 8
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  call fastcc void @nvmf_log_connect_error(ptr noundef %ctrl, i32 noundef %call18, i32 noundef %35, ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i.i)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end6.if.end21_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end21 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nvmf_should_reconnect(ptr nocapture noundef readonly %ctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 93
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts, align 8
  %max_reconnects = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %max_reconnects to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_reconnects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %nr_reconnects = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 91
  %4 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_reconnects, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp3 = icmp slt i32 %5, %3
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %cmp3, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmf_register_transport(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %create_ctrl = getelementptr inbounds %struct.nvmf_transport_ops, ptr %ops, i32 0, i32 5
  %0 = ptrtoint ptr %create_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %create_ctrl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef nonnull @nvmf_transports_rwsem) #15
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmf_transports, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ops, ptr noundef %2, ptr noundef nonnull @nvmf_transports) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %ops, ptr getelementptr inbounds (%struct.list_head, ptr @nvmf_transports, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvmf_transports, ptr %ops, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ops, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ops, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @nvmf_transports_rwsem) #15
  br label %return

return:                                           ; preds = %list_add_tail.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmf_unregister_transport(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @nvmf_transports_rwsem) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ops) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %ops, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ops, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef nonnull @nvmf_transports_rwsem) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nvmf_ip_options_match(ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %opts) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %entry.return_crit_edge, label %lor.lhs.false6.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false6.i:                                 ; preds = %entry
  %subsysnqn.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 2
  %2 = ptrtoint ptr %subsysnqn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subsysnqn.i, align 4
  %opts7.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 93
  %4 = ptrtoint ptr %opts7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opts7.i, align 8
  %subsysnqn8.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %subsysnqn8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subsysnqn8.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef %7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false9.i, label %lor.lhs.false6.i.return_crit_edge

lor.lhs.false6.i.return_crit_edge:                ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %host.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 13
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %nqn.i = getelementptr inbounds %struct.nvmf_host, ptr %9, i32 0, i32 2
  %host11.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %host11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host11.i, align 4
  %nqn12.i = getelementptr inbounds %struct.nvmf_host, ptr %11, i32 0, i32 2
  %call14.i = tail call i32 @strcmp(ptr noundef %nqn.i, ptr noundef %nqn12.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %nvmf_ctlr_matches_baseopts.exit, label %lor.lhs.false9.i.return_crit_edge

lor.lhs.false9.i.return_crit_edge:                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

nvmf_ctlr_matches_baseopts.exit:                  ; preds = %lor.lhs.false9.i
  %id.i = getelementptr inbounds %struct.nvmf_host, ptr %9, i32 0, i32 3
  %id20.i = getelementptr inbounds %struct.nvmf_host, ptr %11, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %id.i, ptr noundef dereferenceable(16) %id20.i, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool22.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool22.not.i, label %lor.lhs.false, label %nvmf_ctlr_matches_baseopts.exit.return_crit_edge

nvmf_ctlr_matches_baseopts.exit.return_crit_edge: ; preds = %nvmf_ctlr_matches_baseopts.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false:                                    ; preds = %nvmf_ctlr_matches_baseopts.exit
  %traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 3
  %12 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %traddr, align 4
  %14 = ptrtoint ptr %opts7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %opts7.i, align 8
  %traddr2 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %traddr2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %traddr2, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %17) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %trsvcid = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 4
  %18 = ptrtoint ptr %trsvcid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trsvcid, align 4
  %trsvcid6 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %trsvcid6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trsvcid6, align 4
  %call7 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %21) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false4.return_crit_edge

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %22 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opts, align 4
  %and = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %15, align 4
  %and27 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool9.not, label %lor.lhs.false24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool28.not, label %land.lhs.true.return_crit_edge, label %if.then14

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then14:                                        ; preds = %land.lhs.true
  %host_traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 5
  %26 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_traddr, align 4
  %host_traddr16 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %15, i32 0, i32 5
  %28 = ptrtoint ptr %host_traddr16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_traddr16, align 4
  %call17 = tail call i32 @strcmp(ptr noundef %27, ptr noundef %29) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.if.end31_crit_edge, label %if.then14.return_crit_edge

if.then14.return_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then14.if.end31_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

lor.lhs.false24:                                  ; preds = %if.end
  br i1 %tobool28.not, label %lor.lhs.false24.if.end31_crit_edge, label %lor.lhs.false24.return_crit_edge

lor.lhs.false24.return_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false24.if.end31_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false24.if.end31_crit_edge, %if.then14.if.end31_crit_edge
  br label %return

return:                                           ; preds = %if.end31, %lor.lhs.false24.return_crit_edge, %if.then14.return_crit_edge, %land.lhs.true.return_crit_edge, %lor.lhs.false4.return_crit_edge, %lor.lhs.false.return_crit_edge, %nvmf_ctlr_matches_baseopts.exit.return_crit_edge, %lor.lhs.false9.i.return_crit_edge, %lor.lhs.false6.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end31 ], [ false, %lor.lhs.false4.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %nvmf_ctlr_matches_baseopts.exit.return_crit_edge ], [ false, %if.then14.return_crit_edge ], [ false, %lor.lhs.false24.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %lor.lhs.false9.i.return_crit_edge ], [ false, %lor.lhs.false6.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmf_free_options(ptr noundef %opts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 13
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call fastcc void @nvmf_host_put(ptr noundef %1)
  %transport = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 1
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 4
  tail call void @kfree(ptr noundef %3) #15
  %traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 3
  %4 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %traddr, align 4
  tail call void @kfree(ptr noundef %5) #15
  %trsvcid = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 4
  %6 = ptrtoint ptr %trsvcid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trsvcid, align 4
  tail call void @kfree(ptr noundef %7) #15
  %subsysnqn = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 2
  %8 = ptrtoint ptr %subsysnqn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subsysnqn, align 4
  tail call void @kfree(ptr noundef %9) #15
  %host_traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 5
  %10 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_traddr, align 4
  tail call void @kfree(ptr noundef %11) #15
  %host_iface = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 6
  %12 = ptrtoint ptr %host_iface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_iface, align 4
  tail call void @kfree(ptr noundef %13) #15
  tail call void @kfree(ptr noundef %opts) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmf_host_put(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %host, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %host, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !309
  tail call void @llvm.prefetch.p0(ptr nonnull %host, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %host, ptr nonnull %host, i32 1, ptr nonnull elementtype(i32) %host) #15, !srcloc !310
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !307

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %host, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !311
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmf_hosts_mutex, i32 noundef 0) #15
  %list.i.i = getelementptr inbounds %struct.nvmf_host, ptr %host, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.nvmf_host_destroy.exit.i_crit_edge

if.then.i.nvmf_host_destroy.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvmf_host_destroy.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.nvmf_host, ptr %host, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i.i, align 4
  %3 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %nvmf_host_destroy.exit.i

nvmf_host_destroy.exit.i:                         ; preds = %if.end.i.i.i.i, %if.then.i.nvmf_host_destroy.exit.i_crit_edge
  %7 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.nvmf_host, ptr %host, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmf_hosts_mutex) #15
  tail call void @kfree(ptr noundef nonnull %host) #15
  br label %if.end

if.end:                                           ; preds = %nvmf_host_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvmf_exit() #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @misc_deregister(ptr noundef nonnull @nvmf_misc) #15
  %0 = load ptr, ptr @nvmf_class, align 4
  tail call void @device_destroy(ptr noundef %0, i32 noundef 0) #15
  %1 = load ptr, ptr @nvmf_class, align 4
  tail call void @class_destroy(ptr noundef %1) #15
  %2 = load ptr, ptr @nvmf_default_host, align 4
  tail call fastcc void @nvmf_host_put(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmf_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 252) #19
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %nvmf_host_default.exit.thread, label %if.end.i

nvmf_host_default.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr @nvmf_default_host, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #15
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  %id.i = getelementptr inbounds %struct.nvmf_host, ptr %call7.i.i, i32 0, i32 3
  tail call void @uuid_gen(ptr noundef %id.i) #15
  %nqn.i = getelementptr inbounds %struct.nvmf_host, ptr %call7.i.i, i32 0, i32 2
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %nqn.i, i32 noundef 223, ptr noundef nonnull @.str.148, ptr noundef %id.i) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmf_hosts_mutex, i32 noundef 0) #15
  %list.i = getelementptr inbounds %struct.nvmf_host, ptr %call7.i.i, i32 0, i32 1
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmf_hosts, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %2, ptr noundef nonnull @nvmf_hosts) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @nvmf_hosts, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvmf_hosts, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nvmf_host, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i.i, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list.i, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvmf_hosts_mutex) #15
  store ptr %call7.i.i, ptr @nvmf_default_host, align 4
  %call1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @nvmf_init.__key) #15
  store ptr %call1, ptr @nvmf_class, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #18
  %6 = load ptr, ptr @nvmf_class, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %out_free_host

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %call1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.141) #15
  store ptr %call8, ptr @nvmf_device, align 4
  %cmp.i29 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #18
  %8 = load ptr, ptr @nvmf_device, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %out_destroy_class

if.end17:                                         ; preds = %if.end7
  %call18 = tail call i32 @misc_register(ptr noundef nonnull @nvmf_misc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %do.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %call18) #18
  %10 = load ptr, ptr @nvmf_class, align 4
  tail call void @device_destroy(ptr noundef %10, i32 noundef 0) #15
  br label %out_destroy_class

out_destroy_class:                                ; preds = %do.end23, %do.end13
  %ret.0 = phi i32 [ %9, %do.end13 ], [ %call18, %do.end23 ]
  %11 = load ptr, ptr @nvmf_class, align 4
  tail call void @class_destroy(ptr noundef %11) #15
  br label %out_free_host

out_free_host:                                    ; preds = %out_destroy_class, %do.end
  %ret.1 = phi i32 [ %7, %do.end ], [ %ret.0, %out_destroy_class ]
  %12 = load ptr, ptr @nvmf_default_host, align 4
  tail call fastcc void @nvmf_host_put(ptr noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %out_free_host, %if.end17.cleanup_crit_edge, %nvmf_host_default.exit.thread
  %retval.0 = phi i32 [ %ret.1, %out_free_host ], [ 0, %if.end17.cleanup_crit_edge ], [ -12, %nvmf_host_default.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmf_dev_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %count) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmf_dev_mutex, i32 noundef 0) #15
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end6, label %if.end4.out_unlock_crit_edge

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end6:                                          ; preds = %if.end4
  %5 = load ptr, ptr @nvmf_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 76) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end6.if.then9_crit_edge, label %if.end.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

if.end.i:                                         ; preds = %if.end6
  %call2.i = tail call fastcc i32 @nvmf_parse_options(ptr noundef nonnull %call7.i.i.i, ptr noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.out_free_opts.i_crit_edge

if.end.i.out_free_opts.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_opts.i

if.end5.i:                                        ; preds = %if.end.i
  %transport.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transport.i, align 4
  %call6.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55, ptr noundef %8) #15
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i.i.i, align 8
  %and.i.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.not.i.i, label %if.end10.i, label %if.end5.i.for.body.i.i_crit_edge

if.end5.i.for.body.i.i_crit_edge:                 ; preds = %if.end5.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end5.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end5.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %i.018.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7.i.i.i, align 8
  %and6.i.i = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pattern.i.i = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %i.018.i.i, i32 1
  %15 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pattern.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %16) #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 23
  br i1 %exitcond.not.i.i, label %for.inc.i.i.out_free_opts.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.out_free_opts.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_opts.i

if.end10.i:                                       ; preds = %if.end5.i
  %and.i = and i32 %10, -4
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %call7.i.i.i, align 8
  tail call void @down_read(ptr noundef nonnull @nvmf_transports_rwsem) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i64.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i64.i, label %if.end10.i.for.cond.i.i.preheader_crit_edge, label %land.rhs.i.i

if.end10.i.for.cond.i.i.preheader_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.preheader

land.rhs.i.i:                                     ; preds = %if.end10.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @nvmf_transports_rwsem, i32 0, i32 6), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i65.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i65.i, label %do.end.i66.i, label %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, !prof !312

land.rhs.i.i.for.cond.i.i.preheader_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.preheader

do.end.i66.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 519, i32 noundef 9, ptr noundef null) #15
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %do.end.i66.i, %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, %if.end10.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i67.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %ops.0.in.i.i = phi ptr [ %ops.0.i.i, %for.body.i67.i.for.cond.i.i_crit_edge ], [ @nvmf_transports, %for.cond.i.i.preheader ]
  %19 = ptrtoint ptr %ops.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %ops.0.i.i = load ptr, ptr %ops.0.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %ops.0.i.i, @nvmf_transports
  br i1 %cmp26.not.i.i, label %for.cond.i.i.do.end.i_crit_edge, label %for.body.i67.i

for.cond.i.i.do.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

for.body.i67.i:                                   ; preds = %for.cond.i.i
  %name.i.i = getelementptr inbounds %struct.nvmf_transport_ops, ptr %ops.0.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i.i, align 4
  %22 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport.i, align 4
  %call29.i.i = tail call i32 @strcmp(ptr noundef %21, ptr noundef %23) #20
  %cmp30.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %cmp30.i.i, label %nvmf_lookup_transport.exit.i, label %for.body.i67.i.for.cond.i.i_crit_edge

for.body.i67.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

nvmf_lookup_transport.exit.i:                     ; preds = %for.body.i67.i
  %tobool12.not.i = icmp eq ptr %ops.0.i.i, null
  br i1 %tobool12.not.i, label %nvmf_lookup_transport.exit.i.do.end.i_crit_edge, label %if.end16.i

nvmf_lookup_transport.exit.i.do.end.i_crit_edge:  ; preds = %nvmf_lookup_transport.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %nvmf_lookup_transport.exit.i.do.end.i_crit_edge, %for.cond.i.i.do.end.i_crit_edge
  %24 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transport.i, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %25) #18
  br label %out_unlock.i

if.end16.i:                                       ; preds = %nvmf_lookup_transport.exit.i
  %module.i = getelementptr inbounds %struct.nvmf_transport_ops, ptr %ops.0.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module.i, align 4
  %call17.i = tail call zeroext i1 @try_module_get(ptr noundef %27) #15
  br i1 %call17.i, label %if.end19.i, label %if.end16.i.out_unlock.i_crit_edge

if.end16.i.out_unlock.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.i

if.end19.i:                                       ; preds = %if.end16.i
  tail call void @up_read(ptr noundef nonnull @nvmf_transports_rwsem) #15
  %required_opts.i = getelementptr inbounds %struct.nvmf_transport_ops, ptr %ops.0.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %required_opts.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %required_opts.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i.i.i, align 8
  %and.i69.i = and i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i69.i, i32 %29)
  %cmp.not.i70.i = icmp eq i32 %and.i69.i, %29
  br i1 %cmp.not.i70.i, label %if.end23.i, label %if.end19.i.for.body.i75.i_crit_edge

if.end19.i.for.body.i75.i_crit_edge:              ; preds = %if.end19.i
  br label %for.body.i75.i

for.body.i75.i:                                   ; preds = %for.inc.i84.i.for.body.i75.i_crit_edge, %if.end19.i.for.body.i75.i_crit_edge
  %i.018.i71.i = phi i32 [ %inc.i82.i, %for.inc.i84.i.for.body.i75.i_crit_edge ], [ 0, %if.end19.i.for.body.i75.i_crit_edge ]
  %arrayidx.i72.i = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %i.018.i71.i
  %32 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i72.i, align 4
  %and2.i73.i = and i32 %33, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i73.i)
  %tobool.not.i74.i = icmp eq i32 %and2.i73.i, 0
  br i1 %tobool.not.i74.i, label %for.body.i75.i.for.inc.i84.i_crit_edge, label %land.lhs.true.i78.i

for.body.i75.i.for.inc.i84.i_crit_edge:           ; preds = %for.body.i75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i84.i

land.lhs.true.i78.i:                              ; preds = %for.body.i75.i
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call7.i.i.i, align 8
  %and6.i76.i = and i32 %35, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i76.i)
  %tobool7.not.i77.i = icmp eq i32 %and6.i76.i, 0
  br i1 %tobool7.not.i77.i, label %do.end.i81.i, label %land.lhs.true.i78.i.for.inc.i84.i_crit_edge

land.lhs.true.i78.i.for.inc.i84.i_crit_edge:      ; preds = %land.lhs.true.i78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i84.i

do.end.i81.i:                                     ; preds = %land.lhs.true.i78.i
  call void @__sanitizer_cov_trace_pc() #17
  %pattern.i79.i = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %i.018.i71.i, i32 1
  %36 = ptrtoint ptr %pattern.i79.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pattern.i79.i, align 4
  %call.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %37) #18
  br label %for.inc.i84.i

for.inc.i84.i:                                    ; preds = %do.end.i81.i, %land.lhs.true.i78.i.for.inc.i84.i_crit_edge, %for.body.i75.i.for.inc.i84.i_crit_edge
  %inc.i82.i = add nuw nsw i32 %i.018.i71.i, 1
  %exitcond.not.i83.i = icmp eq i32 %inc.i82.i, 23
  br i1 %exitcond.not.i83.i, label %for.inc.i84.i.out_module_put.i_crit_edge, label %for.inc.i84.i.for.body.i75.i_crit_edge

for.inc.i84.i.for.body.i75.i_crit_edge:           ; preds = %for.inc.i84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i75.i

for.inc.i84.i.out_module_put.i_crit_edge:         ; preds = %for.inc.i84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_module_put.i

if.end23.i:                                       ; preds = %if.end19.i
  %allowed_opts.i = getelementptr inbounds %struct.nvmf_transport_ops, ptr %ops.0.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %allowed_opts.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %allowed_opts.i, align 4
  %or.i = or i32 %29, %39
  %or25.i = or i32 %or.i, 5271984
  %call26.i = tail call fastcc i32 @nvmf_check_allowed_opts(ptr noundef nonnull %call7.i.i.i, i32 noundef %or25.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end23.i.out_module_put.i_crit_edge

if.end23.i.out_module_put.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_module_put.i

if.end29.i:                                       ; preds = %if.end23.i
  %create_ctrl.i = getelementptr inbounds %struct.nvmf_transport_ops, ptr %ops.0.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %create_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %create_ctrl.i, align 4
  %call30.i = tail call ptr %41(ptr noundef %5, ptr noundef nonnull %call7.i.i.i) #15
  %cmp.i.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then32.i, label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %call30.i to i32
  br label %out_module_put.i

if.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %44) #15
  br label %nvmf_create_ctrl.exit

out_module_put.i:                                 ; preds = %if.then32.i, %if.end23.i.out_module_put.i_crit_edge, %for.inc.i84.i.out_module_put.i_crit_edge
  %ret.0.i = phi i32 [ %call26.i, %if.end23.i.out_module_put.i_crit_edge ], [ %42, %if.then32.i ], [ -22, %for.inc.i84.i.out_module_put.i_crit_edge ]
  %45 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %46) #15
  br label %out_free_opts.i

out_unlock.i:                                     ; preds = %if.end16.i.out_unlock.i_crit_edge, %do.end.i
  %ret.1.i = phi i32 [ -22, %do.end.i ], [ -16, %if.end16.i.out_unlock.i_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @nvmf_transports_rwsem) #15
  br label %out_free_opts.i

out_free_opts.i:                                  ; preds = %out_unlock.i, %out_module_put.i, %for.inc.i.i.out_free_opts.i_crit_edge, %if.end.i.out_free_opts.i_crit_edge
  %ret.2.i = phi i32 [ %call2.i, %if.end.i.out_free_opts.i_crit_edge ], [ %ret.0.i, %out_module_put.i ], [ %ret.1.i, %out_unlock.i ], [ -22, %for.inc.i.i.out_free_opts.i_crit_edge ]
  %host.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 13
  %47 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host.i.i, align 8
  tail call fastcc void @nvmf_host_put(ptr noundef %48) #15
  %transport.i87.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %transport.i87.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %transport.i87.i, align 4
  tail call void @kfree(ptr noundef %50) #15
  %traddr.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %traddr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %traddr.i.i, align 4
  tail call void @kfree(ptr noundef %52) #15
  %trsvcid.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %trsvcid.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trsvcid.i.i, align 8
  tail call void @kfree(ptr noundef %54) #15
  %subsysnqn.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %subsysnqn.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %subsysnqn.i.i, align 8
  tail call void @kfree(ptr noundef %56) #15
  %host_traddr.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %host_traddr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host_traddr.i.i, align 4
  tail call void @kfree(ptr noundef %58) #15
  %host_iface.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %call7.i.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %host_iface.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host_iface.i.i, align 8
  tail call void @kfree(ptr noundef %60) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  %61 = inttoptr i32 %ret.2.i to ptr
  br label %nvmf_create_ctrl.exit

nvmf_create_ctrl.exit:                            ; preds = %out_free_opts.i, %if.end34.i
  %retval.0.i = phi ptr [ %61, %out_free_opts.i ], [ %call30.i, %if.end34.i ]
  %cmp.i26 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %nvmf_create_ctrl.exit.if.then9_crit_edge, label %if.end11

nvmf_create_ctrl.exit.if.then9_crit_edge:         ; preds = %nvmf_create_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

if.then9:                                         ; preds = %nvmf_create_ctrl.exit.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %retval.0.i29 = phi ptr [ %retval.0.i, %nvmf_create_ctrl.exit.if.then9_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.if.then9_crit_edge ]
  %62 = ptrtoint ptr %retval.0.i29 to i32
  br label %out_unlock

if.end11:                                         ; preds = %nvmf_create_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %retval.0.i, ptr %private, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end11, %if.then9, %if.end4.out_unlock_crit_edge
  %ret.0 = phi i32 [ %62, %if.then9 ], [ 0, %if.end11 ], [ -22, %if.end4.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nvmf_dev_mutex) #15
  tail call void @kfree(ptr noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool13.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool13.not, i32 %count, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ %spec.select, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmf_dev_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nvmf_dev_show, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmf_dev_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.nvme_ctrl, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmf_parse_options(ptr noundef %opts, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  %o = alloca ptr, align 4
  %token = alloca i32, align 4
  %hostid = alloca %struct.uuid_t, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #15
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %o) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %token) #15
  %1 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %token, align 4, !annotation !306
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hostid) #15
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 7
  %2 = call ptr @memset(ptr %hostid, i32 255, i32 16)
  %3 = ptrtoint ptr %queue_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %queue_size, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %nr_io_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 8
  %5 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %nr_io_queues, align 4
  %reconnect_delay = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 9
  %6 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %reconnect_delay, align 4
  %kato = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 12
  %7 = ptrtoint ptr %kato to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %kato, align 4
  %duplicate_connect = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 11
  %8 = ptrtoint ptr %duplicate_connect to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %duplicate_connect, align 1
  %fast_io_fail_tmo = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 21
  %9 = ptrtoint ptr %fast_io_fail_tmo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %fast_io_fail_tmo, align 4
  %hdr_digest = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 16
  %10 = ptrtoint ptr %hdr_digest to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %hdr_digest, align 1
  %data_digest = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 17
  %11 = ptrtoint ptr %data_digest to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %data_digest, align 2
  %tos = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 20
  %12 = ptrtoint ptr %tos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tos, align 4
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #15
  %13 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1, ptr %o, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @uuid_gen(ptr noundef nonnull %hostid) #15
  %discovery_nqn283 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 10
  %nr_poll_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 19
  %nr_write_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 18
  %disable_sqflow = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 15
  %host_iface = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 6
  %host_traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 5
  %host = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 13
  %trsvcid = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 4
  %traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 3
  %subsysnqn = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 2
  %transport = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb282, %if.end280, %if.end258, %if.end244, %sw.bb229, %sw.bb227, %sw.bb226, %sw.bb224, %if.end223, %if.end207, %if.end200, %if.end193, %nvmf_host_add.exit.while.cond.outer_crit_edge, %if.end147, %if.end132, %if.end117, %if.end89, %if.then85, %do.body77, %if.end58, %if.end42, %if.end35, %if.end26, %if.end11, %if.end
  %ctrl_loss_tmo.0.ph = phi i32 [ 600, %if.end ], [ %ctrl_loss_tmo.0.ph, %sw.bb282 ], [ %ctrl_loss_tmo.0.ph, %if.end280 ], [ %ctrl_loss_tmo.0.ph, %if.end258 ], [ %ctrl_loss_tmo.0.ph, %if.end244 ], [ %ctrl_loss_tmo.0.ph, %sw.bb229 ], [ %ctrl_loss_tmo.0.ph, %sw.bb227 ], [ %ctrl_loss_tmo.0.ph, %sw.bb226 ], [ %ctrl_loss_tmo.0.ph, %sw.bb224 ], [ %ctrl_loss_tmo.0.ph, %if.end223 ], [ %ctrl_loss_tmo.0.ph, %if.end207 ], [ %ctrl_loss_tmo.0.ph, %if.end200 ], [ %ctrl_loss_tmo.0.ph, %if.end193 ], [ %ctrl_loss_tmo.0.ph, %nvmf_host_add.exit.while.cond.outer_crit_edge ], [ %ctrl_loss_tmo.0.ph, %if.end147 ], [ %57, %if.end132 ], [ %ctrl_loss_tmo.0.ph, %if.end117 ], [ %ctrl_loss_tmo.0.ph, %if.then85 ], [ %ctrl_loss_tmo.0.ph, %if.end89 ], [ %ctrl_loss_tmo.0.ph, %if.end58 ], [ %ctrl_loss_tmo.0.ph, %if.end42 ], [ %ctrl_loss_tmo.0.ph, %if.end35 ], [ %ctrl_loss_tmo.0.ph, %if.end26 ], [ %ctrl_loss_tmo.0.ph, %if.end11 ], [ %ctrl_loss_tmo.0.ph, %do.body77 ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %call2 = call ptr @strsep(ptr noundef nonnull %o, ptr noundef nonnull @.str.58) #15
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call2, align 1
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %while.body.while.cond_crit_edge, label %if.end5

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @match_token(ptr noundef nonnull %call2, ptr noundef nonnull @opt_tokens, ptr noundef nonnull %args) #15
  %16 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call6, ptr %token, align 4
  %17 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %opts, align 4
  %or = or i32 %18, %call6
  store i32 %or, ptr %opts, align 4
  %19 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call6, label %do.end286 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 4, label %sw.bb30
    i32 8, label %sw.bb37
    i32 16, label %sw.bb44
    i32 32, label %sw.bb60
    i32 128, label %sw.bb94
    i32 2048, label %sw.bb119
    i32 1048576, label %sw.bb133
    i32 256, label %sw.bb149
    i32 512, label %sw.bb180
    i32 1024, label %sw.bb195
    i32 2097152, label %sw.bb202
    i32 4096, label %sw.bb209
    i32 8192, label %sw.bb224
    i32 16384, label %sw.bb226
    i32 32768, label %sw.bb227
    i32 65536, label %sw.bb229
    i32 131072, label %sw.bb231
    i32 262144, label %sw.bb245
    i32 524288, label %sw.bb259
    i32 4194304, label %sw.bb282
  ]

sw.bb:                                            ; preds = %if.end5
  %call8 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %sw.bb.out_crit_edge, label %if.end11

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transport, align 4
  call void @kfree(ptr noundef %21) #15
  %22 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8, ptr %transport, align 4
  br label %while.cond.outer

sw.bb13:                                          ; preds = %if.end5
  %call15 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %sw.bb13.out_crit_edge, label %if.end18

sw.bb13.out_crit_edge:                            ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end18:                                         ; preds = %sw.bb13
  %23 = ptrtoint ptr %subsysnqn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subsysnqn, align 4
  call void @kfree(ptr noundef %24) #15
  %25 = ptrtoint ptr %subsysnqn to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15, ptr %subsysnqn, align 4
  %call21 = call i32 @strlen(ptr noundef nonnull %call15) #21
  %cmp22 = icmp ugt i32 %call21, 222
  br i1 %cmp22, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %call15, i32 noundef 223) #18
  br label %out

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %call28 = call i32 @strcmp(ptr noundef nonnull %call15, ptr noundef nonnull dereferenceable(37) @.str.61) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %frombool = zext i1 %tobool29.not to i8
  %26 = ptrtoint ptr %discovery_nqn283 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %discovery_nqn283, align 4
  br label %while.cond.outer

sw.bb30:                                          ; preds = %if.end5
  %call32 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %sw.bb30.out_crit_edge, label %if.end35

sw.bb30.out_crit_edge:                            ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end35:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %traddr, align 4
  call void @kfree(ptr noundef %28) #15
  %29 = ptrtoint ptr %traddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call32, ptr %traddr, align 4
  br label %while.cond.outer

sw.bb37:                                          ; preds = %if.end5
  %call39 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %sw.bb37.out_crit_edge, label %if.end42

sw.bb37.out_crit_edge:                            ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end42:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %trsvcid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trsvcid, align 4
  call void @kfree(ptr noundef %31) #15
  %32 = ptrtoint ptr %trsvcid to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call39, ptr %trsvcid, align 4
  br label %while.cond.outer

sw.bb44:                                          ; preds = %if.end5
  %call46 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %sw.bb44.out_crit_edge

sw.bb44.out_crit_edge:                            ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end49:                                         ; preds = %sw.bb44
  %33 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %token, align 4
  %35 = add i32 %34, -1025
  %36 = icmp ult i32 %35, -1009
  br i1 %36, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %34) #18
  br label %out

if.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %queue_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %queue_size, align 4
  br label %while.cond.outer

sw.bb60:                                          ; preds = %if.end5
  %call62 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %sw.bb60.out_crit_edge

sw.bb60.out_crit_edge:                            ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end65:                                         ; preds = %sw.bb60
  %38 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp66 = icmp slt i32 %39, 1
  br i1 %cmp66, label %do.end70, label %if.end73

do.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %39) #18
  br label %out

if.end73:                                         ; preds = %if.end65
  %40 = ptrtoint ptr %discovery_nqn283 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %discovery_nqn283, align 4, !range !308
  %tobool75.not = icmp eq i8 %41, 0
  br i1 %tobool75.not, label %if.end89, label %do.body77

do.body77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmf_parse_options.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmf_parse_options, %if.then85)) #15
          to label %while.cond.outer [label %if.then85], !srcloc !313

if.then85:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmf_parse_options.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.70) #15
  br label %while.cond.outer

if.end89:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i441 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %42 = load volatile i32, ptr @__num_online_cpus, align 4
  %43 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %token, align 4
  %45 = call i32 @llvm.umin.i32(i32 %42, i32 %44)
  %46 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %nr_io_queues, align 4
  br label %while.cond.outer

sw.bb94:                                          ; preds = %if.end5
  %call96 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %sw.bb94.out_crit_edge

sw.bb94.out_crit_edge:                            ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end99:                                         ; preds = %sw.bb94
  %47 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp100 = icmp slt i32 %48, 0
  br i1 %cmp100, label %do.end104, label %if.else

do.end104:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %48) #18
  br label %out

if.else:                                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp107 = icmp eq i32 %48, 0
  br i1 %cmp107, label %land.lhs.true, label %if.else.if.end117_crit_edge

if.else.if.end117_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

land.lhs.true:                                    ; preds = %if.else
  %49 = ptrtoint ptr %discovery_nqn283 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %discovery_nqn283, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool109.not = icmp eq i8 %50, 0
  br i1 %tobool109.not, label %do.end113, label %land.lhs.true.if.end117_crit_edge

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

do.end113:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #18
  br label %if.end117

if.end117:                                        ; preds = %do.end113, %land.lhs.true.if.end117_crit_edge, %if.else.if.end117_crit_edge
  %51 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %token, align 4
  %53 = ptrtoint ptr %kato to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %kato, align 4
  br label %while.cond.outer

sw.bb119:                                         ; preds = %if.end5
  %call121 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %sw.bb119.out_crit_edge

sw.bb119.out_crit_edge:                           ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end124:                                        ; preds = %sw.bb119
  %54 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp125 = icmp slt i32 %55, 0
  br i1 %cmp125, label %do.end129, label %if.end124.if.end132_crit_edge

if.end124.if.end132_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end132

do.end129:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #18
  br label %if.end132

if.end132:                                        ; preds = %do.end129, %if.end124.if.end132_crit_edge
  %56 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %token, align 4
  br label %while.cond.outer

sw.bb133:                                         ; preds = %if.end5
  %call135 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %sw.bb133.out_crit_edge

sw.bb133.out_crit_edge:                           ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end138:                                        ; preds = %sw.bb133
  %58 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp139 = icmp sgt i32 %59, -1
  br i1 %cmp139, label %do.end143, label %if.else146

do.end143:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %59) #18
  br label %if.end147

if.else146:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %token, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else146, %do.end143
  %61 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %token, align 4
  %63 = ptrtoint ptr %fast_io_fail_tmo to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %fast_io_fail_tmo, align 4
  br label %while.cond.outer

sw.bb149:                                         ; preds = %if.end5
  %64 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host, align 4
  %tobool150.not = icmp eq ptr %65, null
  br i1 %tobool150.not, label %if.end159, label %do.end154

do.end154:                                        ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #17
  %nqn = getelementptr inbounds %struct.nvmf_host, ptr %65, i32 0, i32 2
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %nqn) #18
  br label %out

if.end159:                                        ; preds = %sw.bb149
  %call161 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool162.not = icmp eq ptr %call161, null
  br i1 %tobool162.not, label %if.end159.out_crit_edge, label %if.end164

if.end159.out_crit_edge:                          ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end164:                                        ; preds = %if.end159
  %call165 = call i32 @strlen(ptr noundef nonnull %call161) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 222, i32 %call165)
  %cmp166 = icmp ugt i32 %call165, 222
  br i1 %cmp166, label %do.end170, label %if.end173

do.end170:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #17
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %call161, i32 noundef 223) #18
  call void @kfree(ptr noundef nonnull %call161) #15
  br label %out

if.end173:                                        ; preds = %if.end164
  call void @mutex_lock_nested(ptr noundef nonnull @nvmf_hosts_mutex, i32 noundef 0) #15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end173
  %.pn.in.i.i = phi ptr [ @nvmf_hosts, %if.end173 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %66 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @nvmf_hosts
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %nqn.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %call.i.i = call i32 @strcmp(ptr noundef %nqn.i.i, ptr noundef nonnull %call161) #20
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__nvmf_host_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

__nvmf_host_find.exit.i:                          ; preds = %for.body.i.i
  %host.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %host.0.le.i.i, null
  br i1 %tobool.not.i, label %__nvmf_host_find.exit.i.if.end.i_crit_edge, label %if.then.i

__nvmf_host_find.exit.i.if.end.i_crit_edge:       ; preds = %__nvmf_host_find.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %__nvmf_host_find.exit.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %host.0.le.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr nonnull %host.0.le.i.i, i32 1, i32 3, i32 1) #15
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %host.0.le.i.i, ptr nonnull %host.0.le.i.i, i32 1, ptr nonnull elementtype(i32) %host.0.le.i.i) #15, !srcloc !314
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !312

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %68 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i.i = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.nvmf_host_add.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.nvmf_host_add.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvmf_host_add.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %host.0.le.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %nvmf_host_add.exit

if.end.i:                                         ; preds = %__nvmf_host_find.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3264, i32 noundef 252) #19
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.nvmf_host_add.exit_crit_edge, label %if.end4.i

if.end.i.nvmf_host_add.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvmf_host_add.exit

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #15
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 1, ptr %call7.i.i, align 8
  %nqn.i = getelementptr inbounds %struct.nvmf_host, ptr %call7.i.i, i32 0, i32 2
  %call6.i = call i32 @strlcpy(ptr noundef %nqn.i, ptr noundef nonnull %call161, i32 noundef 223) #15
  %list.i = getelementptr inbounds %struct.nvmf_host, ptr %call7.i.i, i32 0, i32 1
  %71 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmf_hosts, i32 0, i32 1), align 4
  %call.i.i.i442 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %71, ptr noundef nonnull @nvmf_hosts) #15
  br i1 %call.i.i.i442, label %if.end.i.i.i, label %if.end4.i.nvmf_host_add.exit_crit_edge

if.end4.i.nvmf_host_add.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nvmf_host_add.exit

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @nvmf_hosts, i32 0, i32 1), align 4
  %72 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @nvmf_hosts, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nvmf_host, ptr %call7.i.i, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %prev3.i.i.i, align 8
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %list.i, ptr %71, align 4
  br label %nvmf_host_add.exit

nvmf_host_add.exit:                               ; preds = %if.end.i.i.i, %if.end4.i.nvmf_host_add.exit_crit_edge, %if.end.i.nvmf_host_add.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.nvmf_host_add.exit_crit_edge
  %host.0.i = phi ptr [ null, %if.end.i.nvmf_host_add.exit_crit_edge ], [ %host.0.le.i.i, %if.else.i.i.i.i.i.nvmf_host_add.exit_crit_edge ], [ %host.0.le.i.i, %if.end15.sink.split.i.i.i.i.i ], [ %call7.i.i, %if.end4.i.nvmf_host_add.exit_crit_edge ], [ %call7.i.i, %if.end.i.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @nvmf_hosts_mutex) #15
  %75 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %host.0.i, ptr %host, align 4
  call void @kfree(ptr noundef nonnull %call161) #15
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host, align 4
  %tobool177.not = icmp eq ptr %77, null
  br i1 %tobool177.not, label %nvmf_host_add.exit.out_crit_edge, label %nvmf_host_add.exit.while.cond.outer_crit_edge

nvmf_host_add.exit.while.cond.outer_crit_edge:    ; preds = %nvmf_host_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.outer

nvmf_host_add.exit.out_crit_edge:                 ; preds = %nvmf_host_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb180:                                         ; preds = %if.end5
  %call182 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %sw.bb180.out_crit_edge

sw.bb180.out_crit_edge:                           ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end185:                                        ; preds = %sw.bb180
  %78 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %token, align 4
  %cmp186 = icmp slt i32 %79, 1
  br i1 %cmp186, label %do.end190, label %if.end193

do.end190:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %79) #18
  br label %out

if.end193:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %reconnect_delay, align 4
  br label %while.cond.outer

sw.bb195:                                         ; preds = %if.end5
  %call197 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool198.not = icmp eq ptr %call197, null
  br i1 %tobool198.not, label %sw.bb195.out_crit_edge, label %if.end200

sw.bb195.out_crit_edge:                           ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end200:                                        ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %host_traddr, align 4
  call void @kfree(ptr noundef %82) #15
  %83 = ptrtoint ptr %host_traddr to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call197, ptr %host_traddr, align 4
  br label %while.cond.outer

sw.bb202:                                         ; preds = %if.end5
  %call204 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool205.not = icmp eq ptr %call204, null
  br i1 %tobool205.not, label %sw.bb202.out_crit_edge, label %if.end207

sw.bb202.out_crit_edge:                           ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end207:                                        ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %host_iface to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %host_iface, align 4
  call void @kfree(ptr noundef %85) #15
  %86 = ptrtoint ptr %host_iface to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call204, ptr %host_iface, align 4
  br label %while.cond.outer

sw.bb209:                                         ; preds = %if.end5
  %call211 = call ptr @match_strdup(ptr noundef nonnull %args) #15
  %tobool212.not = icmp eq ptr %call211, null
  br i1 %tobool212.not, label %sw.bb209.out_crit_edge, label %if.end214

sw.bb209.out_crit_edge:                           ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end214:                                        ; preds = %sw.bb209
  %call215 = call i32 @uuid_parse(ptr noundef nonnull %call211, ptr noundef nonnull %hostid) #15
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end223, label %do.end220

do.end220:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull %call211) #18
  call void @kfree(ptr noundef nonnull %call211) #15
  br label %out

if.end223:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %call211) #15
  br label %while.cond.outer

sw.bb224:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %duplicate_connect to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %duplicate_connect, align 1
  br label %while.cond.outer

sw.bb226:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %disable_sqflow to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %disable_sqflow, align 4
  br label %while.cond.outer

sw.bb227:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %hdr_digest to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %hdr_digest, align 1
  br label %while.cond.outer

sw.bb229:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %data_digest to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %data_digest, align 2
  br label %while.cond.outer

sw.bb231:                                         ; preds = %if.end5
  %call233 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end236, label %sw.bb231.out_crit_edge

sw.bb231.out_crit_edge:                           ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end236:                                        ; preds = %sw.bb231
  %91 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %token, align 4
  %cmp237 = icmp slt i32 %92, 1
  br i1 %cmp237, label %do.end241, label %if.end244

do.end241:                                        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #17
  %call243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %92) #18
  br label %out

if.end244:                                        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %nr_write_queues, align 4
  br label %while.cond.outer

sw.bb245:                                         ; preds = %if.end5
  %call247 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end250, label %sw.bb245.out_crit_edge

sw.bb245.out_crit_edge:                           ; preds = %sw.bb245
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end250:                                        ; preds = %sw.bb245
  %94 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %token, align 4
  %cmp251 = icmp slt i32 %95, 1
  br i1 %cmp251, label %do.end255, label %if.end258

do.end255:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #17
  %call257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %95) #18
  br label %out

if.end258:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %nr_poll_queues, align 4
  br label %while.cond.outer

sw.bb259:                                         ; preds = %if.end5
  %call261 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end264, label %sw.bb259.out_crit_edge

sw.bb259.out_crit_edge:                           ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end264:                                        ; preds = %sw.bb259
  %97 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp265 = icmp slt i32 %98, 0
  br i1 %cmp265, label %do.end269, label %if.end272

do.end269:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #17
  %call271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %98) #18
  br label %out

if.end272:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %98)
  %cmp273 = icmp ugt i32 %98, 255
  br i1 %cmp273, label %do.end277, label %if.end272.if.end280_crit_edge

if.end272.if.end280_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

do.end277:                                        ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #17
  %call279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #18
  %99 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 255, ptr %token, align 4
  br label %if.end280

if.end280:                                        ; preds = %do.end277, %if.end272.if.end280_crit_edge
  %100 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %token, align 4
  %102 = ptrtoint ptr %tos to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %tos, align 4
  br label %while.cond.outer

sw.bb282:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %discovery_nqn283 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %discovery_nqn283, align 4
  br label %while.cond.outer

do.end286:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %call288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull %call2) #18
  br label %out

while.end:                                        ; preds = %while.cond
  %104 = ptrtoint ptr %discovery_nqn283 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %discovery_nqn283, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool290.not = icmp eq i8 %105, 0
  br i1 %tobool290.not, label %if.else296, label %if.then291

if.then291:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %nr_io_queues, align 4
  %107 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %nr_write_queues, align 4
  %108 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %nr_poll_queues, align 4
  %109 = ptrtoint ptr %duplicate_connect to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %duplicate_connect, align 1
  br label %if.end302

if.else296:                                       ; preds = %while.end
  %110 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %kato, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool298.not = icmp eq i32 %111, 0
  br i1 %tobool298.not, label %if.then299, label %if.else296.if.end302_crit_edge

if.else296.if.end302_crit_edge:                   ; preds = %if.else296
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end302

if.then299:                                       ; preds = %if.else296
  call void @__sanitizer_cov_trace_pc() #17
  %112 = ptrtoint ptr %kato to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 5, ptr %kato, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then299, %if.else296.if.end302_crit_edge, %if.then291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctrl_loss_tmo.0.ph)
  %cmp303 = icmp slt i32 %ctrl_loss_tmo.0.ph, 0
  br i1 %cmp303, label %if.then304, label %if.else305

if.then304:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #17
  %max_reconnects = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 14
  %113 = ptrtoint ptr %max_reconnects to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %max_reconnects, align 4
  br label %if.end319

if.else305:                                       ; preds = %if.end302
  %114 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %reconnect_delay, align 4
  %add = add nsw i32 %ctrl_loss_tmo.0.ph, -1
  %sub = add i32 %add, %115
  %div = udiv i32 %sub, %115
  %max_reconnects308 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 14
  %116 = ptrtoint ptr %max_reconnects308 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %div, ptr %max_reconnects308, align 4
  %117 = ptrtoint ptr %fast_io_fail_tmo to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fast_io_fail_tmo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ctrl_loss_tmo.0.ph, i32 %118)
  %cmp310 = icmp slt i32 %ctrl_loss_tmo.0.ph, %118
  br i1 %cmp310, label %do.end314, label %if.else305.if.end319_crit_edge

if.else305.if.end319_crit_edge:                   ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end319

do.end314:                                        ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #17
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %118, i32 noundef %ctrl_loss_tmo.0.ph) #18
  br label %if.end319

if.end319:                                        ; preds = %do.end314, %if.else305.if.end319_crit_edge, %if.then304
  %119 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %host, align 4
  %tobool321.not = icmp eq ptr %120, null
  br i1 %tobool321.not, label %if.then322, label %if.end319.if.end324_crit_edge

if.end319.if.end324_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end324

if.then322:                                       ; preds = %if.end319
  %121 = load ptr, ptr @nvmf_default_host, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %121, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %121, i32 1, i32 3, i32 1) #15
  %122 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #15, !srcloc !314
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then322.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !312

if.then322.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then322
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %123 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %.not.i.i.i.i = icmp sgt i32 %123, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !307

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then322.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then322.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %121, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %124 = load ptr, ptr @nvmf_default_host, align 4
  %125 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %host, align 4
  br label %if.end324

if.end324:                                        ; preds = %kref_get.exit, %if.end319.if.end324_crit_edge
  %126 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %host, align 4
  %id = getelementptr inbounds %struct.nvmf_host, ptr %127, i32 0, i32 3
  %128 = call ptr @memcpy(ptr %id, ptr %hostid, i32 16)
  br label %out

out:                                              ; preds = %if.end324, %do.end286, %do.end269, %sw.bb259.out_crit_edge, %do.end255, %sw.bb245.out_crit_edge, %do.end241, %sw.bb231.out_crit_edge, %do.end220, %sw.bb209.out_crit_edge, %sw.bb202.out_crit_edge, %sw.bb195.out_crit_edge, %do.end190, %sw.bb180.out_crit_edge, %nvmf_host_add.exit.out_crit_edge, %do.end170, %if.end159.out_crit_edge, %do.end154, %sw.bb133.out_crit_edge, %sw.bb119.out_crit_edge, %do.end104, %sw.bb94.out_crit_edge, %do.end70, %sw.bb60.out_crit_edge, %do.end55, %sw.bb44.out_crit_edge, %sw.bb37.out_crit_edge, %sw.bb30.out_crit_edge, %do.end, %sw.bb13.out_crit_edge, %sw.bb.out_crit_edge
  %ret.2 = phi i32 [ -22, %do.end286 ], [ -22, %do.end269 ], [ -22, %do.end255 ], [ -22, %do.end241 ], [ -22, %do.end220 ], [ -22, %do.end190 ], [ -98, %do.end154 ], [ -22, %do.end170 ], [ -22, %do.end104 ], [ -22, %do.end70 ], [ -22, %do.end55 ], [ -22, %do.end ], [ 0, %if.end324 ], [ -22, %sw.bb259.out_crit_edge ], [ -22, %sw.bb245.out_crit_edge ], [ -22, %sw.bb231.out_crit_edge ], [ -12, %sw.bb209.out_crit_edge ], [ -12, %sw.bb202.out_crit_edge ], [ -12, %sw.bb195.out_crit_edge ], [ -22, %sw.bb180.out_crit_edge ], [ -12, %nvmf_host_add.exit.out_crit_edge ], [ -12, %if.end159.out_crit_edge ], [ -22, %sw.bb133.out_crit_edge ], [ -22, %sw.bb119.out_crit_edge ], [ -22, %sw.bb94.out_crit_edge ], [ -22, %sw.bb60.out_crit_edge ], [ -22, %sw.bb44.out_crit_edge ], [ -12, %sw.bb37.out_crit_edge ], [ -12, %sw.bb30.out_crit_edge ], [ -12, %sw.bb13.out_crit_edge ], [ -12, %sw.bb.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hostid) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %token) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %o) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmf_check_allowed_opts(ptr nocapture noundef readonly %opts, i32 noundef %allowed_opts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opts, align 4
  %neg = xor i32 %allowed_opts, -1
  %and = and i32 %1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %i.018
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opts, align 4
  %and2 = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and7 = and i32 %3, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = or i1 %tobool8.not, %tobool3.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %pattern = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %i.018, i32 1
  %6 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pattern, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %7) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.inc.return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -22, %for.inc.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uuid_gen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uuid_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmf_dev_show(ptr noundef %seq_file, ptr nocapture noundef readnone %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmf_dev_mutex, i32 noundef 0) #15
  %private1 = getelementptr inbounds %struct.seq_file, ptr %seq_file, i32 0, i32 11
  %0 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %seq_file, ptr noundef nonnull @.str.138) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %idx.08.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %idx.08.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq_file, ptr noundef nonnull @.str.2) #15
  %pattern.i = getelementptr [23 x %struct.match_token], ptr @opt_tokens, i32 0, i32 %idx.08.i, i32 1
  %4 = ptrtoint ptr %pattern.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pattern.i, align 4
  tail call void @seq_puts(ptr noundef %seq_file, ptr noundef %5) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %__nvmf_concat_opt_tokens.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

__nvmf_concat_opt_tokens.exit:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq_file, ptr noundef nonnull @.str.6) #15
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %instance = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %instance, align 8
  %cntlid = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cntlid, align 8
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq_file, ptr noundef nonnull @.str.137, i32 noundef %7, i32 noundef %conv) #15
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %__nvmf_concat_opt_tokens.exit
  tail call void @mutex_unlock(ptr noundef nonnull @nvmf_dev_mutex) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !124, !126, !128, !130, !131, !132, !134, !136, !137, !138, !139, !141, !143, !144, !145, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !265, !266, !267, !269, !270, !271, !272, !274, !276, !278, !280, !282, !283, !284, !285, !287, !289, !290, !291, !293, !294, !295}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/fabrics.c", i32 108, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nvme/host/fabrics.c", i32 110, i32 43}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/nvme/host/fabrics.c", i32 111, i32 13}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nvme/host/fabrics.c", i32 111, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nvme/host/fabrics.c", i32 113, i32 43}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvme/host/fabrics.c", i32 116, i32 43}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/host/fabrics.c", i32 118, i32 42}
!14 = !{ptr @__ksymtab_nvmf_get_address, !15, !"__ksymtab_nvmf_get_address", i1 false, i1 false}
!15 = !{!"../drivers/nvme/host/fabrics.c", i32 122, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvme/host/fabrics.c", i32 162, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nvmf_reg_read32._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvmf_reg_read32._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_nvmf_reg_read32, !25, !"__ksymtab_nvmf_reg_read32", i1 false, i1 false}
!25 = !{!"../drivers/nvme/host/fabrics.c", i32 168, i32 1}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvme/host/fabrics.c", i32 208, i32 3}
!28 = !{ptr @nvmf_reg_read64._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvmf_reg_read64._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_nvmf_reg_read64, !31, !"__ksymtab_nvmf_reg_read64", i1 false, i1 false}
!31 = !{!"../drivers/nvme/host/fabrics.c", i32 213, i32 1}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nvme/host/fabrics.c", i32 250, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nvmf_reg_write32._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvmf_reg_write32._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_nvmf_reg_write32, !38, !"__ksymtab_nvmf_reg_write32", i1 false, i1 false}
!38 = !{!"../drivers/nvme/host/fabrics.c", i32 255, i32 1}
!39 = !{ptr @__ksymtab_nvmf_connect_admin_queue, !40, !"__ksymtab_nvmf_connect_admin_queue", i1 false, i1 false}
!40 = !{!"../drivers/nvme/host/fabrics.c", i32 407, i32 1}
!41 = !{ptr @__ksymtab_nvmf_connect_io_queue, !42, !"__ksymtab_nvmf_connect_io_queue", i1 false, i1 false}
!42 = !{!"../drivers/nvme/host/fabrics.c", i32 463, i32 1}
!43 = !{ptr @__ksymtab_nvmf_should_reconnect, !44, !"__ksymtab_nvmf_should_reconnect", i1 false, i1 false}
!44 = !{!"../drivers/nvme/host/fabrics.c", i32 473, i32 1}
!45 = !{ptr @__ksymtab_nvmf_register_transport, !46, !"__ksymtab_nvmf_register_transport", i1 false, i1 false}
!46 = !{!"../drivers/nvme/host/fabrics.c", i32 495, i32 1}
!47 = !{ptr @__ksymtab_nvmf_unregister_transport, !48, !"__ksymtab_nvmf_unregister_transport", i1 false, i1 false}
!48 = !{!"../drivers/nvme/host/fabrics.c", i32 512, i32 1}
!49 = !{ptr @__ksymtab_nvmf_ip_options_match, !50, !"__ksymtab_nvmf_ip_options_match", i1 false, i1 false}
!50 = !{!"../drivers/nvme/host/fabrics.c", i32 920, i32 1}
!51 = !{ptr @__ksymtab_nvmf_free_options, !52, !"__ksymtab_nvmf_free_options", i1 false, i1 false}
!52 = !{!"../drivers/nvme/host/fabrics.c", i32 953, i32 1}
!53 = !{ptr @__UNIQUE_ID_file369, !54, !"__UNIQUE_ID_file369", i1 false, i1 false}
!54 = !{!"../drivers/nvme/host/fabrics.c", i32 1199, i32 1}
!55 = !{ptr @__UNIQUE_ID_license370, !54, !"__UNIQUE_ID_license370", i1 false, i1 false}
!56 = !{ptr @__initcall__kmod_nvme_fabrics__371_1201_nvmf_init6, !57, !"__initcall__kmod_nvme_fabrics__371_1201_nvmf_init6", i1 false, i1 false}
!57 = !{!"../drivers/nvme/host/fabrics.c", i32 1201, i32 1}
!58 = !{ptr @__exitcall_nvmf_exit, !59, !"__exitcall_nvmf_exit", i1 false, i1 false}
!59 = !{!"../drivers/nvme/host/fabrics.c", i32 1202, i32 1}
!60 = !{ptr @nvmf_default_host, !61, !"nvmf_default_host", i1 false, i1 false}
!61 = !{!"../drivers/nvme/host/fabrics.c", i32 22, i32 26}
!62 = !{ptr @nvmf_class, !63, !"nvmf_class", i1 false, i1 false}
!63 = !{!"../drivers/nvme/host/fabrics.c", i32 1033, i32 22}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/nvme/host/fabrics.c", i32 277, i32 21}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/nvme/host/fabrics.c", i32 281, i32 5}
!68 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @nvmf_log_connect_error._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @nvmf_log_connect_error._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/nvme/host/fabrics.c", i32 286, i32 5}
!73 = !{ptr @nvmf_log_connect_error._entry.18, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @nvmf_log_connect_error._entry_ptr.20, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/nvme/host/fabrics.c", i32 291, i32 5}
!77 = !{ptr @nvmf_log_connect_error._entry.21, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @nvmf_log_connect_error._entry_ptr.23, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/nvme/host/fabrics.c", i32 296, i32 5}
!81 = !{ptr @nvmf_log_connect_error._entry.24, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvmf_log_connect_error._entry_ptr.26, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nvme/host/fabrics.c", i32 302, i32 20}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/nvme/host/fabrics.c", i32 306, i32 5}
!87 = !{ptr @nvmf_log_connect_error._entry.28, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nvmf_log_connect_error._entry_ptr.30, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @nvmf_log_connect_error._entry.31, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/nvme/host/fabrics.c", i32 311, i32 5}
!91 = !{ptr @nvmf_log_connect_error._entry_ptr.32, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/nvme/host/fabrics.c", i32 318, i32 3}
!94 = !{ptr @nvmf_log_connect_error._entry.33, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @nvmf_log_connect_error._entry_ptr.35, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/nvme/host/fabrics.c", i32 323, i32 3}
!98 = !{ptr @nvmf_log_connect_error._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @nvmf_log_connect_error._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/nvme/host/fabrics.c", i32 327, i32 3}
!102 = !{ptr @nvmf_log_connect_error._entry.39, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @nvmf_log_connect_error._entry_ptr.41, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/nvme/host/fabrics.c", i32 332, i32 3}
!106 = !{ptr @nvmf_log_connect_error._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @nvmf_log_connect_error._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/nvme/host/fabrics.c", i32 336, i32 3}
!110 = !{ptr @nvmf_log_connect_error._entry.45, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nvmf_log_connect_error._entry_ptr.47, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/nvme/host/fabrics.c", i32 17, i32 8}
!114 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nvmf_transports_rwsem, !113, !"nvmf_transports_rwsem", i1 false, i1 false}
!116 = !{ptr @nvmf_transports, !117, !"nvmf_transports", i1 false, i1 false}
!117 = !{!"../drivers/nvme/host/fabrics.c", i32 16, i32 8}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/nvme/host/fabrics.c", i32 20, i32 8}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @nvmf_hosts_mutex, !119, !"nvmf_hosts_mutex", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/nvme/host/fabrics.c", i32 1141, i32 20}
!124 = !{ptr @nvmf_misc, !125, !"nvmf_misc", i1 false, i1 false}
!125 = !{!"../drivers/nvme/host/fabrics.c", i32 1139, i32 26}
!126 = !{ptr @nvmf_dev_fops, !127, !"nvmf_dev_fops", i1 false, i1 false}
!127 = !{!"../drivers/nvme/host/fabrics.c", i32 1131, i32 37}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/nvme/host/fabrics.c", i32 1035, i32 8}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @nvmf_dev_mutex, !129, !"nvmf_dev_mutex", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/nvme/host/fabrics.c", i32 979, i32 2}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/nvme/host/fabrics.c", i32 994, i32 3}
!136 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @nvmf_create_ctrl._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @nvmf_create_ctrl._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/nvme/host/fabrics.c", i32 582, i32 25}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/nvme/host/fabrics.c", i32 608, i32 5}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @nvmf_parse_options._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @nvmf_parse_options._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/nvme/host/fabrics.c", i32 615, i32 7}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/nvme/host/fabrics.c", i32 642, i32 5}
!150 = !{ptr @nvmf_parse_options._entry.62, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @nvmf_parse_options._entry_ptr.64, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/nvme/host/fabrics.c", i32 654, i32 5}
!154 = !{ptr @nvmf_parse_options._entry.65, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @nvmf_parse_options._entry_ptr.67, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/nvme/host/fabrics.c", i32 659, i32 5}
!158 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @nvmf_parse_options.__UNIQUE_ID_ddebug361, !157, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!160 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/nvme/host/fabrics.c", i32 673, i32 5}
!163 = !{ptr @nvmf_parse_options._entry.71, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @nvmf_parse_options._entry_ptr.73, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/nvme/host/fabrics.c", i32 678, i32 5}
!167 = !{ptr @nvmf_parse_options._entry.74, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @nvmf_parse_options._entry_ptr.76, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/nvme/host/fabrics.c", i32 689, i32 5}
!171 = !{ptr @nvmf_parse_options._entry.77, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @nvmf_parse_options._entry_ptr.79, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/nvme/host/fabrics.c", i32 699, i32 5}
!175 = !{ptr @nvmf_parse_options._entry.80, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @nvmf_parse_options._entry_ptr.82, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/nvme/host/fabrics.c", i32 708, i32 5}
!179 = !{ptr @nvmf_parse_options._entry.83, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @nvmf_parse_options._entry_ptr.85, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @nvmf_parse_options._entry.86, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/nvme/host/fabrics.c", i32 720, i32 5}
!183 = !{ptr @nvmf_parse_options._entry_ptr.87, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/nvme/host/fabrics.c", i32 739, i32 5}
!186 = !{ptr @nvmf_parse_options._entry.88, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @nvmf_parse_options._entry_ptr.90, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/nvme/host/fabrics.c", i32 771, i32 5}
!190 = !{ptr @nvmf_parse_options._entry.91, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @nvmf_parse_options._entry_ptr.93, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/nvme/host/fabrics.c", i32 796, i32 5}
!194 = !{ptr @nvmf_parse_options._entry.94, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @nvmf_parse_options._entry_ptr.96, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/nvme/host/fabrics.c", i32 808, i32 5}
!198 = !{ptr @nvmf_parse_options._entry.97, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @nvmf_parse_options._entry_ptr.99, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/nvme/host/fabrics.c", i32 820, i32 5}
!202 = !{ptr @nvmf_parse_options._entry.100, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @nvmf_parse_options._entry_ptr.102, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.104, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/nvme/host/fabrics.c", i32 825, i32 5}
!206 = !{ptr @nvmf_parse_options._entry.103, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @nvmf_parse_options._entry_ptr.105, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/nvme/host/fabrics.c", i32 834, i32 4}
!210 = !{ptr @nvmf_parse_options._entry.106, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @nvmf_parse_options._entry_ptr.108, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.110, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/nvme/host/fabrics.c", i32 856, i32 4}
!214 = !{ptr @nvmf_parse_options._entry.109, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @nvmf_parse_options._entry_ptr.111, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.112, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/nvme/host/fabrics.c", i32 530, i32 25}
!218 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/nvme/host/fabrics.c", i32 532, i32 23}
!220 = !{ptr @.str.114, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/nvme/host/fabrics.c", i32 533, i32 20}
!222 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/nvme/host/fabrics.c", i32 534, i32 26}
!224 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/nvme/host/fabrics.c", i32 535, i32 27}
!226 = !{ptr @.str.117, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/nvme/host/fabrics.c", i32 536, i32 30}
!228 = !{ptr @.str.118, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/nvme/host/fabrics.c", i32 537, i32 28}
!230 = !{ptr @.str.119, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/nvme/host/fabrics.c", i32 538, i32 20}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/nvme/host/fabrics.c", i32 539, i32 23}
!234 = !{ptr @.str.121, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/nvme/host/fabrics.c", i32 540, i32 27}
!236 = !{ptr @.str.122, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/nvme/host/fabrics.c", i32 541, i32 26}
!238 = !{ptr @.str.123, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/nvme/host/fabrics.c", i32 542, i32 23}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/nvme/host/fabrics.c", i32 543, i32 27}
!242 = !{ptr @.str.125, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/nvme/host/fabrics.c", i32 544, i32 29}
!244 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/nvme/host/fabrics.c", i32 545, i32 26}
!246 = !{ptr @.str.127, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/nvme/host/fabrics.c", i32 546, i32 27}
!248 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/nvme/host/fabrics.c", i32 547, i32 30}
!250 = !{ptr @.str.129, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/nvme/host/fabrics.c", i32 548, i32 29}
!252 = !{ptr @.str.130, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/nvme/host/fabrics.c", i32 549, i32 20}
!254 = !{ptr @.str.131, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/nvme/host/fabrics.c", i32 550, i32 28}
!256 = !{ptr @.str.132, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/nvme/host/fabrics.c", i32 551, i32 25}
!258 = !{ptr @opt_tokens, !259, !"opt_tokens", i1 false, i1 false}
!259 = !{!"../drivers/nvme/host/fabrics.c", i32 529, i32 28}
!260 = !{ptr @nvmf_hosts, !261, !"nvmf_hosts", i1 false, i1 false}
!261 = !{!"../drivers/nvme/host/fabrics.c", i32 19, i32 8}
!262 = !{ptr @.str.133, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/nvme/host/fabrics.c", i32 881, i32 5}
!264 = !{ptr @.str.134, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @nvmf_check_required_opts._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @nvmf_check_required_opts._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.135, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/nvme/host/fabrics.c", i32 931, i32 5}
!269 = !{ptr @.str.136, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @nvmf_check_allowed_opts._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @nvmf_check_allowed_opts._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @nvmf_device, !273, !"nvmf_device", i1 false, i1 false}
!273 = !{!"../drivers/nvme/host/fabrics.c", i32 1034, i32 23}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/nvme/host/fabrics.c", i32 1103, i32 23}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/nvme/host/fabrics.c", i32 1081, i32 21}
!278 = !{ptr @nvmf_init.__key, !279, !"__key", i1 false, i1 false}
!279 = !{!"../drivers/nvme/host/fabrics.c", i32 1153, i32 15}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/nvme/host/fabrics.c", i32 1155, i32 3}
!282 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @nvmf_init._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @nvmf_init._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.141, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/nvme/host/fabrics.c", i32 1161, i32 54}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/nvme/host/fabrics.c", i32 1163, i32 3}
!289 = !{ptr @nvmf_init._entry.142, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @nvmf_init._entry_ptr.144, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.146, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/nvme/host/fabrics.c", i32 1170, i32 3}
!293 = !{ptr @nvmf_init._entry.145, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @nvmf_init._entry_ptr.147, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/nvme/host/fabrics.c", i32 71, i32 3}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{!"auto-init"}
!307 = !{!"branch_weights", i32 2000, i32 1}
!308 = !{i8 0, i8 2}
!309 = !{i64 2148695925}
!310 = !{i64 2148610365, i64 2148610397, i64 2148610426, i64 2148610460, i64 2148610491, i64 2148610514}
!311 = !{i64 2149636192}
!312 = !{!"branch_weights", i32 1, i32 2000}
!313 = !{i64 2148430185, i64 2148430190, i64 2148430203, i64 2148430247, i64 2148430281, i64 2148430302}
!314 = !{i64 2148607900, i64 2148607932, i64 2148607961, i64 2148607995, i64 2148608026, i64 2148608049}
