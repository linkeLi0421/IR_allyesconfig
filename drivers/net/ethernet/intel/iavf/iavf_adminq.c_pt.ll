; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_adminq.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_adminq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iavf_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.iavf_asq_cmd_details = type { ptr, i64, i16, i16, i8, i8, ptr }
%struct.iavf_arq_event_info = type { %struct.iavf_aq_desc, i16, i16, ptr }

@iavf_asq_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016iavf %02x:%02x.%x AQTX: Admin queue not initialized.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iavf_asq_send_command\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/iavf/iavf_adminq.c\00", [50 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr = internal global ptr @iavf_asq_send_command._entry, section ".printk_index", align 4
@iavf_asq_send_command._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016iavf %02x:%02x.%x AQTX: head overrun at %d\0A\00", [50 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.5 = internal global ptr @iavf_asq_send_command._entry.3, section ".printk_index", align 4
@iavf_asq_send_command._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016iavf %02x:%02x.%x AQTX: Invalid buffer size: %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.8 = internal global ptr @iavf_asq_send_command._entry.6, section ".printk_index", align 4
@iavf_asq_send_command._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016iavf %02x:%02x.%x AQTX: Async flag not set along with postpone flag\00", [58 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.11 = internal global ptr @iavf_asq_send_command._entry.9, section ".printk_index", align 4
@iavf_asq_send_command._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016iavf %02x:%02x.%x AQTX: Error queue is full.\0A\00", [48 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.14 = internal global ptr @iavf_asq_send_command._entry.12, section ".printk_index", align 4
@iavf_asq_send_command._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016iavf %02x:%02x.%x AQTX: desc and buffer:\0A\00", [52 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.17 = internal global ptr @iavf_asq_send_command._entry.15, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iavf_asq_send_command._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016iavf %02x:%02x.%x AQTX: Command completed with error 0x%X.\0A\00", [34 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.20 = internal global ptr @iavf_asq_send_command._entry.18, section ".printk_index", align 4
@iavf_asq_send_command._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016iavf %02x:%02x.%x AQTX: desc and buffer writeback:\0A\00", [42 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.23 = internal global ptr @iavf_asq_send_command._entry.21, section ".printk_index", align 4
@iavf_asq_send_command._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016iavf %02x:%02x.%x AQTX: AQ Critical error.\0A\00", [50 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.26 = internal global ptr @iavf_asq_send_command._entry.24, section ".printk_index", align 4
@iavf_asq_send_command._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016iavf %02x:%02x.%x AQTX: Writeback timeout.\0A\00", [50 x i8] zeroinitializer }, align 32
@iavf_asq_send_command._entry_ptr.29 = internal global ptr @iavf_asq_send_command._entry.27, section ".printk_index", align 4
@iavf_clean_arq_element._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016iavf %02x:%02x.%x AQRX: Admin queue not initialized.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iavf_clean_arq_element\00", [41 x i8] zeroinitializer }, align 32
@iavf_clean_arq_element._entry_ptr = internal global ptr @iavf_clean_arq_element._entry, section ".printk_index", align 4
@iavf_clean_arq_element._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016iavf %02x:%02x.%x AQRX: Event received with error 0x%X.\0A\00", [37 x i8] zeroinitializer }, align 32
@iavf_clean_arq_element._entry_ptr.34 = internal global ptr @iavf_clean_arq_element._entry.32, section ".printk_index", align 4
@iavf_clean_arq_element._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016iavf %02x:%02x.%x AQRX: desc and buffer:\0A\00", [52 x i8] zeroinitializer }, align 32
@iavf_clean_arq_element._entry_ptr.37 = internal global ptr @iavf_clean_arq_element._entry.35, section ".printk_index", align 4
@iavf_clean_asq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016iavf %02x:%02x.%x ntc %d head %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iavf_clean_asq\00", [17 x i8] zeroinitializer }, align 32
@iavf_clean_asq._entry_ptr = internal global ptr @iavf_clean_asq._entry, section ".printk_index", align 4
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 647, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 657, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 686, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 695, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 710, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 740, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 773, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 791, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 803, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 807, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 863, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 886, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 899, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [49 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_adminq.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 580, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @iavf_asq_send_command._entry, ptr @iavf_asq_send_command._entry.12, ptr @iavf_asq_send_command._entry.15, ptr @iavf_asq_send_command._entry.18, ptr @iavf_asq_send_command._entry.21, ptr @iavf_asq_send_command._entry.24, ptr @iavf_asq_send_command._entry.27, ptr @iavf_asq_send_command._entry.3, ptr @iavf_asq_send_command._entry.6, ptr @iavf_asq_send_command._entry.9, ptr @iavf_asq_send_command._entry_ptr, ptr @iavf_asq_send_command._entry_ptr.11, ptr @iavf_asq_send_command._entry_ptr.14, ptr @iavf_asq_send_command._entry_ptr.17, ptr @iavf_asq_send_command._entry_ptr.20, ptr @iavf_asq_send_command._entry_ptr.23, ptr @iavf_asq_send_command._entry_ptr.26, ptr @iavf_asq_send_command._entry_ptr.29, ptr @iavf_asq_send_command._entry_ptr.5, ptr @iavf_asq_send_command._entry_ptr.8, ptr @iavf_clean_arq_element._entry, ptr @iavf_clean_arq_element._entry.32, ptr @iavf_clean_arq_element._entry.35, ptr @iavf_clean_arq_element._entry_ptr, ptr @iavf_clean_arq_element._entry_ptr.34, ptr @iavf_clean_arq_element._entry_ptr.37, ptr @iavf_clean_asq._entry, ptr @iavf_clean_asq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_asq_send_command._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_clean_arq_element._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_clean_arq_element._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_clean_arq_element._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_clean_asq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_init_adminq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_arq_entries = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.init_adminq_exit_crit_edge, label %lor.lhs.false

entry.init_adminq_exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_exit

lor.lhs.false:                                    ; preds = %entry
  %num_asq_entries = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_asq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp4 = icmp eq i16 %3, 0
  br i1 %cmp4, label %lor.lhs.false.init_adminq_exit_crit_edge, label %lor.lhs.false6

lor.lhs.false.init_adminq_exit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_exit

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arq_buf_size = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp9 = icmp eq i16 %5, 0
  br i1 %cmp9, label %lor.lhs.false6.init_adminq_exit_crit_edge, label %lor.lhs.false11

lor.lhs.false6.init_adminq_exit_crit_edge:        ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_exit

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %asq_buf_size = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 6
  %6 = ptrtoint ptr %asq_buf_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %asq_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp14 = icmp eq i16 %7, 0
  br i1 %cmp14, label %lor.lhs.false11.init_adminq_exit_crit_edge, label %if.end

lor.lhs.false11.init_adminq_exit_crit_edge:       ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_exit

if.end:                                           ; preds = %lor.lhs.false11
  %tail.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 9
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 33792, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 8
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 25600, ptr %head.i, align 4
  %len.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 10
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 26624, ptr %len.i, align 4
  %bal.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 12
  %11 = ptrtoint ptr %bal.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 31744, ptr %bal.i, align 4
  %bah.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 11
  %12 = ptrtoint ptr %bah.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30720, ptr %bah.i, align 4
  %tail10.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 9
  %13 = ptrtoint ptr %tail10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 28672, ptr %tail10.i, align 4
  %head13.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 8
  %14 = ptrtoint ptr %head13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 29696, ptr %head13.i, align 4
  %len16.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 10
  %15 = ptrtoint ptr %len16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32768, ptr %len16.i, align 4
  %bal19.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 12
  %16 = ptrtoint ptr %bal19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 27648, ptr %bal19.i, align 4
  %bah22.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 11
  %17 = ptrtoint ptr %bah22.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24576, ptr %bah22.i, align 4
  %asq_cmd_timeout = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %asq_cmd_timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 250000, ptr %asq_cmd_timeout, align 4
  %count.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 4
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.not.i = icmp eq i16 %20, 0
  br i1 %cmp.not.i, label %if.end11.i, label %if.end.init_adminq_exit_crit_edge

if.end.init_adminq_exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_exit

if.end11.i:                                       ; preds = %if.end
  %next_to_use.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 6
  %21 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %next_to_use.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 7
  %22 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %next_to_clean.i, align 2
  %desc_buf.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 1
  %conv.i.i = zext i16 %3 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 5
  %conv2.i.i = zext i32 %mul.i.i to i64
  %call.i.i = tail call i32 @iavf_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i, i64 noundef %conv2.i.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.i.init_adminq_exit_crit_edge

if.end11.i.init_adminq_exit_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_exit

if.end.i.i:                                       ; preds = %if.end11.i
  %cmd_buf.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 2
  %23 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_asq_entries, align 2
  %conv7.i.i = zext i16 %24 to i32
  %mul8.i.i = shl nuw nsw i32 %conv7.i.i, 5
  %call9.i.i = tail call i32 @iavf_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %cmd_buf.i.i, i32 noundef %mul8.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end17.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i) #6
  br label %init_adminq_exit

if.end17.i:                                       ; preds = %if.end.i.i
  %asq.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_asq_entries, align 2
  %conv.i45.i = zext i16 %26 to i32
  %mul.i46.i = mul nuw nsw i32 %conv.i45.i, 12
  %call.i47.i = tail call i32 @iavf_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %asq.i.i, i32 noundef %mul.i46.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %if.end.i49.i, label %if.end17.i.iavf_init_asq.exit.thread88_crit_edge

if.end17.i.iavf_init_asq.exit.thread88_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_init_asq.exit.thread88

if.end.i49.i:                                     ; preds = %if.end17.i
  %27 = ptrtoint ptr %asq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asq.i.i, align 4
  %r.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 3
  %29 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %r.i.i, align 4
  %30 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_asq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp61.not.i.i = icmp eq i16 %31, 0
  br i1 %cmp61.not.i.i, label %if.end.i49.i.if.end21.i_crit_edge, label %if.end.i49.i.for.body.i.i_crit_edge

if.end.i49.i.for.body.i.i_crit_edge:              ; preds = %if.end.i49.i
  br label %for.body.i.i

if.end.i49.i.if.end21.i_crit_edge:                ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i49.i.for.body.i.i_crit_edge
  %i.062.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i49.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %r.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iavf_dma_mem, ptr %33, i32 %i.062.i.i
  %34 = ptrtoint ptr %asq_buf_size to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %asq_buf_size, align 2
  %conv15.i.i = zext i16 %35 to i64
  %call16.i.i = tail call i32 @iavf_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i.i, i64 noundef %conv15.i.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %for.inc.i.i, label %for.cond20.preheader.i.i

for.cond20.preheader.i.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.062.i.i)
  %cmp2164.not.i.i = icmp eq i32 %i.062.i.i, 0
  br i1 %cmp2164.not.i.i, label %for.cond20.preheader.i.i.iavf_init_asq.exit_crit_edge, label %for.cond20.preheader.i.i.for.body23.i.i_crit_edge

