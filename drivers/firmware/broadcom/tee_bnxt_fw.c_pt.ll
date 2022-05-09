; ModuleID = '/llk/IR_all_yes/drivers/firmware/broadcom/tee_bnxt_fw.c_pt.bc'
source_filename = "../drivers/firmware/broadcom/tee_bnxt_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tee_bnxt_fw_load\22, \22a\22\09"
module asm "\09.weak\09__crc_tee_bnxt_fw_load\09\09\09\09"
module asm "\09.long\09__crc_tee_bnxt_fw_load\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tee_bnxt_fw_load:\09\09\09\09\09"
module asm "\09.asciz \09\22tee_bnxt_fw_load\22\09\09\09\09\09"
module asm "__kstrtabns_tee_bnxt_fw_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tee_bnxt_copy_coredump\22, \22a\22\09"
module asm "\09.weak\09__crc_tee_bnxt_copy_coredump\09\09\09\09"
module asm "\09.long\09__crc_tee_bnxt_copy_coredump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tee_bnxt_copy_coredump:\09\09\09\09\09"
module asm "\09.asciz \09\22tee_bnxt_copy_coredump\22\09\09\09\09\09"
module asm "__kstrtabns_tee_bnxt_copy_coredump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tee_client_driver = type { ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tee_client_device_id = type { %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.12 }
%union.anon.12 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tee_ioctl_invoke_arg = type { i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_ioctl_param = type { i64, i64, i64, i64 }
%struct.tee_param = type { i64, %union.anon }
%union.anon = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.tee_param_memref = type { i32, i32, ptr }
%struct.tee_ioctl_open_session_arg = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }

