; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_tis_spi_cr50.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_tis_spi_cr50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tpm_tis_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tpm_tis_spi_phy = type { %struct.tpm_tis_data, ptr, ptr, %struct.completion, i32, ptr }
%struct.tpm_tis_data = type { i16, i32, i32, i8, i32, ptr, i16, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i16, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cr50_spi_phy = type { %struct.tpm_tis_spi_phy, %struct.mutex, i32, i32, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cr50_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&cr50_phy->time_track_mutex\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cr50_spi\00", [23 x i8] zeroinitializer }, align 32
@cr50_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Requesting IRQ %d failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cr50_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/char/tpm/tpm_tis_spi_cr50.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cr50_spi_probe._entry_ptr = internal global ptr @cr50_spi_probe._entry, section ".printk_index", align 4
@cr50_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No IRQ - will use delays between transactions.\0A\00", [48 x i8] zeroinitializer }, align 32
@cr50_spi_probe._entry_ptr.9 = internal global ptr @cr50_spi_probe._entry.7, section ".printk_index", align 4
@tpm_spi_cr50_phy_ops = internal constant { %struct.tpm_tis_phy_ops, [44 x i8] } { %struct.tpm_tis_phy_ops { ptr @tpm_tis_spi_cr50_read_bytes, ptr @tpm_tis_spi_cr50_write_bytes, ptr @tpm_tis_spi_read16, ptr @tpm_tis_spi_read32, ptr @tpm_tis_spi_write32 }, [44 x i8] zeroinitializer }, align 32
@cr50_spi_flow_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout during flow control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cr50_spi_flow_control\00", [42 x i8] zeroinitializer }, align 32
@cr50_spi_flow_control._entry_ptr = internal global ptr @cr50_spi_flow_control._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cr50_ensure_access_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 97, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timeout waiting for TPM ready IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cr50_ensure_access_delay\00", [39 x i8] zeroinitializer }, align 32
@cr50_ensure_access_delay._entry_ptr = internal global ptr @cr50_ensure_access_delay._entry, section ".printk_index", align 4
@cr50_ensure_access_delay._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 107, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TPM ready IRQ confirmed on attempt %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cr50_ensure_access_delay._entry_ptr.18 = internal global ptr @cr50_ensure_access_delay._entry.15, section ".printk_index", align 4
@cr50_ensure_access_delay._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.4, i32 110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IRQ not confirmed - will use delays\0A\00", [59 x i8] zeroinitializer }, align 32
@cr50_ensure_access_delay._entry_ptr.21 = internal global ptr @cr50_ensure_access_delay._entry.19, section ".printk_index", align 4
@cr50_print_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 266, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cr50 firmware version: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cr50_print_fw_version\00", [42 x i8] zeroinitializer }, align 32
@cr50_print_fw_version._entry_ptr = internal global ptr @cr50_print_fw_version._entry, section ".printk_index", align 4
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware-power-managed\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 288, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 294, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 298, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 314, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"tpm_spi_cr50_phy_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 236, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 180, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 87, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 97, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 106, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 110, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 266, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [39 x i8] c"../drivers/char/tpm/tpm_tis_spi_cr50.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 194, i32 37 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @cr50_ensure_access_delay._entry, ptr @cr50_ensure_access_delay._entry.15, ptr @cr50_ensure_access_delay._entry.19, ptr @cr50_ensure_access_delay._entry_ptr, ptr @cr50_ensure_access_delay._entry_ptr.18, ptr @cr50_ensure_access_delay._entry_ptr.21, ptr @cr50_print_fw_version._entry, ptr @cr50_print_fw_version._entry_ptr, ptr @cr50_spi_flow_control._entry, ptr @cr50_spi_flow_control._entry_ptr, ptr @cr50_spi_probe._entry, ptr @cr50_spi_probe._entry.7, ptr @cr50_spi_probe._entry_ptr, ptr @cr50_spi_probe._entry_ptr.9, ptr @cr50_spi_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @tpm_spi_cr50_phy_ops, ptr @.str.10, ptr @.str.11, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_spi_cr50_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_spi_flow_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_ensure_access_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_ensure_access_delay._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_ensure_access_delay._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_print_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cr50_spi_probe(ptr noundef %spi) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %fw_ver.i = alloca [65 x i8], align 1
  %fw_ver_block.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 328, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flow_control = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %flow_control to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cr50_spi_flow_control, ptr %flow_control, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %wake_after = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %wake_after to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %wake_after, align 4
  %rng_quality = getelementptr inbounds %struct.tpm_tis_data, ptr %call.i, i32 0, i32 10
  %3 = ptrtoint ptr %rng_quality to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 700, ptr %rng_quality, align 4
  %ready = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ready, align 4
  %wait.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #4
  %access_delay = getelementptr inbounds %struct.cr50_spi_phy, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %access_delay to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %access_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last_access = getelementptr inbounds %struct.cr50_spi_phy, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %last_access to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last_access, align 4
  %time_track_mutex = getelementptr inbounds %struct.cr50_spi_phy, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %time_track_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @cr50_spi_probe.__key) #4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then2, label %do.end20

if.then2:                                         ; preds = %if.end
  %call.i62 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %9, ptr noundef nonnull @cr50_spi_irq_handler, ptr noundef null, i32 noundef 8193, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp6 = icmp slt i32 %call.i62, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i62)
  %cmp8 = icmp eq i32 %call.i62, -517
  br i1 %cmp8, label %if.then7.cleanup_crit_edge, label %do.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %11, i32 noundef %call.i62) #7
  br label %if.end22

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %irq_needs_confirmation = getelementptr inbounds %struct.cr50_spi_phy, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %irq_needs_confirmation to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %irq_needs_confirmation, align 4
  br label %if.end22

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.8) #7
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.else, %do.end13
  %call23 = tail call i32 @tpm_tis_spi_init(ptr noundef %spi, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @tpm_spi_cr50_phy_ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %fw_ver.i) #4
  %13 = call ptr @memset(ptr %fw_ver.i, i32 255, i32 65)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver_block.i) #4
  %14 = getelementptr inbounds [4 x i8], ptr %fw_ver_block.i, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i8], ptr %fw_ver_block.i, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %fw_ver_block.i, i32 0, i32 3
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %fw_ver_block.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %fw_ver_block.i, align 4
  %18 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %19, 12
  %or.i = or i32 %shl.i, 3984
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #4
  %20 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %value.addr.i.i, align 1
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_ops.i.i, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_bytes.i.i, align 4
  %call.i.i = call i32 %24(ptr noundef nonnull %call.i, i32 noundef %or.i, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #4
  br label %do.body.i

do.body.i:                                        ; preds = %for.body.3.i.do.body.i_crit_edge, %if.end26
  %len.0.i = phi i32 [ 0, %if.end26 ], [ %inc.3.i, %for.body.3.i.do.body.i_crit_edge ]
  %25 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %locality.i, align 4
  %shl3.i = shl i32 %26, 12
  %or4.i = or i32 %shl3.i, 3984
  %27 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_ops.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i32.i = call i32 %30(ptr noundef nonnull %call.i, i32 noundef %or4.i, i16 noundef zeroext 4, ptr noundef nonnull %fw_ver_block.i) #4
  %31 = ptrtoint ptr %fw_ver_block.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fw_ver_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %do.body.i.cr50_print_fw_version.exit_crit_edge, label %for.body.i

do.body.i.cr50_print_fw_version.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_print_fw_version.exit

for.body.i:                                       ; preds = %do.body.i
  %arrayidx7.i = getelementptr [65 x i8], ptr %fw_ver.i, i32 0, i32 %len.0.i
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx7.i, align 1
  %inc.i = or i32 %len.0.i, 1
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.1.i = icmp eq i8 %35, 0
  br i1 %tobool.not.1.i, label %for.body.i.cr50_print_fw_version.exit_crit_edge, label %for.body.1.i

for.body.i.cr50_print_fw_version.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_print_fw_version.exit

for.body.1.i:                                     ; preds = %for.body.i
  %arrayidx7.1.i = getelementptr [65 x i8], ptr %fw_ver.i, i32 0, i32 %inc.i
  %36 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx7.1.i, align 1
  %inc.1.i = or i32 %len.0.i, 2
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.2.i = icmp eq i8 %38, 0
  br i1 %tobool.not.2.i, label %for.body.1.i.cr50_print_fw_version.exit_crit_edge, label %for.body.2.i

for.body.1.i.cr50_print_fw_version.exit_crit_edge: ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_print_fw_version.exit

for.body.2.i:                                     ; preds = %for.body.1.i
  %arrayidx7.2.i = getelementptr [65 x i8], ptr %fw_ver.i, i32 0, i32 %inc.1.i
  %39 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx7.2.i, align 1
  %inc.2.i = or i32 %len.0.i, 3
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.3.i = icmp eq i8 %41, 0
  br i1 %tobool.not.3.i, label %for.body.2.i.cr50_print_fw_version.exit_crit_edge, label %for.body.3.i

for.body.2.i.cr50_print_fw_version.exit_crit_edge: ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_print_fw_version.exit

for.body.3.i:                                     ; preds = %for.body.2.i
  %arrayidx7.3.i = getelementptr [65 x i8], ptr %fw_ver.i, i32 0, i32 %inc.2.i
  %42 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx7.3.i, align 1
  %inc.3.i = add nuw nsw i32 %len.0.i, 4
  %cmp12.i = icmp ult i32 %len.0.i, 60
  br i1 %cmp12.i, label %for.body.3.i.do.body.i_crit_edge, label %for.body.3.i.cr50_print_fw_version.exit_crit_edge

for.body.3.i.cr50_print_fw_version.exit_crit_edge: ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_print_fw_version.exit

for.body.3.i.do.body.i_crit_edge:                 ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

cr50_print_fw_version.exit:                       ; preds = %for.body.3.i.cr50_print_fw_version.exit_crit_edge, %for.body.2.i.cr50_print_fw_version.exit_crit_edge, %for.body.1.i.cr50_print_fw_version.exit_crit_edge, %for.body.i.cr50_print_fw_version.exit_crit_edge, %do.body.i.cr50_print_fw_version.exit_crit_edge
  %len.138.i = phi i32 [ %len.0.i, %do.body.i.cr50_print_fw_version.exit_crit_edge ], [ %inc.i, %for.body.i.cr50_print_fw_version.exit_crit_edge ], [ %inc.1.i, %for.body.1.i.cr50_print_fw_version.exit_crit_edge ], [ %inc.2.i, %for.body.2.i.cr50_print_fw_version.exit_crit_edge ], [ 64, %for.body.3.i.cr50_print_fw_version.exit_crit_edge ]
  %arrayidx15.i = getelementptr [65 x i8], ptr %fw_ver.i, i32 0, i32 %len.138.i
  %43 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx15.i, align 1
  %spi_device.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %spi_device.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spi_device.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.22, ptr noundef nonnull %fw_ver.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver_block.i) #4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %fw_ver.i) #4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %val.i, align 1, !annotation !57
  %call.i.i63 = call i32 @device_property_read_u8_array(ptr noundef %spi, ptr noundef nonnull @.str.24, ptr noundef nonnull %val.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %tobool.not.i64 = icmp eq i32 %call.i.i63, 0
  br i1 %tobool.not.i64, label %tpm_cr50_spi_is_firmware_power_managed.exit, label %tpm_cr50_spi_is_firmware_power_managed.exit.thread

tpm_cr50_spi_is_firmware_power_managed.exit.thread: ; preds = %cr50_print_fw_version.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  br label %if.then32

tpm_cr50_spi_is_firmware_power_managed.exit:      ; preds = %cr50_print_fw_version.exit
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool1.i.not = icmp eq i8 %50, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  br i1 %tobool1.i.not, label %tpm_cr50_spi_is_firmware_power_managed.exit.cleanup_crit_edge, label %tpm_cr50_spi_is_firmware_power_managed.exit.if.then32_crit_edge

tpm_cr50_spi_is_firmware_power_managed.exit.if.then32_crit_edge: ; preds = %tpm_cr50_spi_is_firmware_power_managed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

tpm_cr50_spi_is_firmware_power_managed.exit.cleanup_crit_edge: ; preds = %tpm_cr50_spi_is_firmware_power_managed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %tpm_cr50_spi_is_firmware_power_managed.exit.if.then32_crit_edge, %tpm_cr50_spi_is_firmware_power_managed.exit.thread
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %47, i32 0, i32 9
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %or = or i32 %52, 64
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %tpm_cr50_spi_is_firmware_power_managed.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then7.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %tpm_cr50_spi_is_firmware_power_managed.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cr50_spi_flow_control(ptr nocapture noundef readonly %phy, ptr noundef %spi_xfer) #0 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_device = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %spi_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 75
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %len, align 4
  %4 = getelementptr inbounds i8, ptr %m, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18, i32 1
  %iobuf = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %phy, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond8.do.body_crit_edge, %entry
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m, ptr %m, align 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.spi_message_add_tail.exit_crit_edge

do.body.spi_message_add_tail.exit_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %transfer_list.i, align 4
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.body.spi_message_add_tail.exit_crit_edge
  %14 = ptrtoint ptr %spi_device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_device, align 4
  %call3 = call i32 @spi_sync_locked(ptr noundef %15, ptr noundef nonnull %m) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %spi_message_add_tail.exit.cleanup_crit_edge, label %if.end

spi_message_add_tail.exit.cleanup_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %do.end, label %do.cond8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.10) #7
  br label %cleanup