for.cond20.preheader.i.i.for.body23.i.i_crit_edge: ; preds = %for.cond20.preheader.i.i
  br label %for.body23.i.i

for.cond20.preheader.i.i.iavf_init_asq.exit_crit_edge: ; preds = %for.cond20.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_init_asq.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.062.i.i, 1
  %36 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_asq_entries, align 2
  %conv9.i.i = zext i16 %37 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv9.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end21.i_crit_edge

for.inc.i.i.if.end21.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body23.i.i:                                   ; preds = %for.body23.i.i.for.body23.i.i_crit_edge, %for.cond20.preheader.i.i.for.body23.i.i_crit_edge
  %i.165.in.i.i = phi i32 [ %i.165.i.i, %for.body23.i.i.for.body23.i.i_crit_edge ], [ %i.062.i.i, %for.cond20.preheader.i.i.for.body23.i.i_crit_edge ]
  %i.165.i.i = add nsw i32 %i.165.in.i.i, -1
  %38 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %r.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.iavf_dma_mem, ptr %39, i32 %i.165.i.i
  %call28.i.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx27.i.i) #6
  %cmp21.i.i = icmp sgt i32 %i.165.in.i.i, 1
  br i1 %cmp21.i.i, label %for.body23.i.i.for.body23.i.i_crit_edge, label %for.body23.i.i.iavf_init_asq.exit_crit_edge

for.body23.i.i.iavf_init_asq.exit_crit_edge:      ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_init_asq.exit

for.body23.i.i.for.body23.i.i_crit_edge:          ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.i.i

if.end21.i:                                       ; preds = %for.inc.i.i.if.end21.i_crit_edge, %if.end.i49.i.if.end21.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %42 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %head.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %46 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tail.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %45, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_asq_entries, align 2
  %conv.i52.i = zext i16 %49 to i32
  %or.i.i = or i32 %conv.i52.i, -2147483648
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %50) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %pa.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 1, i32 1
  %55 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pa.i.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %60 = ptrtoint ptr %bal.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bal.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %59, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 %57) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %64 = ptrtoint ptr %bah.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bah.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 0) #6, !srcloc !70
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %68 = ptrtoint ptr %bal.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bal.i, align 4
  %add.ptr41.i.i = getelementptr i8, ptr %67, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i.i) #6, !srcloc !75
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %72 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pa.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.not.i.i = icmp eq i32 %71, %73
  br i1 %cmp.not.i.i, label %iavf_init_asq.exit.thread84, label %if.end21.i.iavf_init_asq.exit.thread88_crit_edge

if.end21.i.iavf_init_asq.exit.thread88_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_init_asq.exit.thread88

iavf_init_asq.exit.thread84:                      ; preds = %if.end21.i
  %74 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %num_asq_entries, align 2
  %76 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %count.i, align 4
  %count.i34 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 4
  %77 = ptrtoint ptr %count.i34 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %count.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp.not.i35 = icmp eq i16 %78, 0
  br i1 %cmp.not.i35, label %if.end.i37, label %iavf_init_asq.exit.thread84.init_adminq_free_asq_crit_edge

iavf_init_asq.exit.thread84.init_adminq_free_asq_crit_edge: ; preds = %iavf_init_asq.exit.thread84
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_free_asq

iavf_init_asq.exit.thread88:                      ; preds = %if.end21.i.iavf_init_asq.exit.thread88_crit_edge, %if.end17.i.iavf_init_asq.exit.thread88_crit_edge
  %ret_code.0.i.ph = phi i32 [ %call.i47.i, %if.end17.i.iavf_init_asq.exit.thread88_crit_edge ], [ -53, %if.end21.i.iavf_init_asq.exit.thread88_crit_edge ]
  %call.i54.i90 = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i) #6
  br label %init_adminq_exit

iavf_init_asq.exit:                               ; preds = %for.body23.i.i.iavf_init_asq.exit_crit_edge, %for.cond20.preheader.i.i.iavf_init_asq.exit_crit_edge
  %call35.i.i = tail call i32 @iavf_free_virt_mem_d(ptr noundef %hw, ptr noundef %asq.i.i) #6
  %call.i54.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i) #6
  br label %init_adminq_exit

if.end.i37:                                       ; preds = %iavf_init_asq.exit.thread84
  %79 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp4.i36 = icmp eq i16 %80, 0
  br i1 %cmp4.i36, label %if.end.i37.init_adminq_free_asq_crit_edge, label %lor.lhs.false.i39

if.end.i37.init_adminq_free_asq_crit_edge:        ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_free_asq

lor.lhs.false.i39:                                ; preds = %if.end.i37
  %81 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp8.i38 = icmp eq i16 %82, 0
  br i1 %cmp8.i38, label %lor.lhs.false.i39.init_adminq_free_asq_crit_edge, label %if.end11.i47

lor.lhs.false.i39.init_adminq_free_asq_crit_edge: ; preds = %lor.lhs.false.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_free_asq

if.end11.i47:                                     ; preds = %lor.lhs.false.i39
  %next_to_use.i40 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 6
  %83 = ptrtoint ptr %next_to_use.i40 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %next_to_use.i40, align 4
  %next_to_clean.i41 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 7
  %84 = ptrtoint ptr %next_to_clean.i41 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %next_to_clean.i41, align 2
  %desc_buf.i.i42 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 1
  %conv.i.i43 = zext i16 %80 to i32
  %mul.i.i44 = shl nuw nsw i32 %conv.i.i43, 5
  %conv2.i.i45 = zext i32 %mul.i.i44 to i64
  %call.i.i46 = tail call i32 @iavf_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i42, i64 noundef %conv2.i.i45, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool.not.i = icmp eq i32 %call.i.i46, 0
  br i1 %tobool.not.i, label %if.end17.i52, label %if.end11.i47.init_adminq_free_asq_crit_edge

if.end11.i47.init_adminq_free_asq_crit_edge:      ; preds = %if.end11.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_free_asq

if.end17.i52:                                     ; preds = %if.end11.i47
  %aq.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10
  %85 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %num_arq_entries, align 4
  %conv.i45.i48 = zext i16 %86 to i32
  %mul.i46.i49 = mul nuw nsw i32 %conv.i45.i48, 12
  %call.i47.i50 = tail call i32 @iavf_allocate_virt_mem_d(ptr noundef %hw, ptr noundef %aq.i.i, i32 noundef %mul.i46.i49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i50)
  %tobool.not.i.i51 = icmp eq i32 %call.i47.i50, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.end17.i52.init_adminq_free_asq.sink.split_crit_edge

if.end17.i52.init_adminq_free_asq.sink.split_crit_edge: ; preds = %if.end17.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_free_asq.sink.split

if.end.i.i54:                                     ; preds = %if.end17.i52
  %87 = ptrtoint ptr %aq.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %aq.i.i, align 4
  %r.i.i53 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 3
  %89 = ptrtoint ptr %r.i.i53 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %r.i.i53, align 4
  %90 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp99.not.i.i = icmp eq i16 %91, 0
  br i1 %cmp99.not.i.i, label %if.end.i.i54.if.end21.i76_crit_edge, label %if.end.i.i54.for.body.i.i59_crit_edge

if.end.i.i54.for.body.i.i59_crit_edge:            ; preds = %if.end.i.i54
  br label %for.body.i.i59

if.end.i.i54.if.end21.i76_crit_edge:              ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i76

for.body.i.i59:                                   ; preds = %if.end19.i.i.for.body.i.i59_crit_edge, %if.end.i.i54.for.body.i.i59_crit_edge
  %i.0100.i.i = phi i32 [ %inc.i.i61, %if.end19.i.i.for.body.i.i59_crit_edge ], [ 0, %if.end.i.i54.for.body.i.i59_crit_edge ]
  %92 = ptrtoint ptr %r.i.i53 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %r.i.i53, align 4
  %arrayidx.i.i55 = getelementptr %struct.iavf_dma_mem, ptr %93, i32 %i.0100.i.i
  %94 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arq_buf_size, align 4
  %conv15.i.i56 = zext i16 %95 to i64
  %call16.i.i57 = tail call i32 @iavf_allocate_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i.i55, i64 noundef %conv15.i.i56, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i57)
  %tobool17.not.i.i58 = icmp eq i32 %call16.i.i57, 0
  br i1 %tobool17.not.i.i58, label %if.end19.i.i, label %for.cond41.preheader.i.i