@pvt_data.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvt_data.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvt_data.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pvt_data.3 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tee_bnxt_fw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TA_CMD_BNXT_FASTBOOT invoke failed TEE err: %x, ret:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tee_bnxt_fw_load\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/firmware/broadcom/tee_bnxt_fw.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tee_bnxt_fw_load._entry_ptr = internal global ptr @tee_bnxt_fw_load._entry, section ".printk_index", align 4
@__kstrtab_tee_bnxt_fw_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_tee_bnxt_fw_load = external dso_local constant [0 x i8], align 1
@__ksymtab_tee_bnxt_fw_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tee_bnxt_fw_load to i32), ptr @__kstrtab_tee_bnxt_fw_load, ptr @__kstrtabns_tee_bnxt_fw_load }, section "___ksymtab+tee_bnxt_fw_load", align 4
@tee_bnxt_copy_coredump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"TA_CMD_BNXT_COPY_COREDUMP invoke failed TEE err: %x, ret:%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tee_bnxt_copy_coredump\00", [41 x i8] zeroinitializer }, align 32
@tee_bnxt_copy_coredump._entry_ptr = internal global ptr @tee_bnxt_copy_coredump._entry, section ".printk_index", align 4
@tee_bnxt_copy_coredump._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tee_shm_get_va failed\0A\00", [41 x i8] zeroinitializer }, align 32
@tee_bnxt_copy_coredump._entry_ptr.9 = internal global ptr @tee_bnxt_copy_coredump._entry.7, section ".printk_index", align 4
@__kstrtab_tee_bnxt_copy_coredump = external dso_local constant [0 x i8], align 1
@__kstrtabns_tee_bnxt_copy_coredump = external dso_local constant [0 x i8], align 1
@__ksymtab_tee_bnxt_copy_coredump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tee_bnxt_copy_coredump to i32), ptr @__kstrtab_tee_bnxt_copy_coredump, ptr @__kstrtabns_tee_bnxt_copy_coredump }, section "___ksymtab+tee_bnxt_copy_coredump", align 4
@tee_bnxt_fw_driver = internal global { %struct.tee_client_driver, [48 x i8] } { %struct.tee_client_driver { ptr @tee_bnxt_fw_id_table, %struct.device_driver { ptr @.str.10, ptr @tee_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @tee_bnxt_fw_probe, ptr null, ptr @tee_bnxt_fw_remove, ptr @tee_bnxt_fw_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_tee_bnxt_fw__185_281_tee_bnxt_fw_mod_init6 = internal global ptr @tee_bnxt_fw_mod_init, section ".initcall6.init", align 4
@__exitcall_tee_bnxt_fw_mod_exit = internal global ptr @tee_bnxt_fw_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author186 = internal constant [58 x i8] c"tee_bnxt_fw.author=Vikas Gupta <vikas.gupta@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [55 x i8] c"tee_bnxt_fw.description=Broadcom bnxt firmware manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [55 x i8] c"tee_bnxt_fw.file=drivers/firmware/broadcom/tee_bnxt_fw\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [27 x i8] c"tee_bnxt_fw.license=GPL v2\00", section ".modinfo", align 1
@tee_bnxt_fw_id_table = internal constant { [2 x %struct.tee_client_device_id], [32 x i8] } { [2 x %struct.tee_client_device_id] [%struct.tee_client_device_id { %struct.uuid_t { [16 x i8] c"brcm \19\07\16BCM_SCHI" } }, %struct.tee_client_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tee_bnxt_fw\00", [20 x i8] zeroinitializer }, align 32
@tee_bus_type = external dso_local global %struct.bus_type, align 4
@tee_bnxt_fw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tee_client_open_session failed, err: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tee_bnxt_fw_probe\00", [46 x i8] zeroinitializer }, align 32
@tee_bnxt_fw_probe._entry_ptr = internal global ptr @tee_bnxt_fw_probe._entry, section ".printk_index", align 4
@tee_bnxt_fw_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tee_shm_alloc_kernel_buf failed\0A\00", [63 x i8] zeroinitializer }, align 32
@tee_bnxt_fw_probe._entry_ptr.15 = internal global ptr @tee_bnxt_fw_probe._entry.13, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"pvt_data.0\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"pvt_data.1\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"pvt_data.2\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"pvt_data.3\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 112, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 156, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 164, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"tee_bnxt_fw_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 260, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"tee_bnxt_fw_id_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 252, i32 42 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 263, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 206, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [43 x i8] c"../drivers/firmware/broadcom/tee_bnxt_fw.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 217, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_tee_bnxt_fw_mod_exit, ptr @__initcall__kmod_tee_bnxt_fw__185_281_tee_bnxt_fw_mod_init6, ptr @__ksymtab_tee_bnxt_copy_coredump, ptr @__ksymtab_tee_bnxt_fw_load, ptr @tee_bnxt_copy_coredump._entry, ptr @tee_bnxt_copy_coredump._entry.7, ptr @tee_bnxt_copy_coredump._entry_ptr, ptr @tee_bnxt_copy_coredump._entry_ptr.9, ptr @tee_bnxt_fw_load._entry, ptr @tee_bnxt_fw_load._entry_ptr, ptr @tee_bnxt_fw_mod_exit, ptr @tee_bnxt_fw_probe._entry, ptr @tee_bnxt_fw_probe._entry.13, ptr @tee_bnxt_fw_probe._entry_ptr, ptr @tee_bnxt_fw_probe._entry_ptr.15, ptr @pvt_data.0, ptr @pvt_data.1, ptr @pvt_data.2, ptr @pvt_data.3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @tee_bnxt_fw_driver, ptr @tee_bnxt_fw_id_table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tee_bnxt_fw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tee_bnxt_copy_coredump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tee_bnxt_copy_coredump._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tee_bnxt_fw_driver to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tee_bnxt_fw_id_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tee_bnxt_fw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tee_bnxt_fw_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tee_bnxt_fw_load() #0 align 64 {
entry:
  %arg = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param = alloca [4 x %struct.tee_param], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #7
  %0 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param) #7
  %1 = load ptr, ptr @pvt_data.1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 5
  %3 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 1
  %5 = call ptr @memset(ptr %3, i32 0, i32 16)
  %6 = call ptr @memset(ptr %param, i32 0, i32 128)
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arg, align 8
  %8 = load i32, ptr @pvt_data.2, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %4, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %2, align 4
  %call = call i32 @tee_client_invoke_func(ptr noundef nonnull %1, ptr noundef nonnull %arg, ptr noundef nonnull %param) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.not = icmp eq i32 %12, 0
  br i1 %cmp3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %13 = load ptr, ptr @pvt_data.0, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef %15, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_invoke_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tee_bnxt_copy_coredump(ptr nocapture noundef writeonly %buf, i32 noundef %offset, i32 noundef %size) #0 align 64 {
entry:
  %arg = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param = alloca [4 x %struct.tee_param], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #7
  %0 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param) #7
  %1 = load ptr, ptr @pvt_data.1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 5
  %3 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %arg, i32 0, i32 1
  %5 = call ptr @memset(ptr %3, i32 0, i32 16)
  %6 = getelementptr inbounds i8, ptr %param, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 112)
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %arg, align 8
  %9 = load i32, ptr @pvt_data.2, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %4, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %2, align 4
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 7, ptr %param, align 8
  %13 = load ptr, ptr @pvt_data.3, align 4
  %u.i = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %shm.i = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %shm.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %shm.i, align 8
  %size.i = getelementptr inbounds %struct.tee_param_memref, ptr %u.i, i32 0, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4194304, ptr %size.i, align 4
  %16 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %u.i, align 8
  %arrayidx6.i = getelementptr inbounds %struct.tee_param, ptr %param, i32 1
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1, ptr %arrayidx6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool1.not45 = icmp eq i32 %size, 0
  br i1 %tobool1.not45, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %u4 = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1, i32 1
  %b = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1, i32 1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.lr.ph
  %rbytes.048 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %if.end24.while.body_crit_edge ]
  %buf.addr.047 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end24.while.body_crit_edge ]
  %offset.addr.046 = phi i32 [ %offset, %while.body.lr.ph ], [ %add, %if.end24.while.body_crit_edge ]
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %20 = call i32 @llvm.umin.i32(i32 %rbytes.048, i32 %19)
  %conv = zext i32 %offset.addr.046 to i64
  %21 = ptrtoint ptr %u4 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %u4, align 8
  %conv5 = zext i32 %20 to i64
  %22 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv5, ptr %b, align 8
  %23 = load ptr, ptr @pvt_data.1, align 4
  %call = call i32 @tee_client_invoke_func(ptr noundef %23, ptr noundef nonnull %arg, ptr noundef nonnull %param) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %while.body.do.end_crit_edge, label %lor.lhs.false

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %while.body
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp12.not = icmp eq i32 %25, 0
  br i1 %cmp12.not, label %if.end16, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %while.body.do.end_crit_edge
  %26 = load ptr, ptr @pvt_data.0, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.5, i32 noundef %28, i32 noundef %call) #10
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %29 = load ptr, ptr @pvt_data.3, align 4
  %call17 = call ptr @tee_shm_get_va(ptr noundef %29, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %30 = load ptr, ptr @pvt_data.0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.8) #10
  %31 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %32 = call ptr @memcpy(ptr %buf.addr.047, ptr %call17, i32 %20)
  %sub = sub i32 %rbytes.048, %20
  %add.ptr = getelementptr i8, ptr %buf.addr.047, i32 %20
  %add = add i32 %20, %offset.addr.046
  %tobool1.not = icmp eq i32 %sub, 0
  br i1 %tobool1.not, label %if.end24.cleanup_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %do.end22, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %31, %do.end22 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_get_va(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tee_bnxt_fw_mod_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @tee_bnxt_fw_driver, i32 0, i32 1)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tee_bnxt_fw_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @tee_bnxt_fw_driver, i32 0, i32 1)) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tee_bnxt_fw_probe(ptr noundef %dev) #0 align 64 {
