#include "example.h"
#include "peripherals.h"

#define TRANSFER_SIZE 9000

static uint32_t dma_buf0[TRANSFER_SIZE];
static uint32_t dma_buf1[TRANSFER_SIZE];
static DMAC_LLI_TypeDef dma_lli[DMAC_LLI_COUNT(TRANSFER_SIZE)];

bool dma_done;
void dma_test_isr(void)
{
  dma_done = true;
}

void TestDMA(void)
{
  printf("Testing DMA\n");
  PERIPHERAL_ENABLE(CRC, 0);
  DMAC_Init();
  for (int i = 0; i < TRANSFER_SIZE; ++i) {
    dma_buf0[i] = rand();
  }
  dma_done = false;
  DMAC_AutoTransfer(DMAC_CHANNEL4, (uint32_t)dma_buf0, (uint32_t)dma_buf1, DMAC_ADDR_INCR_ON, DMAC_ADDR_INCR_ON,
                    DMAC_WIDTH_32_BIT, DMAC_WIDTH_32_BIT, DMAC_BURST_256, DMAC_BURST_256,
                    TRANSFER_SIZE, DMAC_MEM_TO_MEM_DMA_CTRL, 0, 0, ENABLE, dma_lli);
  while (!dma_done);
}