for.cond41.preheader.i.i:                         ; preds = %for.body.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0100.i.i)
  %cmp42102.not.i.i = icmp eq i32 %i.0100.i.i, 0
  br i1 %cmp42102.not.i.i, label %for.cond41.preheader.i.i.iavf_init_arq.exit_crit_edge, label %for.cond41.preheader.i.i.for.body44.i.i_crit_edge

for.cond41.preheader.i.i.for.body44.i.i_crit_edge: ; preds = %for.cond41.preheader.i.i
  br label %for.body44.i.i

for.cond41.preheader.i.i.iavf_init_arq.exit_crit_edge: ; preds = %for.cond41.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_init_arq.exit

if.end19.i.i:                                     ; preds = %for.body.i.i59
  %96 = ptrtoint ptr %desc_buf.i.i42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc_buf.i.i42, align 4
  %arrayidx23.i.i = getelementptr %struct.iavf_aq_desc, ptr %97, i32 %i.0100.i.i
  %98 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 16, ptr %arrayidx23.i.i, align 4
  %99 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %100)
  %cmp27.i.i = icmp ugt i16 %100, 512
  %spec.store.select.i.i = select i1 %cmp27.i.i, i16 18, i16 16
  %101 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %spec.store.select.i.i, ptr %arrayidx23.i.i, align 4
  %opcode.i.i = getelementptr %struct.iavf_aq_desc, ptr %97, i32 %i.0100.i.i, i32 1
  %102 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %opcode.i.i, align 2
  %size.i.i = getelementptr %struct.iavf_dma_mem, ptr %93, i32 %i.0100.i.i, i32 2
  %103 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size.i.i, align 4
  %conv34.i.i = trunc i32 %104 to i16
  %105 = tail call i16 @llvm.bswap.i16(i16 %conv34.i.i) #6
  %datalen.i.i = getelementptr %struct.iavf_aq_desc, ptr %97, i32 %i.0100.i.i, i32 2
  %106 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %datalen.i.i, align 4
  %retval35.i.i = getelementptr %struct.iavf_aq_desc, ptr %97, i32 %i.0100.i.i, i32 3
  %107 = ptrtoint ptr %retval35.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %retval35.i.i, align 2
  %cookie_high.i.i = getelementptr %struct.iavf_aq_desc, ptr %97, i32 %i.0100.i.i, i32 4
  %108 = ptrtoint ptr %cookie_high.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %cookie_high.i.i, align 4
  %cookie_low.i.i = getelementptr %struct.iavf_aq_desc, ptr %97, i32 %i.0100.i.i, i32 5
  %109 = ptrtoint ptr %cookie_low.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %cookie_low.i.i, align 4
  %pa.i.i60 = getelementptr %struct.iavf_dma_mem, ptr %93, i32 %i.0100.i.i, i32 1
  %params.i.i = getelementptr %struct.iavf_aq_desc, ptr %97, i32 %i.0100.i.i, i32 6
  %addr_high.i.i = getelementptr inbounds %struct.anon.3, ptr %params.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %addr_high.i.i, align 4
  %111 = ptrtoint ptr %pa.i.i60 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pa.i.i60, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #6
  %addr_low.i.i = getelementptr inbounds %struct.anon.3, ptr %params.i.i, i32 0, i32 3
  %114 = ptrtoint ptr %addr_low.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %addr_low.i.i, align 4
  %115 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %params.i.i, align 4
  %param1.i.i = getelementptr inbounds %struct.anon.3, ptr %params.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %param1.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %param1.i.i, align 4
  %inc.i.i61 = add nuw nsw i32 %i.0100.i.i, 1
  %117 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %num_arq_entries, align 4
  %conv9.i.i62 = zext i16 %118 to i32
  %cmp.i.i63 = icmp ult i32 %inc.i.i61, %conv9.i.i62
  br i1 %cmp.i.i63, label %if.end19.i.i.for.body.i.i59_crit_edge, label %if.end19.i.i.if.end21.i76_crit_edge

if.end19.i.i.if.end21.i76_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i76

if.end19.i.i.for.body.i.i59_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i59

for.body44.i.i:                                   ; preds = %for.body44.i.i.for.body44.i.i_crit_edge, %for.cond41.preheader.i.i.for.body44.i.i_crit_edge
  %i.1103.in.i.i = phi i32 [ %i.1103.i.i, %for.body44.i.i.for.body44.i.i_crit_edge ], [ %i.0100.i.i, %for.cond41.preheader.i.i.for.body44.i.i_crit_edge ]
  %i.1103.i.i = add nsw i32 %i.1103.in.i.i, -1
  %119 = ptrtoint ptr %r.i.i53 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %r.i.i53, align 4
  %arrayidx48.i.i = getelementptr %struct.iavf_dma_mem, ptr %120, i32 %i.1103.i.i
  %call49.i.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx48.i.i) #6
  %cmp42.i.i = icmp sgt i32 %i.1103.in.i.i, 1
  br i1 %cmp42.i.i, label %for.body44.i.i.for.body44.i.i_crit_edge, label %for.body44.i.i.iavf_init_arq.exit_crit_edge

for.body44.i.i.iavf_init_arq.exit_crit_edge:      ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_init_arq.exit

for.body44.i.i.for.body44.i.i_crit_edge:          ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44.i.i

if.end21.i76:                                     ; preds = %if.end19.i.i.if.end21.i76_crit_edge, %if.end.i.i54.if.end21.i76_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %121 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw, align 4
  %123 = ptrtoint ptr %head13.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %head13.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %122, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i65, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %125 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw, align 4
  %127 = ptrtoint ptr %tail10.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tail10.i, align 4
  %add.ptr7.i.i67 = getelementptr i8, ptr %126, i32 %128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i67, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %129 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %num_arq_entries, align 4
  %conv.i50.i = zext i16 %130 to i32
  %or.i.i68 = or i32 %conv.i50.i, -2147483648
  %131 = tail call i32 @llvm.bswap.i32(i32 %or.i.i68) #6
  %132 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw, align 4
  %134 = ptrtoint ptr %len16.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len16.i, align 4
  %add.ptr15.i.i70 = getelementptr i8, ptr %133, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i70, i32 %131) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %pa.i51.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %pa.i51.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pa.i51.i, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #6
  %139 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw, align 4
  %141 = ptrtoint ptr %bal19.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bal19.i, align 4
  %add.ptr24.i.i72 = getelementptr i8, ptr %140, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i72, i32 %138) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw, align 4
  %145 = ptrtoint ptr %bah22.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %bah22.i, align 4
  %add.ptr36.i.i74 = getelementptr i8, ptr %144, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i74, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %147 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %num_arq_entries, align 4
  %conv42.i.i = zext i16 %148 to i32
  %sub.i.i = add nsw i32 %conv42.i.i, -1
  %149 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #6
  %150 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw, align 4
  %152 = ptrtoint ptr %tail10.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tail10.i, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %151, i32 %153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i.i, i32 %149) #6, !srcloc !70
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 4
  %156 = ptrtoint ptr %bal19.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bal19.i, align 4
  %add.ptr52.i.i = getelementptr i8, ptr %155, i32 %157
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i.i) #6, !srcloc !75
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %160 = ptrtoint ptr %pa.i51.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pa.i51.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %161)
  %cmp.not.i.i75 = icmp eq i32 %159, %161
  br i1 %cmp.not.i.i75, label %iavf_init_arq.exit.thread95, label %if.end21.i76.init_adminq_free_asq.sink.split_crit_edge

if.end21.i76.init_adminq_free_asq.sink.split_crit_edge: ; preds = %if.end21.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_adminq_free_asq.sink.split

iavf_init_arq.exit.thread95:                      ; preds = %if.end21.i76
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %num_arq_entries, align 4
  %164 = ptrtoint ptr %count.i34 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %count.i34, align 4
  br label %init_adminq_exit

iavf_init_arq.exit:                               ; preds = %for.body44.i.i.iavf_init_arq.exit_crit_edge, %for.cond41.preheader.i.i.iavf_init_arq.exit_crit_edge
  %call56.i.i = tail call i32 @iavf_free_virt_mem_d(ptr noundef %hw, ptr noundef %aq.i.i) #6
  br label %init_adminq_free_asq.sink.split

init_adminq_free_asq.sink.split:                  ; preds = %iavf_init_arq.exit, %if.end21.i76.init_adminq_free_asq.sink.split_crit_edge, %if.end17.i52.init_adminq_free_asq.sink.split_crit_edge
  %ret_code.1.i8194.ph = phi i32 [ %call16.i.i57, %iavf_init_arq.exit ], [ %call.i47.i50, %if.end17.i52.init_adminq_free_asq.sink.split_crit_edge ], [ -53, %if.end21.i76.init_adminq_free_asq.sink.split_crit_edge ]
  %call.i53.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i42) #6
  br label %init_adminq_free_asq

init_adminq_free_asq:                             ; preds = %init_adminq_free_asq.sink.split, %if.end11.i47.init_adminq_free_asq_crit_edge, %lor.lhs.false.i39.init_adminq_free_asq_crit_edge, %if.end.i37.init_adminq_free_asq_crit_edge, %iavf_init_asq.exit.thread84.init_adminq_free_asq_crit_edge
  %ret_code.1.i8194 = phi i32 [ -4, %if.end.i37.init_adminq_free_asq_crit_edge ], [ -4, %lor.lhs.false.i39.init_adminq_free_asq_crit_edge ], [ -63, %iavf_init_asq.exit.thread84.init_adminq_free_asq_crit_edge ], [ %call.i.i46, %if.end11.i47.init_adminq_free_asq_crit_edge ], [ %ret_code.1.i8194.ph, %init_adminq_free_asq.sink.split ]
  tail call fastcc void @iavf_shutdown_asq(ptr noundef %hw)
  br label %init_adminq_exit