entry:
  %sess_arg = alloca %struct.tee_ioctl_open_session_arg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sess_arg) #7
  %0 = getelementptr inbounds i8, ptr %sess_arg, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %call = tail call ptr @tee_client_open_context(ptr noundef null, ptr noundef nonnull @optee_ctx_match, ptr noundef null, ptr noundef null) #7
  store ptr %call, ptr @pvt_data.1, align 4
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
  %call4 = call i32 @tee_client_open_session(ptr noundef %call, ptr noundef nonnull %sess_arg, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %ret5 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %5 = ptrtoint ptr %ret5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ret5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.not = icmp eq i32 %6, 0
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret8 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %7 = ptrtoint ptr %ret8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %8) #10
  br label %out_ctx

if.end9:                                          ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 4
  %9 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session, align 8
  store i32 %10, ptr @pvt_data.2, align 4
  store ptr %dev, ptr @pvt_data.0, align 4
  %11 = load ptr, ptr @pvt_data.1, align 4
  %call10 = call ptr @tee_shm_alloc_kernel_buf(ptr noundef %11, i32 noundef 4194304) #7
  %cmp.i27 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load ptr, ptr @pvt_data.0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14) #10
  %13 = ptrtoint ptr %call10 to i32
  %14 = load ptr, ptr @pvt_data.1, align 4
  %15 = load i32, ptr @pvt_data.2, align 4
  %call18 = call i32 @tee_client_close_session(ptr noundef %14, i32 noundef %15) #7
  br label %out_ctx

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call10, ptr @pvt_data.3, align 4
  br label %cleanup