do.cond8:                                         ; preds = %if.end
  %17 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobuf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = and i8 %20, 1
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %do.cond8.do.body_crit_edge, label %do.cond8.cleanup_crit_edge

do.cond8.cleanup_crit_edge:                       ; preds = %do.cond8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond8.do.body_crit_edge:                       ; preds = %do.cond8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cleanup:                                          ; preds = %do.cond8.cleanup_crit_edge, %do.end, %spi_message_add_tail.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %do.cond8.cleanup_crit_edge ], [ %call3, %spi_message_add_tail.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cr50_spi_irq_handler(i32 noundef %dummy, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_confirmed = getelementptr inbounds %struct.cr50_spi_phy, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %irq_confirmed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %irq_confirmed, align 1
  %ready = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %dev_id, i32 0, i32 3
  tail call void @complete(ptr noundef %ready) #4
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_spi_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_spi_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %wake_after = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %wake_after to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wake_after, align 4
  %call4 = tail call i32 @tpm_tis_resume(ptr noundef %dev) #4
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_cr50_read_bytes(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tpm_tis_spi_cr50_transfer(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %result, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_cr50_write_bytes(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tpm_tis_spi_cr50_transfer(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef null, ptr noundef %value)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_spi_read16(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_spi_read32(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_spi_write32(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_tis_spi_cr50_transfer(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %in, ptr noundef %out) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %spi_cs_wake.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %time_track_mutex = getelementptr inbounds %struct.cr50_spi_phy, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %time_track_mutex, i32 noundef 0) #4
  %last_access.i = getelementptr inbounds %struct.cr50_spi_phy, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %last_access.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_access.i, align 4
  %access_delay.i = getelementptr inbounds %struct.cr50_spi_phy, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %access_delay.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %access_delay.i, align 4
  %add.i = add i32 %3, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %spi_device.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %spi_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi_device.i, align 4
  %sub.i = sub i32 %4, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  %sub3.i = sub i32 %4, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp4.i = icmp slt i32 %sub3.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  %sub5.i = sub i32 %add.i, %4
  %ready.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 3
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %ready.i, i32 noundef %sub5.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true7.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true7.i:                                 ; preds = %if.then.i
  %irq_confirmed.i = getelementptr inbounds %struct.cr50_spi_phy, ptr %data, i32 0, i32 6
  %7 = ptrtoint ptr %irq_confirmed.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_confirmed.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not.i = icmp eq i8 %8, 0
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.end10.i_crit_edge, label %do.end.i

land.lhs.true7.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

do.end.i:                                         ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %land.lhs.true7.i.if.end10.i_crit_edge, %if.then.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %irq_needs_confirmation.i = getelementptr inbounds %struct.cr50_spi_phy, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %irq_needs_confirmation.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq_needs_confirmation.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not.i = icmp eq i8 %10, 0
  br i1 %tobool11.not.i, label %if.end10.i.cr50_ensure_access_delay.exit_crit_edge, label %if.then12.i

if.end10.i.cr50_ensure_access_delay.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_ensure_access_delay.exit

if.then12.i:                                      ; preds = %if.end10.i
  %irq_confirmation_attempt.i = getelementptr inbounds %struct.cr50_spi_phy, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %irq_confirmation_attempt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_confirmation_attempt.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %irq_confirmation_attempt.i, align 4
  %irq_confirmed13.i = getelementptr inbounds %struct.cr50_spi_phy, ptr %data, i32 0, i32 6
  %13 = ptrtoint ptr %irq_confirmed13.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %irq_confirmed13.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not.i = icmp eq i8 %14, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %irq_needs_confirmation.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %irq_needs_confirmation.i, align 4
  %16 = ptrtoint ptr %access_delay.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 75, ptr %access_delay.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %inc.i) #7
  br label %cr50_ensure_access_delay.exit

if.else.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp22.i = icmp ugt i32 %inc.i, 3
  br i1 %cmp22.i, label %if.then23.i, label %if.else.i.cr50_ensure_access_delay.exit_crit_edge

if.else.i.cr50_ensure_access_delay.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_ensure_access_delay.exit

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %irq_needs_confirmation.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %irq_needs_confirmation.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.20) #7
  br label %cr50_ensure_access_delay.exit

cr50_ensure_access_delay.exit:                    ; preds = %if.then23.i, %if.else.i.cr50_ensure_access_delay.exit_crit_edge, %if.then15.i, %if.end10.i.cr50_ensure_access_delay.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %last_access.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_access.i, align 4
  %sub.i.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %cr50_needs_waking.exit.i, label %cr50_ensure_access_delay.exit.if.then.i10_crit_edge

cr50_ensure_access_delay.exit.if.then.i10_crit_edge: ; preds = %cr50_ensure_access_delay.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i10

cr50_needs_waking.exit.i:                         ; preds = %cr50_ensure_access_delay.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %wake_after.i.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %wake_after.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wake_after.i.i, align 4
  %sub1.i.i = sub i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub1.i.i)
  %cmp2.i.i = icmp sgt i32 %sub1.i.i, -1
  br i1 %cmp2.i.i, label %cr50_needs_waking.exit.i.if.then.i10_crit_edge, label %cr50_needs_waking.exit.i.cr50_wake_if_needed.exit_crit_edge

cr50_needs_waking.exit.i.cr50_wake_if_needed.exit_crit_edge: ; preds = %cr50_needs_waking.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cr50_wake_if_needed.exit

cr50_needs_waking.exit.i.if.then.i10_crit_edge:   ; preds = %cr50_needs_waking.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i10

if.then.i10:                                      ; preds = %cr50_needs_waking.exit.i.if.then.i10_crit_edge, %cr50_ensure_access_delay.exit.if.then.i10_crit_edge
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %spi_cs_wake.i) #4
  %24 = call ptr @memset(ptr %spi_cs_wake.i, i32 0, i32 96)
  %25 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %spi_cs_wake.i, i32 0, i32 9
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1000, ptr %25, align 2
  %27 = ptrtoint ptr %spi_device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi_device.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
  %29 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_cs_wake.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i10.spi_sync_transfer.exit.i_crit_edge

if.then.i10.spi_sync_transfer.exit.i_crit_edge:   ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_cs_wake.i, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %if.then.i10.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_cs_wake.i) #4
  br label %cr50_wake_if_needed.exit

cr50_wake_if_needed.exit:                         ; preds = %spi_sync_transfer.exit.i, %cr50_needs_waking.exit.i.cr50_wake_if_needed.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.i11 = add i32 %39, 100
  %wake_after.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 4
  %40 = ptrtoint ptr %wake_after.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i11, ptr %wake_after.i, align 4
  %call2 = call i32 @tpm_tis_spi_transfer(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %in, ptr noundef %out) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %42 = ptrtoint ptr %last_access.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %last_access.i, align 4
  call void @mutex_unlock(ptr noundef %time_track_mutex) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_spi_transfer(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @cr50_spi_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 288, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 294, i32 12}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 298, i32 4}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cr50_spi_probe._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @cr50_spi_probe._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 314, i32 3}
!15 = !{ptr @cr50_spi_probe._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @cr50_spi_probe._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 180, i32 4}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cr50_spi_flow_control._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @cr50_spi_flow_control._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @init_completion.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/completion.h", i32 87, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tpm_spi_cr50_phy_ops, !26, !"tpm_spi_cr50_phy_ops", i1 false, i1 false}
!26 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 236, i32 37}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 97, i32 4}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cr50_ensure_access_delay._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @cr50_ensure_access_delay._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 106, i32 4}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cr50_ensure_access_delay._entry.15, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cr50_ensure_access_delay._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 110, i32 4}
!39 = !{ptr @cr50_ensure_access_delay._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cr50_ensure_access_delay._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 266, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cr50_print_fw_version._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @cr50_print_fw_version._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/tpm_tis_spi_cr50.c", i32 194, i32 37}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