init_adminq_exit:                                 ; preds = %init_adminq_free_asq, %iavf_init_arq.exit.thread95, %iavf_init_asq.exit, %iavf_init_asq.exit.thread88, %if.then11.i.i, %if.end11.i.init_adminq_exit_crit_edge, %if.end.init_adminq_exit_crit_edge, %lor.lhs.false11.init_adminq_exit_crit_edge, %lor.lhs.false6.init_adminq_exit_crit_edge, %lor.lhs.false.init_adminq_exit_crit_edge, %entry.init_adminq_exit_crit_edge
  %ret_code.0 = phi i32 [ %call16.i.i, %iavf_init_asq.exit ], [ %ret_code.1.i8194, %init_adminq_free_asq ], [ -4, %lor.lhs.false11.init_adminq_exit_crit_edge ], [ -4, %lor.lhs.false6.init_adminq_exit_crit_edge ], [ -4, %lor.lhs.false.init_adminq_exit_crit_edge ], [ -4, %entry.init_adminq_exit_crit_edge ], [ %ret_code.0.i.ph, %iavf_init_asq.exit.thread88 ], [ 0, %iavf_init_arq.exit.thread95 ], [ %call9.i.i, %if.then11.i.i ], [ %call.i.i, %if.end11.i.init_adminq_exit_crit_edge ], [ -63, %if.end.init_adminq_exit_crit_edge ]
  ret i32 %ret_code.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iavf_shutdown_asq(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asq_mutex = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 12
  tail call void @mutex_lock_nested(ptr noundef %asq_mutex, i32 noundef 0) #6
  %count = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.shutdown_asq_out_crit_edge, label %do.body

entry.shutdown_asq_out_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %shutdown_asq_out

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %head = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 8
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %tail = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 9
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %len = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 10
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %bal = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 12
  %16 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bal, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %bah = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 11
  %20 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bah, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #6, !srcloc !70
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count, align 4
  %num_asq_entries.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 4
  %23 = ptrtoint ptr %num_asq_entries.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_asq_entries.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp29.not.i = icmp eq i16 %24, 0
  br i1 %cmp29.not.i, label %do.body.iavf_free_asq_bufs.exit_crit_edge, label %for.body.lr.ph.i

do.body.iavf_free_asq_bufs.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_free_asq_bufs.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %r.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %r.i, align 4
  %pa.i = getelementptr %struct.iavf_dma_mem, ptr %26, i32 %i.030.i, i32 1
  %27 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.iavf_dma_mem, ptr %26, i32 %i.030.i
  %call.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %29 = ptrtoint ptr %num_asq_entries.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_asq_entries.i, align 2
  %conv.i = zext i16 %30 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iavf_free_asq_bufs.exit_crit_edge

for.inc.i.iavf_free_asq_bufs.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_free_asq_bufs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

iavf_free_asq_bufs.exit:                          ; preds = %for.inc.i.iavf_free_asq_bufs.exit_crit_edge, %do.body.iavf_free_asq_bufs.exit_crit_edge
  %asq8.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1
  %cmd_buf.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 2
  %call9.i = tail call i32 @iavf_free_virt_mem_d(ptr noundef %hw, ptr noundef %cmd_buf.i) #6
  %desc_buf.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 1
  %call12.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i) #6
  %call15.i = tail call i32 @iavf_free_virt_mem_d(ptr noundef %hw, ptr noundef %asq8.i) #6
  br label %shutdown_asq_out

shutdown_asq_out:                                 ; preds = %iavf_free_asq_bufs.exit, %entry.shutdown_asq_out_crit_edge
  tail call void @mutex_unlock(ptr noundef %asq_mutex) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_shutdown_adminq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @iavf_check_asq_alive(ptr noundef %hw) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @iavf_aq_queue_shutdown(ptr noundef %hw, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @iavf_shutdown_asq(ptr noundef %hw)
  %arq_mutex.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 13
  tail call void @mutex_lock_nested(ptr noundef %arq_mutex.i, i32 noundef 0) #6
  %count.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  br i1 %cmp.i, label %if.end.iavf_shutdown_arq.exit_crit_edge, label %do.body.i

if.end.iavf_shutdown_arq.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_shutdown_arq.exit

do.body.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %head.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 8
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %tail.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 9
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %len.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 10
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %bal.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 12
  %16 = ptrtoint ptr %bal.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bal.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %bah.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 11
  %20 = ptrtoint ptr %bah.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bah.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 0) #6, !srcloc !70
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count.i, align 4
  %num_arq_entries.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %num_arq_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_arq_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp18.not.i.i = icmp eq i16 %24, 0
  br i1 %cmp18.not.i.i, label %do.body.i.iavf_free_arq_bufs.exit.i_crit_edge, label %for.body.lr.ph.i.i

do.body.i.iavf_free_arq_bufs.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_free_arq_bufs.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.body.i
  %r.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %25 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %r.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iavf_dma_mem, ptr %26, i32 %i.019.i.i
  %call.i.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %arrayidx.i.i) #6
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %27 = ptrtoint ptr %num_arq_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_arq_entries.i.i, align 4
  %conv.i.i = zext i16 %28 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.iavf_free_arq_bufs.exit.i_crit_edge

for.body.i.i.iavf_free_arq_bufs.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_free_arq_bufs.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

iavf_free_arq_bufs.exit.i:                        ; preds = %for.body.i.i.iavf_free_arq_bufs.exit.i_crit_edge, %do.body.i.iavf_free_arq_bufs.exit.i_crit_edge
  %aq.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10
  %desc_buf.i.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 1
  %call5.i.i = tail call i32 @iavf_free_dma_mem_d(ptr noundef %hw, ptr noundef %desc_buf.i.i) #6
  %call8.i.i = tail call i32 @iavf_free_virt_mem_d(ptr noundef %hw, ptr noundef %aq.i.i) #6
  br label %iavf_shutdown_arq.exit

iavf_shutdown_arq.exit:                           ; preds = %iavf_free_arq_bufs.exit.i, %if.end.iavf_shutdown_arq.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %arq_mutex.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iavf_check_asq_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_aq_queue_shutdown(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iavf_asq_done(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %head = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 8
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !75
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %next_to_use = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 6
  %6 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_to_use, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef %desc, ptr noundef %buff, i16 noundef zeroext %buff_size, ptr noundef readonly %cmd_details) local_unnamed_addr #0 align 64 {
entry:
  %desc_cb.i = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asq_mutex = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 12
  tail call void @mutex_lock_nested(ptr noundef %asq_mutex, i32 noundef 0) #6
  %count = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.asq_send_command_error_crit_edge, label %do.end

do.body.asq_send_command_error_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus_id, align 2
  %conv6 = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv8 = zext i16 %7 to i32
  %func = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %func, align 4
  %conv10 = zext i16 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10) #9
  br label %asq_send_command_error

if.end13:                                         ; preds = %entry
  %asq_last_status = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 14
  %10 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %asq_last_status, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %head = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 8
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !75
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %num_asq_entries = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 4
  %17 = ptrtoint ptr %num_asq_entries to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_asq_entries, align 2
  %conv21 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv21)
  %cmp22.not = icmp ult i32 %16, %conv21
  br i1 %cmp22.not, label %if.end47, label %do.body25

do.body25:                                        ; preds = %if.end13
  %debug_mask26 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %19 = ptrtoint ptr %debug_mask26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask26, align 4
  %and27 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body25.asq_send_command_error_crit_edge, label %do.end32

do.body25.asq_send_command_error_crit_edge:       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

do.end32:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id35 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %bus_id35 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bus_id35, align 2
  %conv36 = zext i16 %22 to i32
  %device38 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %device38 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device38, align 2
  %conv39 = zext i16 %24 to i32
  %func41 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %func41 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %func41, align 4
  %conv42 = zext i16 %26 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv36, i32 noundef %conv39, i32 noundef %conv42, i32 noundef %16) #9
  br label %asq_send_command_error

if.end47:                                         ; preds = %if.end13
  %cmd_buf = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 2
  %27 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd_buf, align 4
  %next_to_use = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 6
  %29 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %next_to_use, align 4
  %idxprom = zext i16 %30 to i32
  %arrayidx = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom
  %tobool52.not = icmp eq ptr %cmd_details, null
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end47
  %31 = call ptr @memcpy(ptr %arrayidx, ptr %cmd_details, i32 32)
  %cookie = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom, i32 1
  %32 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool54.not = icmp eq i64 %33, 0
  br i1 %tobool54.not, label %if.then53.if.end63_crit_edge, label %if.then55