out_ctx:                                          ; preds = %do.end15, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %13, %do.end15 ]
  %16 = load ptr, ptr @pvt_data.1, align 4
  call void @tee_client_close_context(ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %out_ctx, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_ctx ], [ 0, %if.end17 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sess_arg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tee_bnxt_fw_remove(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pvt_data.3, align 4
  tail call void @tee_shm_free(ptr noundef %0) #7
  %1 = load ptr, ptr @pvt_data.1, align 4
  %2 = load i32, ptr @pvt_data.2, align 4
  %call = tail call i32 @tee_client_close_session(ptr noundef %1, i32 noundef %2) #7
  %3 = load ptr, ptr @pvt_data.1, align 4
  tail call void @tee_client_close_context(ptr noundef %3) #7
  store ptr null, ptr @pvt_data.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tee_bnxt_fw_shutdown(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pvt_data.3, align 4
  tail call void @tee_shm_free(ptr noundef %0) #7
  %1 = load ptr, ptr @pvt_data.1, align 4
  %2 = load i32, ptr @pvt_data.2, align 4
  %call = tail call i32 @tee_client_close_session(ptr noundef %1, i32 noundef %2) #7
  %3 = load ptr, ptr @pvt_data.1, align 4
  tail call void @tee_client_close_context(ptr noundef %3) #7
  store ptr null, ptr @pvt_data.1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_client_open_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @optee_ctx_match(ptr nocapture noundef readonly %ver, ptr nocapture noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_open_session(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_alloc_kernel_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_close_session(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_client_close_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 112, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tee_bnxt_fw_load._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tee_bnxt_fw_load._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_tee_bnxt_fw_load, !9, !"__ksymtab_tee_bnxt_fw_load", i1 false, i1 false}
!9 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 120, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 156, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tee_bnxt_copy_coredump._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tee_bnxt_copy_coredump._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 164, i32 4}
!17 = !{ptr @tee_bnxt_copy_coredump._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @tee_bnxt_copy_coredump._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_tee_bnxt_copy_coredump, !20, !"__ksymtab_tee_bnxt_copy_coredump", i1 false, i1 false}
!20 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 177, i32 1}
!21 = !{ptr @__initcall__kmod_tee_bnxt_fw__185_281_tee_bnxt_fw_mod_init6, !22, !"__initcall__kmod_tee_bnxt_fw__185_281_tee_bnxt_fw_mod_init6", i1 false, i1 false}
!22 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 281, i32 1}
!23 = !{ptr @__exitcall_tee_bnxt_fw_mod_exit, !24, !"__exitcall_tee_bnxt_fw_mod_exit", i1 false, i1 false}
!24 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 282, i32 1}
!25 = !{ptr @__UNIQUE_ID_author186, !26, !"__UNIQUE_ID_author186", i1 false, i1 false}
!26 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 284, i32 1}
!27 = !{ptr @__UNIQUE_ID_description187, !28, !"__UNIQUE_ID_description187", i1 false, i1 false}
!28 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 285, i32 1}
!29 = !{ptr @__UNIQUE_ID_file188, !30, !"__UNIQUE_ID_file188", i1 false, i1 false}
!30 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 286, i32 1}
!31 = !{ptr @__UNIQUE_ID_license189, !30, !"__UNIQUE_ID_license189", i1 false, i1 false}
!32 = distinct !{null, !33, !"pvt_data", i1 false, i1 false}
!33 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 64, i32 35}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 263, i32 12}
!36 = !{ptr @tee_bnxt_fw_driver, !37, !"tee_bnxt_fw_driver", i1 false, i1 false}
!37 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 260, i32 33}
!38 = !{ptr @tee_bnxt_fw_id_table, !39, !"tee_bnxt_fw_id_table", i1 false, i1 false}
!39 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 252, i32 42}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 206, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tee_bnxt_fw_probe._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tee_bnxt_fw_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/firmware/broadcom/tee_bnxt_fw.c", i32 217, i32 3}
!47 = !{ptr @tee_bnxt_fw_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tee_bnxt_fw_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
