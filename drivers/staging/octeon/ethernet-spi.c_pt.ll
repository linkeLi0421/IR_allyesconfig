; ModuleID = '/llk/IR_all_yes/drivers/staging/octeon/ethernet-spi.c_pt.bc'
source_filename = "../drivers/staging/octeon/ethernet-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@number_spi_ports = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPI\00", [28 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013SPI%d: SRX Spi4 interface down\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cvm_oct_spxx_int_pr\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/octeon/ethernet-spi.c\00", [58 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr = internal global ptr @cvm_oct_spxx_int_pr._entry, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SPI%d: SRX Spi4 Calendar table parity error\0A\00", [49 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.6 = internal global ptr @cvm_oct_spxx_int_pr._entry.4, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013SPI%d: SRX Consecutive Spi4 DIP4 errors have exceeded SPX_ERR_CTL[ERRCNT]\0A\00", [51 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.9 = internal global ptr @cvm_oct_spxx_int_pr._entry.7, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013SPI%d: SRX Spi4 DIP4 error\0A\00", [34 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.12 = internal global ptr @cvm_oct_spxx_int_pr._entry.10, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013SPI%d: SRX Selected port has hit TPA overflow\0A\00", [47 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.15 = internal global ptr @cvm_oct_spxx_int_pr._entry.13, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013SPI%d: SRX Spi4 reserved control word detected\0A\00", [46 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.18 = internal global ptr @cvm_oct_spxx_int_pr._entry.16, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013SPI%d: SRX Spi4 receive FIFO drowning/overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.21 = internal global ptr @cvm_oct_spxx_int_pr._entry.19, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013SPI%d: SRX Spi4 packet closed on non-16B alignment without EOP\0A\00", [62 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.24 = internal global ptr @cvm_oct_spxx_int_pr._entry.22, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013SPI%d: SRX Spi4 async FIFO overflow\0A\00", [57 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.27 = internal global ptr @cvm_oct_spxx_int_pr._entry.25, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013SPI%d: SRX Abnormal packet termination (ERR bit)\0A\00", [44 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.30 = internal global ptr @cvm_oct_spxx_int_pr._entry.28, section ".printk_index", align 4
@cvm_oct_spxx_int_pr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013SPI%d: SRX Port out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@cvm_oct_spxx_int_pr._entry_ptr.33 = internal global ptr @cvm_oct_spxx_int_pr._entry.31, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013SPI%d: STX Interface encountered a fatal error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cvm_oct_stxx_int_pr\00", [44 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr = internal global ptr @cvm_oct_stxx_int_pr._entry, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013SPI%d: STX FRMCNT has exceeded STX_DIP_CNT[MAXFRM]\0A\00", [42 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.38 = internal global ptr @cvm_oct_stxx_int_pr._entry.36, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013SPI%d: STX Unexpected framing sequence\0A\00", [54 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.41 = internal global ptr @cvm_oct_stxx_int_pr._entry.39, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013SPI%d: STX ERRCNT has exceeded STX_DIP_CNT[MAXDIP]\0A\00", [42 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.44 = internal global ptr @cvm_oct_stxx_int_pr._entry.42, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.3, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013SPI%d: STX DIP2 error on the Spi4 Status channel\0A\00", [44 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.47 = internal global ptr @cvm_oct_stxx_int_pr._entry.45, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013SPI%d: STX Spi4 FIFO overflow error\0A\00", [57 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.50 = internal global ptr @cvm_oct_stxx_int_pr._entry.48, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.35, ptr @.str.3, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SPI%d: STX Transmit packet burst too big\0A\00", [52 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.53 = internal global ptr @cvm_oct_stxx_int_pr._entry.51, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.35, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013SPI%d: STX Calendar Table Parity Error Bank%d\0A\00", [47 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.56 = internal global ptr @cvm_oct_stxx_int_pr._entry.54, section ".printk_index", align 4
@cvm_oct_stxx_int_pr._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.35, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cvm_oct_stxx_int_pr._entry_ptr.58 = internal global ptr @cvm_oct_stxx_int_pr._entry.57, section ".printk_index", align 4
@cvm_oct_spi_poll.spi4000_port = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"number_spi_ports\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 17, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 199, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 23, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 25, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 27, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 30, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 32, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 35, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 38, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 41, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 44, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 46, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 49, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 55, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 58, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 61, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 63, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 66, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 69, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 71, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 73, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 76, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"spi4000_port\00", align 1
@___asan_gen_.193 = private constant [41 x i8] c"../drivers/staging/octeon/ethernet-spi.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 154, i32 13 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @cvm_oct_spxx_int_pr._entry, ptr @cvm_oct_spxx_int_pr._entry.10, ptr @cvm_oct_spxx_int_pr._entry.13, ptr @cvm_oct_spxx_int_pr._entry.16, ptr @cvm_oct_spxx_int_pr._entry.19, ptr @cvm_oct_spxx_int_pr._entry.22, ptr @cvm_oct_spxx_int_pr._entry.25, ptr @cvm_oct_spxx_int_pr._entry.28, ptr @cvm_oct_spxx_int_pr._entry.31, ptr @cvm_oct_spxx_int_pr._entry.4, ptr @cvm_oct_spxx_int_pr._entry.7, ptr @cvm_oct_spxx_int_pr._entry_ptr, ptr @cvm_oct_spxx_int_pr._entry_ptr.12, ptr @cvm_oct_spxx_int_pr._entry_ptr.15, ptr @cvm_oct_spxx_int_pr._entry_ptr.18, ptr @cvm_oct_spxx_int_pr._entry_ptr.21, ptr @cvm_oct_spxx_int_pr._entry_ptr.24, ptr @cvm_oct_spxx_int_pr._entry_ptr.27, ptr @cvm_oct_spxx_int_pr._entry_ptr.30, ptr @cvm_oct_spxx_int_pr._entry_ptr.33, ptr @cvm_oct_spxx_int_pr._entry_ptr.6, ptr @cvm_oct_spxx_int_pr._entry_ptr.9, ptr @cvm_oct_stxx_int_pr._entry, ptr @cvm_oct_stxx_int_pr._entry.36, ptr @cvm_oct_stxx_int_pr._entry.39, ptr @cvm_oct_stxx_int_pr._entry.42, ptr @cvm_oct_stxx_int_pr._entry.45, ptr @cvm_oct_stxx_int_pr._entry.48, ptr @cvm_oct_stxx_int_pr._entry.51, ptr @cvm_oct_stxx_int_pr._entry.54, ptr @cvm_oct_stxx_int_pr._entry.57, ptr @cvm_oct_stxx_int_pr._entry_ptr, ptr @cvm_oct_stxx_int_pr._entry_ptr.38, ptr @cvm_oct_stxx_int_pr._entry_ptr.41, ptr @cvm_oct_stxx_int_pr._entry_ptr.44, ptr @cvm_oct_stxx_int_pr._entry_ptr.47, ptr @cvm_oct_stxx_int_pr._entry_ptr.50, ptr @cvm_oct_stxx_int_pr._entry_ptr.53, ptr @cvm_oct_stxx_int_pr._entry_ptr.56, ptr @cvm_oct_stxx_int_pr._entry_ptr.58, ptr @number_spi_ports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @cvm_oct_spi_poll.spi4000_port], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @number_spi_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spxx_int_pr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_stxx_int_pr._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_spi_poll.spi4000_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_spi_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load i32, ptr @number_spi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @request_threaded_irq(i32 noundef 0, ptr noundef nonnull @cvm_oct_spi_rml_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @number_spi_ports) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %1 = load i32, ptr @number_spi_ports, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @number_spi_ports, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end3.if.end10_crit_edge [
    i32 0, label %if.end3.INTERFACE.exit_crit_edge
    i32 16, label %if.end3.INTERFACE.exit_crit_edge18
  ]

if.end3.INTERFACE.exit_crit_edge18:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %INTERFACE.exit

if.end3.INTERFACE.exit_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %INTERFACE.exit

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

INTERFACE.exit:                                   ; preds = %if.end3.INTERFACE.exit_crit_edge, %if.end3.INTERFACE.exit_crit_edge18
  %poll = getelementptr i8, ptr %dev, i32 3240
  %5 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cvm_oct_spi_poll, ptr %poll, align 8
  br label %if.end10

if.end10:                                         ; preds = %INTERFACE.exit, %if.end3.if.end10_crit_edge
  %call11 = tail call i32 @cvm_oct_common_init(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cvm_oct_spi_rml_interrupt(i32 noundef %cpl, ptr nocapture noundef readnone %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_spi_poll(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  %cvm_oct_spi_poll.spi4000_port.promoted = load i32, ptr @cvm_oct_spi_poll.spi4000_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cvm_oct_spi_poll.spi4000_port.promoted)
  %cmp8 = icmp eq i32 %1, %cvm_oct_spi_poll.spi4000_port.promoted
  br i1 %cmp8, label %if.then9, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp11 = icmp slt i32 %dec, 0
  %spec.store.select = select i1 %cmp11, i32 10, i32 %dec
  store i32 %spec.store.select, ptr @cvm_oct_spi_poll.spi4000_port, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %entry.for.inc_crit_edge
  %spec.store.select24 = phi i32 [ %cvm_oct_spi_poll.spi4000_port.promoted, %entry.for.inc_crit_edge ], [ %spec.store.select, %if.then9 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %spec.store.select24)
  %cmp8.1 = icmp eq i32 %1, %spec.store.select24
  br i1 %cmp8.1, label %if.then9.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %dec.1 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp11.1 = icmp slt i32 %dec.1, 0
  %spec.store.select.1 = select i1 %cmp11.1, i32 10, i32 %dec.1
  store i32 %spec.store.select.1, ptr @cvm_oct_spi_poll.spi4000_port, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cvm_oct_common_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_spi_uninit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cvm_oct_common_uninit(ptr noundef %dev) #4
  %0 = load i32, ptr @number_spi_ports, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @number_spi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @free_irq(i32 noundef 0, ptr noundef nonnull @number_spi_ports) #4
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cvm_oct_common_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 199, i32 18}
!2 = !{ptr @number_spi_ports, !3, !"number_spi_ports", i1 false, i1 false}
!3 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 17, i32 12}
!4 = distinct !{null, !5, !"need_retrain", i1 false, i1 false}
!5 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 18, i32 12}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 23, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cvm_oct_spxx_int_pr._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 25, i32 3}
!14 = !{ptr @cvm_oct_spxx_int_pr._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 27, i32 3}
!18 = !{ptr @cvm_oct_spxx_int_pr._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 30, i32 3}
!22 = !{ptr @cvm_oct_spxx_int_pr._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 32, i32 3}
!26 = !{ptr @cvm_oct_spxx_int_pr._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 35, i32 3}
!30 = !{ptr @cvm_oct_spxx_int_pr._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 38, i32 3}
!34 = !{ptr @cvm_oct_spxx_int_pr._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 41, i32 3}
!38 = !{ptr @cvm_oct_spxx_int_pr._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 44, i32 3}
!42 = !{ptr @cvm_oct_spxx_int_pr._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 46, i32 3}
!46 = !{ptr @cvm_oct_spxx_int_pr._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 49, i32 3}
!50 = !{ptr @cvm_oct_spxx_int_pr._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cvm_oct_spxx_int_pr._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 55, i32 3}
!54 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cvm_oct_stxx_int_pr._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 58, i32 3}
!59 = !{ptr @cvm_oct_stxx_int_pr._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 61, i32 3}
!63 = !{ptr @cvm_oct_stxx_int_pr._entry.39, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.41, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 63, i32 3}
!67 = !{ptr @cvm_oct_stxx_int_pr._entry.42, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.44, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.46, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 66, i32 3}
!71 = !{ptr @cvm_oct_stxx_int_pr._entry.45, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.47, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.49, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 69, i32 3}
!75 = !{ptr @cvm_oct_stxx_int_pr._entry.48, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.50, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 71, i32 3}
!79 = !{ptr @cvm_oct_stxx_int_pr._entry.51, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.53, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 73, i32 3}
!83 = !{ptr @cvm_oct_stxx_int_pr._entry.54, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.56, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @cvm_oct_stxx_int_pr._entry.57, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 76, i32 3}
!87 = !{ptr @cvm_oct_stxx_int_pr._entry_ptr.58, !86, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 8}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 56}
!92 = !{ptr @cvm_oct_spi_poll.spi4000_port, !93, !"spi4000_port", i1 false, i1 false}
!93 = !{!"../drivers/staging/octeon/ethernet-spi.c", i32 154, i32 13}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