if.then53.if.end63_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then55:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i64 %33, 32
  %conv58 = trunc i64 %shr to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv58)
  %cookie_high = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 4
  %35 = ptrtoint ptr %cookie_high to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cookie_high, align 4
  %36 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cookie, align 8
  %conv61 = trunc i64 %37 to i32
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv61)
  %cookie_low = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 5
  %39 = ptrtoint ptr %cookie_low to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cookie_low, align 4
  br label %if.end63

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %40 = call ptr @memset(ptr %arrayidx, i32 0, i32 32)
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then55, %if.then53.if.end63_crit_edge
  %flags_dis = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom, i32 3
  %41 = ptrtoint ptr %flags_dis to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags_dis, align 2
  %43 = xor i16 %42, -1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %desc, align 4
  %and66 = and i16 %46, %44
  store i16 %and66, ptr %desc, align 4
  %flags_ena = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom, i32 2
  %47 = ptrtoint ptr %flags_ena to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags_ena, align 8
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %or524 = or i16 %49, %and66
  %50 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or524, ptr %desc, align 4
  %conv72 = zext i16 %buff_size to i32
  %asq_buf_size = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 6
  %51 = ptrtoint ptr %asq_buf_size to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %asq_buf_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %buff_size)
  %cmp75 = icmp ult i16 %52, %buff_size
  br i1 %cmp75, label %do.body78, label %if.end101

do.body78:                                        ; preds = %if.end63
  %debug_mask79 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %53 = ptrtoint ptr %debug_mask79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_mask79, align 4
  %and80 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body78.asq_send_command_error_crit_edge, label %do.end85

do.body78.asq_send_command_error_crit_edge:       ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

do.end85:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id88 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %55 = ptrtoint ptr %bus_id88 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bus_id88, align 2
  %conv89 = zext i16 %56 to i32
  %device91 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %device91 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %device91, align 2
  %conv92 = zext i16 %58 to i32
  %func94 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %func94 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %func94, align 4
  %conv95 = zext i16 %60 to i32
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv89, i32 noundef %conv92, i32 noundef %conv95, i32 noundef %conv72) #9
  br label %asq_send_command_error

if.end101:                                        ; preds = %if.end63
  %postpone = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom, i32 5
  %61 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %postpone, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool102.not = icmp eq i8 %62, 0
  br i1 %tobool102.not, label %if.end101.if.end128_crit_edge, label %land.lhs.true

if.end101.if.end128_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

land.lhs.true:                                    ; preds = %if.end101
  %async = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom, i32 4
  %63 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %async, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool104.not = icmp eq i8 %64, 0
  br i1 %tobool104.not, label %do.body106, label %land.lhs.true.if.end128_crit_edge

land.lhs.true.if.end128_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

do.body106:                                       ; preds = %land.lhs.true
  %debug_mask107 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %65 = ptrtoint ptr %debug_mask107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug_mask107, align 4
  %and108 = and i32 %66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body106.asq_send_command_error_crit_edge, label %do.end113

do.body106.asq_send_command_error_crit_edge:      ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

do.end113:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id116 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %67 = ptrtoint ptr %bus_id116 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bus_id116, align 2
  %conv117 = zext i16 %68 to i32
  %device119 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %69 = ptrtoint ptr %device119 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %device119, align 2
  %conv120 = zext i16 %70 to i32
  %func122 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %71 = ptrtoint ptr %func122 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %func122, align 4
  %conv123 = zext i16 %72 to i32
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv117, i32 noundef %conv120, i32 noundef %conv123) #9
  br label %asq_send_command_error

if.end128:                                        ; preds = %land.lhs.true.if.end128_crit_edge, %if.end101.if.end128_crit_edge
  %next_to_clean.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 7
  %73 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %next_to_clean.i, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_cb.i) #6
  %desc_buf.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 1
  %75 = call ptr @memset(ptr %desc_cb.i, i32 255, i32 32)
  %76 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc_buf.i, align 4
  %78 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cmd_buf, align 4
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %82 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %head, align 4
  %add.ptr93.i = getelementptr i8, ptr %81, i32 %83
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #6, !srcloc !75
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %conv94.i = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv94.i)
  %cmp.not95.i = icmp eq i32 %85, %conv94.i
  br i1 %cmp.not95.i, label %if.end128.while.end.i_crit_edge, label %do.body.lr.ph.i

if.end128.while.end.i_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.body.lr.ph.i:                                  ; preds = %if.end128
  %arrayidx4.i = getelementptr %struct.iavf_asq_cmd_details, ptr %79, i32 %conv94.i
  %arrayidx.i = getelementptr %struct.iavf_aq_desc, ptr %77, i32 %conv94.i
  %debug_mask.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %bus_id.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %device.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %func.i = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end33.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %conv99.i = phi i32 [ %conv94.i, %do.body.lr.ph.i ], [ %idxprom42.i, %if.end33.i.do.body.i_crit_edge ]
  %details.098.i = phi ptr [ %arrayidx4.i, %do.body.lr.ph.i ], [ %arrayidx47.i, %if.end33.i.do.body.i_crit_edge ]
  %ntc.097.i = phi i16 [ %74, %do.body.lr.ph.i ], [ %spec.store.select.i, %if.end33.i.do.body.i_crit_edge ]
  %desc.096.i = phi ptr [ %arrayidx.i, %do.body.lr.ph.i ], [ %arrayidx43.i, %if.end33.i.do.body.i_crit_edge ]
  %86 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %87, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end29.i_crit_edge, label %do.end.i

do.body.i.do.end29.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %bus_id.i, align 2
  %conv11.i = zext i16 %89 to i32
  %90 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %device.i, align 2
  %conv13.i = zext i16 %91 to i32
  %92 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %func.i, align 4
  %conv15.i = zext i16 %93 to i32
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 4
  %96 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %head, align 4
  %add.ptr23.i = getelementptr i8, ptr %95, i32 %97
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #6, !srcloc !75
  %99 = call i32 @llvm.bswap.i32(i32 %98) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i, i32 noundef %conv99.i, i32 noundef %99) #9
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end.i, %do.body.i.do.end29.i_crit_edge
  %100 = ptrtoint ptr %details.098.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %details.098.i, align 8
  %tobool30.not.i = icmp eq ptr %101, null
  br i1 %tobool30.not.i, label %do.end29.i.if.end33.i_crit_edge, label %if.then31.i

do.end29.i.if.end33.i_crit_edge:                  ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then31.i:                                      ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = call ptr @memcpy(ptr %desc_cb.i, ptr %desc.096.i, i32 32)
  call void %101(ptr noundef %hw, ptr noundef nonnull %desc_cb.i) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %do.end29.i.if.end33.i_crit_edge
  %103 = call ptr @memset(ptr %desc.096.i, i32 0, i32 32)
  %104 = call ptr @memset(ptr %details.098.i, i32 0, i32 32)
  %inc.i = add i16 %ntc.097.i, 1
  %105 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %106)
  %cmp36.i = icmp eq i16 %inc.i, %106
  %spec.store.select.i = select i1 %cmp36.i, i16 0, i16 %inc.i
  %107 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %desc_buf.i, align 4
  %idxprom42.i = zext i16 %spec.store.select.i to i32
  %arrayidx43.i = getelementptr %struct.iavf_aq_desc, ptr %108, i32 %idxprom42.i
  %109 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cmd_buf, align 4
  %arrayidx47.i = getelementptr %struct.iavf_asq_cmd_details, ptr %110, i32 %idxprom42.i
  %111 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw, align 4
  %113 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %head, align 4
  %add.ptr.i = getelementptr i8, ptr %112, i32 %114
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !75
  %116 = call i32 @llvm.bswap.i32(i32 %115) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %cmp.not.i = icmp eq i32 %116, %idxprom42.i
  br i1 %cmp.not.i, label %if.end33.i.while.end.i_crit_edge, label %if.end33.i.do.body.i_crit_edge

if.end33.i.do.body.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end33.i.while.end.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end33.i.while.end.i_crit_edge, %if.end128.while.end.i_crit_edge
  %ntc.0.lcssa.i = phi i16 [ %74, %if.end128.while.end.i_crit_edge ], [ %spec.store.select.i, %if.end33.i.while.end.i_crit_edge ]
  %117 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %ntc.0.lcssa.i, ptr %next_to_clean.i, align 2
  %118 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %ntc.0.lcssa.i, i16 %119)
  %cmp52.i = icmp ugt i16 %ntc.0.lcssa.i, %119
  br i1 %cmp52.i, label %while.end.i.iavf_clean_asq.exit_crit_edge, label %cond.false.i

while.end.i.iavf_clean_asq.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iavf_clean_asq.exit

cond.false.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %count, align 4
  br label %iavf_clean_asq.exit

iavf_clean_asq.exit:                              ; preds = %cond.false.i, %while.end.i.iavf_clean_asq.exit_crit_edge
  %cond.i = phi i16 [ %121, %cond.false.i ], [ 0, %while.end.i.iavf_clean_asq.exit_crit_edge ]
  %122 = xor i16 %119, -1
  %add.i = add i16 %ntc.0.lcssa.i, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_cb.i) #6
  %sub60.i = sub i16 0, %cond.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %sub60.i)
  %cmp131 = icmp eq i16 %add.i, %sub60.i
  br i1 %cmp131, label %do.body134, label %if.end156

do.body134:                                       ; preds = %iavf_clean_asq.exit
  %debug_mask135 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %123 = ptrtoint ptr %debug_mask135 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %debug_mask135, align 4
  %and136 = and i32 %124, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.body134.asq_send_command_error_crit_edge, label %do.end141

do.body134.asq_send_command_error_crit_edge:      ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

do.end141:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id144 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %125 = ptrtoint ptr %bus_id144 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %bus_id144, align 2
  %conv145 = zext i16 %126 to i32
  %device147 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %127 = ptrtoint ptr %device147 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %device147, align 2
  %conv148 = zext i16 %128 to i32
  %func150 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %129 = ptrtoint ptr %func150 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %func150, align 4
  %conv151 = zext i16 %130 to i32
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv145, i32 noundef %conv148, i32 noundef %conv151) #9
  br label %asq_send_command_error

if.end156:                                        ; preds = %iavf_clean_asq.exit
  %131 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %desc_buf.i, align 4
  %idxprom163 = zext i16 %119 to i32
  %arrayidx164 = getelementptr %struct.iavf_aq_desc, ptr %132, i32 %idxprom163
  %133 = call ptr @memcpy(ptr %arrayidx164, ptr %desc, i32 32)
  %tobool165.not = icmp eq ptr %buff, null
  br i1 %tobool165.not, label %if.end156.do.body182_crit_edge, label %if.then166

if.end156.do.body182_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body182

if.then166:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  %r = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 3
  %134 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %r, align 4
  %136 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %next_to_use, align 4
  %idxprom172 = zext i16 %137 to i32
  %arrayidx173 = getelementptr %struct.iavf_dma_mem, ptr %135, i32 %idxprom172
  %138 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx173, align 4
  %140 = call ptr @memcpy(ptr %139, ptr %buff, i32 %conv72)
  %141 = call i16 @llvm.bswap.i16(i16 %buff_size)
  %datalen = getelementptr %struct.iavf_aq_desc, ptr %132, i32 %idxprom163, i32 2
  %142 = ptrtoint ptr %datalen to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %datalen, align 4
  %pa = getelementptr %struct.iavf_dma_mem, ptr %135, i32 %idxprom172, i32 1
  %params = getelementptr %struct.iavf_aq_desc, ptr %132, i32 %idxprom163, i32 6
  %addr_high = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 2
  %143 = ptrtoint ptr %addr_high to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %addr_high, align 4
  %144 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pa, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145)
  %addr_low = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 3
  %147 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %addr_low, align 4
  br label %do.body182

do.body182:                                       ; preds = %if.then166, %if.end156.do.body182_crit_edge
  %dma_buff.0 = phi ptr [ %arrayidx173, %if.then166 ], [ null, %if.end156.do.body182_crit_edge ]
  %debug_mask183 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %148 = ptrtoint ptr %debug_mask183 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %debug_mask183, align 4
  %and184 = and i32 %149, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %do.body182.do.end203_crit_edge, label %do.end189

do.body182.do.end203_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end203

do.end189:                                        ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id192 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %150 = ptrtoint ptr %bus_id192 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %bus_id192, align 2
  %conv193 = zext i16 %151 to i32
  %device195 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %152 = ptrtoint ptr %device195 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %device195, align 2
  %conv196 = zext i16 %153 to i32
  %func198 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %154 = ptrtoint ptr %func198 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %func198, align 4
  %conv199 = zext i16 %155 to i32
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv193, i32 noundef %conv196, i32 noundef %conv199) #9
  br label %do.end203

do.end203:                                        ; preds = %do.end189, %do.body182.do.end203_crit_edge
  call void @iavf_debug_aq(ptr noundef %hw, i32 noundef 100663296, ptr noundef %arrayidx164, ptr noundef %buff, i16 noundef zeroext %buff_size) #6
  %156 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %next_to_use, align 4
  %inc = add i16 %157, 1
  %158 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %159)
  %cmp215 = icmp eq i16 %inc, %159
  %spec.store.select = select i1 %cmp215, i16 0, i16 %inc
  %160 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %spec.store.select, ptr %next_to_use, align 4
  %161 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %postpone, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool223.not = icmp eq i8 %162, 0
  br i1 %tobool223.not, label %do.body225, label %do.end203.if.end236_crit_edge

do.end203.if.end236_crit_edge:                    ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end236

do.body225:                                       ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  call void @arm_heavy_mb() #6
  %163 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %next_to_use, align 4
  %conv231 = zext i16 %164 to i32
  %165 = call i32 @llvm.bswap.i32(i32 %conv231)
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw, align 4
  %tail = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 9
  %168 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tail, align 4
  %add.ptr235 = getelementptr i8, ptr %167, i32 %169
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 %165) #6, !srcloc !70
  br label %if.end236

if.end236:                                        ; preds = %do.body225, %do.end203.if.end236_crit_edge
  %async237 = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom, i32 4
  %170 = ptrtoint ptr %async237 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %async237, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool238.not = icmp eq i8 %171, 0
  br i1 %tobool238.not, label %land.lhs.true239, label %if.end236.if.end252_crit_edge

if.end236.if.end252_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

land.lhs.true239:                                 ; preds = %if.end236
  %172 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %postpone, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool241.not = icmp eq i8 %173, 0
  br i1 %tobool241.not, label %do.body243.preheader, label %land.lhs.true239.if.end252_crit_edge

land.lhs.true239.if.end252_crit_edge:             ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

do.body243.preheader:                             ; preds = %land.lhs.true239
  %asq_cmd_timeout = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 2
  br label %do.body243

do.body243:                                       ; preds = %if.end246.do.body243_crit_edge, %do.body243.preheader
  %total_delay.0 = phi i32 [ %add, %if.end246.do.body243_crit_edge ], [ 0, %do.body243.preheader ]
  %174 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw, align 4
  %176 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %head, align 4
  %add.ptr.i528 = getelementptr i8, ptr %175, i32 %177
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i528) #6, !srcloc !75
  %179 = call i32 @llvm.bswap.i32(i32 %178) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %180 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %next_to_use, align 4
  %conv.i = zext i16 %181 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %conv.i)
  %cmp.i = icmp eq i32 %179, %conv.i
  br i1 %cmp.i, label %do.body243.if.end252_crit_edge, label %if.end246

do.body243.if.end252_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.end246:                                        ; preds = %do.body243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %182(i32 noundef 10737400) #6
  %add = add i32 %total_delay.0, 50
  %183 = ptrtoint ptr %asq_cmd_timeout to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %asq_cmd_timeout, align 4
  %cmp249 = icmp ult i32 %add, %184
  br i1 %cmp249, label %if.end246.do.body243_crit_edge, label %if.end246.if.end252_crit_edge

if.end246.if.end252_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.end246.do.body243_crit_edge:                   ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body243

if.end252:                                        ; preds = %if.end246.if.end252_crit_edge, %do.body243.if.end252_crit_edge, %land.lhs.true239.if.end252_crit_edge, %if.end236.if.end252_crit_edge
  %185 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw, align 4
  %187 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %head, align 4
  %add.ptr.i531 = getelementptr i8, ptr %186, i32 %188
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i531) #6, !srcloc !75
  %190 = call i32 @llvm.bswap.i32(i32 %189) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %191 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %next_to_use, align 4
  %conv.i533 = zext i16 %192 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %conv.i533)
  %cmp.i534 = icmp eq i32 %190, %conv.i533
  br i1 %cmp.i534, label %if.then254, label %if.end252.do.body308_crit_edge

if.end252.do.body308_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body308

if.then254:                                       ; preds = %if.end252
  %193 = call ptr @memcpy(ptr %desc, ptr %arrayidx164, i32 32)
  br i1 %tobool165.not, label %if.then254.if.end259_crit_edge, label %if.then256

if.then254.if.end259_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end259

if.then256:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #8
  %194 = ptrtoint ptr %dma_buff.0 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dma_buff.0, align 4
  %196 = call ptr @memcpy(ptr %buff, ptr %195, i32 %conv72)
  br label %if.end259

if.end259:                                        ; preds = %if.then256, %if.then254.if.end259_crit_edge
  %retval260 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 3
  %197 = ptrtoint ptr %retval260 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %retval260, align 2
  %199 = call i16 @llvm.bswap.i16(i16 %198)
  %conv261 = zext i16 %199 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %cmp262.not = icmp eq i16 %198, 0
  br i1 %cmp262.not, label %if.end259.if.end291_crit_edge, label %do.body265

if.end259.if.end291_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end291

do.body265:                                       ; preds = %if.end259
  %200 = ptrtoint ptr %debug_mask183 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %debug_mask183, align 4
  %and267 = and i32 %201, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %do.body265.do.end287_crit_edge, label %do.end272

do.body265.do.end287_crit_edge:                   ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end287

do.end272:                                        ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id275 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %202 = ptrtoint ptr %bus_id275 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %bus_id275, align 2
  %conv276 = zext i16 %203 to i32
  %device278 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %204 = ptrtoint ptr %device278 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %device278, align 2
  %conv279 = zext i16 %205 to i32
  %func281 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %206 = ptrtoint ptr %func281 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %func281, align 4
  %conv282 = zext i16 %207 to i32
  %call284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv276, i32 noundef %conv279, i32 noundef %conv282, i32 noundef %conv261) #9
  br label %do.end287

do.end287:                                        ; preds = %do.end272, %do.body265.do.end287_crit_edge
  %and289 = and i16 %199, 255
  %.pre = zext i16 %and289 to i32
  br label %if.end291

if.end291:                                        ; preds = %do.end287, %if.end259.if.end291_crit_edge
  %conv292.pre-phi = phi i32 [ %.pre, %do.end287 ], [ %conv261, %if.end259.if.end291_crit_edge ]
  %retval1.0 = phi i16 [ %and289, %do.end287 ], [ %199, %if.end259.if.end291_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %retval1.0)
  %switch.selectcmp = icmp eq i16 %retval1.0, 12
  %switch.select = select i1 %switch.selectcmp, i32 -63, i32 -53
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval1.0)
  %switch.selectcmp525 = icmp eq i16 %retval1.0, 0
  %switch.select526 = select i1 %switch.selectcmp525, i32 0, i32 %switch.select
  %208 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv292.pre-phi, ptr %asq_last_status, align 4
  br label %do.body308

do.body308:                                       ; preds = %if.end291, %if.end252.do.body308_crit_edge
  %status.1 = phi i32 [ %switch.select526, %if.end291 ], [ 0, %if.end252.do.body308_crit_edge ]
  %209 = ptrtoint ptr %debug_mask183 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %debug_mask183, align 4
  %and310 = and i32 %210, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and310)
  %tobool311.not = icmp eq i32 %and310, 0
  br i1 %tobool311.not, label %do.body308.do.end329_crit_edge, label %do.end315

do.body308.do.end329_crit_edge:                   ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end329

do.end315:                                        ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id318 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %211 = ptrtoint ptr %bus_id318 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %bus_id318, align 2
  %conv319 = zext i16 %212 to i32
  %device321 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %213 = ptrtoint ptr %device321 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %device321, align 2
  %conv322 = zext i16 %214 to i32
  %func324 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %215 = ptrtoint ptr %func324 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %func324, align 4
  %conv325 = zext i16 %216 to i32
  %call326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv319, i32 noundef %conv322, i32 noundef %conv325) #9
  br label %do.end329

do.end329:                                        ; preds = %do.end315, %do.body308.do.end329_crit_edge
  call void @iavf_debug_aq(ptr noundef %hw, i32 noundef 100663296, ptr noundef %desc, ptr noundef %buff, i16 noundef zeroext %buff_size) #6
  %wb_desc = getelementptr %struct.iavf_asq_cmd_details, ptr %28, i32 %idxprom, i32 6
  %217 = ptrtoint ptr %wb_desc to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %wb_desc, align 8
  %tobool330.not = icmp eq ptr %218, null
  br i1 %tobool330.not, label %do.end329.if.end333_crit_edge, label %if.then331

do.end329.if.end333_crit_edge:                    ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end333

if.then331:                                       ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  %219 = call ptr @memcpy(ptr %218, ptr %arrayidx164, i32 32)
  br label %if.end333

if.end333:                                        ; preds = %if.then331, %do.end329.if.end333_crit_edge
  br i1 %cmp.i534, label %if.end333.asq_send_command_error_crit_edge, label %land.lhs.true335

if.end333.asq_send_command_error_crit_edge:       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

land.lhs.true335:                                 ; preds = %if.end333
  %220 = ptrtoint ptr %async237 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %async237, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool337.not = icmp eq i8 %221, 0
  br i1 %tobool337.not, label %land.lhs.true338, label %land.lhs.true335.asq_send_command_error_crit_edge

land.lhs.true335.asq_send_command_error_crit_edge: ; preds = %land.lhs.true335
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

land.lhs.true338:                                 ; preds = %land.lhs.true335
  %222 = ptrtoint ptr %postpone to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %postpone, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool340.not = icmp eq i8 %223, 0
  br i1 %tobool340.not, label %if.then341, label %land.lhs.true338.asq_send_command_error_crit_edge

land.lhs.true338.asq_send_command_error_crit_edge: ; preds = %land.lhs.true338
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

if.then341:                                       ; preds = %land.lhs.true338
  %224 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hw, align 4
  %len = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 10
  %226 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len, align 4
  %add.ptr347 = getelementptr i8, ptr %225, i32 %227
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr347) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %229 = and i32 %228, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool352.not = icmp eq i32 %229, 0
  %230 = ptrtoint ptr %debug_mask183 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %debug_mask183, align 4
  %and379 = and i32 %231, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and379)
  %tobool380.not = icmp eq i32 %and379, 0
  br i1 %tobool352.not, label %do.body377, label %do.body354

do.body354:                                       ; preds = %if.then341
  br i1 %tobool380.not, label %do.body354.asq_send_command_error_crit_edge, label %do.end361

do.body354.asq_send_command_error_crit_edge:      ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

do.end361:                                        ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id364 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %232 = ptrtoint ptr %bus_id364 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %bus_id364, align 2
  %conv365 = zext i16 %233 to i32
  %device367 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %234 = ptrtoint ptr %device367 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %device367, align 2
  %conv368 = zext i16 %235 to i32
  %func370 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %236 = ptrtoint ptr %func370 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %func370, align 4
  %conv371 = zext i16 %237 to i32
  %call372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv365, i32 noundef %conv368, i32 noundef %conv371) #9
  br label %asq_send_command_error

do.body377:                                       ; preds = %if.then341
  br i1 %tobool380.not, label %do.body377.asq_send_command_error_crit_edge, label %do.end384

do.body377.asq_send_command_error_crit_edge:      ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #8
  br label %asq_send_command_error

do.end384:                                        ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id387 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %238 = ptrtoint ptr %bus_id387 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %bus_id387, align 2
  %conv388 = zext i16 %239 to i32
  %device390 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %240 = ptrtoint ptr %device390 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %device390, align 2
  %conv391 = zext i16 %241 to i32
  %func393 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %242 = ptrtoint ptr %func393 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %func393, align 4
  %conv394 = zext i16 %243 to i32
  %call395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv388, i32 noundef %conv391, i32 noundef %conv394) #9
  br label %asq_send_command_error

asq_send_command_error:                           ; preds = %do.end384, %do.body377.asq_send_command_error_crit_edge, %do.end361, %do.body354.asq_send_command_error_crit_edge, %land.lhs.true338.asq_send_command_error_crit_edge, %land.lhs.true335.asq_send_command_error_crit_edge, %if.end333.asq_send_command_error_crit_edge, %do.end141, %do.body134.asq_send_command_error_crit_edge, %do.end113, %do.body106.asq_send_command_error_crit_edge, %do.end85, %do.body78.asq_send_command_error_crit_edge, %do.end32, %do.body25.asq_send_command_error_crit_edge, %do.end, %do.body.asq_send_command_error_crit_edge
  %status.2 = phi i32 [ %status.1, %if.end333.asq_send_command_error_crit_edge ], [ %status.1, %land.lhs.true335.asq_send_command_error_crit_edge ], [ %status.1, %land.lhs.true338.asq_send_command_error_crit_edge ], [ -32, %do.end ], [ -32, %do.body.asq_send_command_error_crit_edge ], [ -32, %do.end32 ], [ -32, %do.body25.asq_send_command_error_crit_edge ], [ -26, %do.end85 ], [ -26, %do.body78.asq_send_command_error_crit_edge ], [ -5, %do.end113 ], [ -5, %do.body106.asq_send_command_error_crit_edge ], [ -56, %do.end141 ], [ -56, %do.body134.asq_send_command_error_crit_edge ], [ -66, %do.end361 ], [ -66, %do.body354.asq_send_command_error_crit_edge ], [ -54, %do.end384 ], [ -54, %do.body377.asq_send_command_error_crit_edge ]
  call void @mutex_unlock(ptr noundef %asq_mutex) #6
  ret i32 %status.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_debug_aq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iavf_fill_default_direct_cmd_desc(ptr nocapture noundef writeonly %desc, i16 noundef zeroext %opcode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = tail call i16 @llvm.bswap.i16(i16 %opcode)
  %opcode1 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %opcode1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %opcode1, align 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 32, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_clean_arq_element(ptr noundef %hw, ptr nocapture noundef %e, ptr noundef writeonly %pending) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 7
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %2 = call ptr @memset(ptr %e, i32 0, i32 32)
  %arq_mutex = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 13
  tail call void @mutex_lock_nested(ptr noundef %arq_mutex, i32 noundef 0) #6
  %count = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 4
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.clean_arq_element_err_crit_edge, label %do.end

do.body.clean_arq_element_err_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_arq_element_err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bus_id, align 2
  %conv8 = zext i16 %8 to i32
  %device = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %conv10 = zext i16 %10 to i32
  %func = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %func, align 4
  %conv12 = zext i16 %12 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #9
  br label %clean_arq_element_err

if.end15:                                         ; preds = %entry
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %head = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 8
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %18 = and i32 %17, -16580608
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv22 = trunc i32 %19 to i16
  %conv24 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv24)
  %cmp25 = icmp eq i32 %19, %conv24
  br i1 %cmp25, label %if.end15.clean_arq_element_out_crit_edge, label %if.end28

if.end15.clean_arq_element_out_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_arq_element_out

if.end28:                                         ; preds = %if.end15
  %desc_buf = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 1
  %20 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_buf, align 4
  %arrayidx = getelementptr %struct.iavf_aq_desc, ptr %21, i32 %conv24
  %retval31 = getelementptr %struct.iavf_aq_desc, ptr %21, i32 %conv24, i32 3
  %22 = ptrtoint ptr %retval31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %retval31, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv32 = zext i16 %24 to i32
  %arq_last_status = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 15
  %25 = ptrtoint ptr %arq_last_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv32, ptr %arq_last_status, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 4
  %28 = and i16 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool37.not = icmp eq i16 %28, 0
  br i1 %tobool37.not, label %if.end28.if.end63_crit_edge, label %if.then38

if.end28.if.end63_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then38:                                        ; preds = %if.end28
  %debug_mask40 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %29 = ptrtoint ptr %debug_mask40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_mask40, align 4
  %and41 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then38.if.end63_crit_edge, label %do.end46

if.then38.if.end63_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id49 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %bus_id49 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bus_id49, align 2
  %conv50 = zext i16 %32 to i32
  %device52 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %device52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device52, align 2
  %conv53 = zext i16 %34 to i32
  %func55 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %func55 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %func55, align 4
  %conv56 = zext i16 %36 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv50, i32 noundef %conv53, i32 noundef %conv56, i32 noundef %conv32) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end46, %if.then38.if.end63_crit_edge, %if.end28.if.end63_crit_edge
  %ret_code.0 = phi i32 [ -53, %do.end46 ], [ -53, %if.then38.if.end63_crit_edge ], [ 0, %if.end28.if.end63_crit_edge ]
  %37 = call ptr @memcpy(ptr %e, ptr %arrayidx, i32 32)
  %datalen65 = getelementptr %struct.iavf_aq_desc, ptr %21, i32 %conv24, i32 2
  %38 = ptrtoint ptr %datalen65 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %datalen65, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %buf_len = getelementptr inbounds %struct.iavf_arq_event_info, ptr %e, i32 0, i32 2
  %41 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %buf_len, align 2
  %43 = tail call i16 @llvm.umin.i16(i16 %40, i16 %42)
  %msg_len = getelementptr inbounds %struct.iavf_arq_event_info, ptr %e, i32 0, i32 1
  %44 = ptrtoint ptr %msg_len to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %msg_len, align 4
  %msg_buf = getelementptr inbounds %struct.iavf_arq_event_info, ptr %e, i32 0, i32 3
  %45 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %msg_buf, align 4
  %tobool74.not = icmp eq ptr %46, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp77.not = icmp eq i16 %43, 0
  %or.cond = select i1 %tobool74.not, i1 true, i1 %cmp77.not
  br i1 %or.cond, label %if.end63.do.body89_crit_edge, label %if.then79

if.end63.do.body89_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

if.then79:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %conv76 = zext i16 %43 to i32
  %r = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 3
  %47 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %r, align 4
  %arrayidx84 = getelementptr %struct.iavf_dma_mem, ptr %48, i32 %conv24
  %49 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx84, align 4
  %51 = call ptr @memcpy(ptr %46, ptr %50, i32 %conv76)
  br label %do.body89

do.body89:                                        ; preds = %if.then79, %if.end63.do.body89_crit_edge
  %debug_mask90 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %52 = ptrtoint ptr %debug_mask90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_mask90, align 4
  %and91 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body89.do.end110_crit_edge, label %do.end96

do.body89.do.end110_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end110

do.end96:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  %bus_id99 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %54 = ptrtoint ptr %bus_id99 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %bus_id99, align 2
  %conv100 = zext i16 %55 to i32
  %device102 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %device102 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %device102, align 2
  %conv103 = zext i16 %57 to i32
  %func105 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %func105 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %func105, align 4
  %conv106 = zext i16 %59 to i32
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv100, i32 noundef %conv103, i32 noundef %conv106) #9
  br label %do.end110

do.end110:                                        ; preds = %do.end96, %do.body89.do.end110_crit_edge
  %60 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg_buf, align 4
  %arq_buf_size = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 5
  %62 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arq_buf_size, align 4
  tail call void @iavf_debug_aq(ptr noundef %hw, i32 noundef 100663296, ptr noundef %arrayidx, ptr noundef %61, i16 noundef zeroext %63) #6
  %r115 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 3
  %64 = ptrtoint ptr %r115 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %r115, align 4
  %66 = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %67 = call ptr @memset(ptr %66, i32 0, i32 30)
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 16, ptr %arrayidx, align 4
  %69 = ptrtoint ptr %arq_buf_size to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %70)
  %cmp122 = icmp ugt i16 %70, 512
  %spec.store.select241 = select i1 %cmp122, i16 18, i16 16
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %spec.store.select241, ptr %arrayidx, align 4
  %size = getelementptr %struct.iavf_dma_mem, ptr %65, i32 %conv24, i32 2
  %72 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size, align 4
  %conv129 = trunc i32 %73 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv129)
  %75 = ptrtoint ptr %datalen65 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %datalen65, align 4
  %pa = getelementptr %struct.iavf_dma_mem, ptr %65, i32 %conv24, i32 1
  %params = getelementptr %struct.iavf_aq_desc, ptr %21, i32 %conv24, i32 6
  %addr_high = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 2
  %76 = ptrtoint ptr %addr_high to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %addr_high, align 4
  %77 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pa, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %addr_low = getelementptr inbounds %struct.anon.3, ptr %params, i32 0, i32 3
  %80 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %addr_low, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %81 = tail call i32 @llvm.bswap.i32(i32 %conv24)
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 4
  %tail = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 9
  %84 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tail, align 4
  %add.ptr142 = getelementptr i8, ptr %83, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %81) #6, !srcloc !70
  %inc = add i16 %1, 1
  %num_arq_entries = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 3
  %86 = ptrtoint ptr %num_arq_entries to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %num_arq_entries, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %87)
  %cmp146 = icmp eq i16 %inc, %87
  %spec.store.select = select i1 %cmp146, i16 0, i16 %inc
  %88 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %spec.store.select, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 0, i32 6
  %89 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv22, ptr %next_to_use, align 4
  br label %clean_arq_element_out

clean_arq_element_out:                            ; preds = %do.end110, %if.end15.clean_arq_element_out_crit_edge
  %ret_code.1 = phi i32 [ %ret_code.0, %do.end110 ], [ -57, %if.end15.clean_arq_element_out_crit_edge ]
  %ntc.0 = phi i16 [ %spec.store.select, %do.end110 ], [ %1, %if.end15.clean_arq_element_out_crit_edge ]
  %tobool155.not = icmp eq ptr %pending, null
  br i1 %tobool155.not, label %clean_arq_element_out.clean_arq_element_err_crit_edge, label %if.then156

clean_arq_element_out.clean_arq_element_err_crit_edge: ; preds = %clean_arq_element_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_arq_element_err

if.then156:                                       ; preds = %clean_arq_element_out
  %conv157 = zext i16 %ntc.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv157)
  %cmp159 = icmp ult i32 %19, %conv157
  br i1 %cmp159, label %cond.true161, label %if.then156.cond.end167_crit_edge

if.then156.cond.end167_crit_edge:                 ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end167

cond.true161:                                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %count, align 4
  %conv165 = zext i16 %91 to i32
  br label %cond.end167

cond.end167:                                      ; preds = %cond.true161, %if.then156.cond.end167_crit_edge
  %cond168 = phi i32 [ %conv165, %cond.true161 ], [ 0, %if.then156.cond.end167_crit_edge ]
  %sub = sub nsw i32 %19, %conv157
  %add = add nsw i32 %sub, %cond168
  %conv171 = trunc i32 %add to i16
  %92 = ptrtoint ptr %pending to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv171, ptr %pending, align 2
  br label %clean_arq_element_err

clean_arq_element_err:                            ; preds = %cond.end167, %clean_arq_element_out.clean_arq_element_err_crit_edge, %do.end, %do.body.clean_arq_element_err_crit_edge
  %ret_code.2 = phi i32 [ %ret_code.1, %cond.end167 ], [ %ret_code.1, %clean_arq_element_out.clean_arq_element_err_crit_edge ], [ -32, %do.end ], [ -32, %do.body.clean_arq_element_err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arq_mutex) #6
  ret i32 %ret_code.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_allocate_dma_mem_d(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_allocate_virt_mem_d(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_free_dma_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_free_virt_mem_d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 647, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iavf_asq_send_command._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iavf_asq_send_command._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 657, i32 3}
!8 = !{ptr @iavf_asq_send_command._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @iavf_asq_send_command._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 686, i32 3}
!12 = !{ptr @iavf_asq_send_command._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @iavf_asq_send_command._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 695, i32 3}
!16 = !{ptr @iavf_asq_send_command._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @iavf_asq_send_command._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 710, i32 3}
!20 = !{ptr @iavf_asq_send_command._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @iavf_asq_send_command._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 740, i32 2}
!24 = !{ptr @iavf_asq_send_command._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @iavf_asq_send_command._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 773, i32 4}
!28 = !{ptr @iavf_asq_send_command._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @iavf_asq_send_command._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 791, i32 2}
!32 = !{ptr @iavf_asq_send_command._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @iavf_asq_send_command._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 803, i32 4}
!36 = !{ptr @iavf_asq_send_command._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @iavf_asq_send_command._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 807, i32 4}
!40 = !{ptr @iavf_asq_send_command._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @iavf_asq_send_command._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 863, i32 3}
!44 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @iavf_clean_arq_element._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @iavf_clean_arq_element._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 886, i32 3}
!49 = !{ptr @iavf_clean_arq_element._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @iavf_clean_arq_element._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 899, i32 2}
!53 = !{ptr @iavf_clean_arq_element._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @iavf_clean_arq_element._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adminq.c", i32 580, i32 3}
!57 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @iavf_clean_asq._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @iavf_clean_asq._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2157547311}
!70 = !{i64 6072594}
!71 = !{i64 2157547813}
!72 = !{i64 2157548498}
!73 = !{i64 2157549293}
!74 = !{i64 2157550079}
!75 = !{i64 6073012}
!76 = !{i64 2157551033}
!77 = !{i64 2157551381}
!78 = !{i64 2157551883}
!79 = !{i64 2157552568}
!80 = !{i64 2157553363}
!81 = !{i64 2157554149}
!82 = !{i64 2157554844}
!83 = !{i64 2157555730}
!84 = !{i64 2157556123}
!85 = !{i64 2157556625}
!86 = !{i64 2157557125}
!87 = !{i64 2157557624}
!88 = !{i64 2157558123}
!89 = !{i64 2157558669}
!90 = !{i64 2157559171}
!91 = !{i64 2157559671}
!92 = !{i64 2157560170}
!93 = !{i64 2157560669}
!94 = !{i64 2157565288}
!95 = !{i64 2157568191}
!96 = !{i8 0, i8 2}
!97 = !{i64 2157561618}
!98 = !{i64 2157564420}
!99 = !{i64 2157580944}
!100 = !{i64 2157587034}
!101 = !{i64 2157594644}
!102 = !{i64 2157602489}
